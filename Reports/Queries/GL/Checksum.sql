SELECT
  CASE
    WHEN STG.COD_PERIODO IS NULL THEN -1
    WHEN COALESCE(APP.ORIG_AMOUNT, 0) <> COALESCE(STG.ORIG_AMOUNT, 0) THEN 0
    WHEN COALESCE(APP.BASE_AMOUNT, 0) <> COALESCE(STG.BASE_AMOUNT, 0) THEN 0
    WHEN COALESCE(APP.ROW_COUNT, 0) <> COALESCE(STG.ROW_COUNT, 0) THEN 0
    ELSE 1
  END AS STG,
  COALESCE(STG.ROW_COUNT, 0) AS STG_ROW_COUNT,
  STG.ORIG_AMOUNT AS STG_ORIG_AMOUNT,
  STG.BASE_AMOUNT AS STG_BASE_AMOUNT,
  COALESCE(STG.COD_SCENARIO, APP.COD_SCENARIO) AS COD_SCENARIO,
  COALESCE(STG.COD_PERIODO, APP.COD_PERIODO) AS COD_PERIODO,
  COALESCE(STG.RB_BALANCE_TYPE, APP.RB_BALANCE_TYPE) AS RB_BALANCE_TYPE,
  COALESCE(STG.GL_KEY_CODE, APP.GL_KEY_CODE) AS GL_KEY_CODE,
  COALESCE(STG.BUSINESS_UNIT, APP.BUSINESS_UNIT) AS BUSINESS_UNIT,
  COALESCE(STG.ACCOUNT, APP.ACCOUNT) AS ACCOUNT,
  COALESCE(STG.PRODUCT, APP.PRODUCT) AS PRODUCT,
  COALESCE(STG.CURRENCY_CODE, APP.CURRENCY_CODE) AS CURRENCY_CODE,
  APP.ORIG_AMOUNT AS APP_ORIG_AMOUNT,
  APP.BASE_AMOUNT AS APP_BASE_AMOUNT,
  COALESCE(APP.ROW_COUNT, 0) AS APP_ROW_COUNT,
  CASE
    WHEN APP.COD_PERIODO IS NULL THEN -1
    WHEN COALESCE(APP.ORIG_AMOUNT, 0) <> COALESCE(STG.ORIG_AMOUNT, 0) THEN 0
    WHEN COALESCE(APP.BASE_AMOUNT, 0) <> COALESCE(STG.BASE_AMOUNT, 0) THEN 0
    WHEN COALESCE(APP.ROW_COUNT, 0) <> COALESCE(STG.ROW_COUNT, 0) THEN 0
    ELSE 1
  END AS APP
FROM
  (
    SELECT
      RB_F_TGK_CREATE_SCENARIO_CODE(TO_DATE(FISCAL_YEAR || '12' || '31', 'YYYYMMDD')) AS COD_SCENARIO,
      COD_PERIODO,
      RB_BALANCE_TYPE,
      RB_F_TGK_SANITIZE_CODE(GL_KEY_CODE) AS GL_KEY_CODE,
      RB_F_TGK_SANITIZE_CODE(BUSINESS_UNIT) AS BUSINESS_UNIT,
      RB_F_TGK_SANITIZE_CODE(ACCOUNT) AS ACCOUNT,
      RB_F_TGK_SANITIZE_CODE(PRODUCT) AS PRODUCT,
      RB_F_TGK_SANITIZE_CODE(CURRENCY_CODE) AS CURRENCY_CODE,
      SUM(BASE_AMOUNT) AS BASE_AMOUNT,
      SUM(ORIG_AMOUNT) AS ORIG_AMOUNT,
      SUM(ROW_COUNT) AS ROW_COUNT
    FROM
      (
        SELECT
          FISCAL_YEAR,
          RB_BALANCE_TYPE,
          GL_KEY_CODE,
          BUSINESS_UNIT,
          ACCOUNT,
          PRODUCT,
          CURRENCY_CODE,
          JAN_ORIG,
          FEB_ORIG,
          MAR_ORIG,
          APR_ORIG,
          MAY_ORIG,
          JUNE_ORIG,
          JULY_ORIG,
          AUG_ORIG,
          SEP_ORIG,
          OCT_ORIG,
          NOV_ORIG,
          DEC_ORIG,
          JAN_BASE,
          FEB_BASE,
          MAR_BASE,
          APR_BASE,
          MAY_BASE,
          JUNE_BASE,
          JULY_BASE,
          AUG_BASE,
          SEP_BASE,
          OCT_BASE,
          NOV_BASE,
          DEC_BASE,
          1 AS CANARY
        FROM
          RB_V_HST_GL
        WHERE
          BUSINESS_UNIT IN (
            SELECT
              COD_AZIENDA
            FROM
              UTENTE_AZIENDA
            WHERE
              FLAG_INSERIMENTO_DATI = 1
              AND COD_UTENTE = ${user.code}
            UNION
            SELECT
              A.COD_AZIENDA
            FROM
              UTENTE U,
              AZIENDA_GERARCHIA_ABBI A
            WHERE
              U.TIPO_LIM_AZIENDA = 'X'
              AND U.COD_UTENTE = ${user.code}
          )
          AND BUSINESS_UNIT IN (
            SELECT
              *
            FROM
              TABLE(RB_F_TGK_GET_LEAVES_ENTITY('01', CASE WHEN ${@REP_ENT} = 'RNAW' THEN 'RUAH_CONSOL' ELSE ${@REP_ENT} || '_CONSOL' END))
            UNION ALL
            SELECT
              *
            FROM
              TABLE(RB_F_TGK_GET_LEAVES_ENTITY('01', CASE WHEN ${@REP_ENT} = 'RNAW' THEN 'NEW_YORK_BRANCH' ELSE NULL END))
          )
          AND DATEUPD = (
            SELECT
              MAX(DATEUPD)
            FROM
              RB_V_HST_GL
            WHERE
              BUSINESS_UNIT IN (
                SELECT
                  COD_AZIENDA
                FROM
                  UTENTE_AZIENDA
                WHERE
                  FLAG_INSERIMENTO_DATI = 1
                  AND COD_UTENTE = ${user.code}        
                UNION
                SELECT
                  A.COD_AZIENDA
                FROM
                  UTENTE U,
                  AZIENDA_GERARCHIA_ABBI A
                WHERE
                  U.TIPO_LIM_AZIENDA = 'X'
                  AND U.COD_UTENTE = ${user.code}
              )
              AND BUSINESS_UNIT IN (
                SELECT
                  *
                FROM
                  TABLE(RB_F_TGK_GET_LEAVES_ENTITY('01', CASE WHEN ${@REP_ENT} = 'RNAW' THEN 'RUAH_CONSOL' ELSE ${@REP_ENT} || '_CONSOL' END))
                UNION ALL
                SELECT
                  *
                FROM
                  TABLE(RB_F_TGK_GET_LEAVES_ENTITY('01', CASE WHEN ${@REP_ENT} = 'RNAW' THEN 'NEW_YORK_BRANCH' ELSE NULL END))
              )
          )
      )
      UNPIVOT (
              (BASE_AMOUNT, ORIG_AMOUNT, ROW_COUNT) FOR COD_PERIODO IN (
                (JAN_BASE, JAN_ORIG, CANARY) AS '01',
                (FEB_BASE, FEB_ORIG, CANARY) AS '02',
                (MAR_BASE, MAR_ORIG, CANARY) AS '03',
                (APR_BASE, APR_ORIG, CANARY) AS '04',
                (MAY_BASE, MAY_ORIG, CANARY) AS '05',
                (JUNE_BASE, JUNE_ORIG, CANARY) AS '06',
                (JULY_BASE, JULY_ORIG, CANARY) AS '07',
                (AUG_BASE, AUG_ORIG, CANARY) AS '08',
                (SEP_BASE, SEP_ORIG, CANARY) AS '09',
                (OCT_BASE, OCT_ORIG, CANARY) AS '10',
                (NOV_BASE, NOV_ORIG, CANARY) AS '11',
                (DEC_BASE, DEC_ORIG, CANARY) AS '12'
              )
      )
  WHERE
    COD_PERIODO IN (${$Period.code}) 
  GROUP BY
    RB_F_TGK_CREATE_SCENARIO_CODE(TO_DATE(FISCAL_YEAR || '12' || '31', 'YYYYMMDD')),
    COD_PERIODO,
    RB_BALANCE_TYPE,
    RB_F_TGK_SANITIZE_CODE(GL_KEY_CODE),
    RB_F_TGK_SANITIZE_CODE(BUSINESS_UNIT),
    RB_F_TGK_SANITIZE_CODE(ACCOUNT),
    RB_F_TGK_SANITIZE_CODE(PRODUCT),
    RB_F_TGK_SANITIZE_CODE(CURRENCY_CODE)
  ) STG
  FULL OUTER JOIN
  (
    SELECT
      D.COD_SCENARIO,
      COD_PERIODO,
      CASE
        WHEN COD_CATEGORIA = 'ORI' THEN 'EOM'
        WHEN COD_CATEGORIA = 'MTD_AVG' THEN 'MTDAVG'
        WHEN COD_CATEGORIA = 'QTD_AVG' THEN 'QTDAVG'
        WHEN COD_CATEGORIA = 'YTD_AVG' THEN 'YTDAVG'
      END AS RB_BALANCE_TYPE,
      COD_CONTO AS GL_KEY_CODE,
      D.COD_AZIENDA AS BUSINESS_UNIT,
      COD_DEST1 AS ACCOUNT,
      COD_DEST3 AS PRODUCT,
      COD_VALUTA_ORIGINARIA AS CURRENCY_CODE,
      SUM(IMPORTO_1) AS BASE_AMOUNT,
      SUM(IMPORTO_2) AS ORIG_AMOUNT,
      SUM(1) AS ROW_COUNT
    FROM
      FORM_DATI D
      INNER JOIN
      (
        SELECT DISTINCT
          RB_F_TGK_SANITIZE_CODE(BUSINESS_UNIT) AS COD_AZIENDA,
          RB_F_TGK_CREATE_SCENARIO_CODE(TO_DATE(FISCAL_YEAR || '12' || '31', 'YYYYMMDD')) AS COD_SCENARIO
        FROM
            RB_V_HST_GL
        WHERE
          DATEUPD = (
              SELECT
                MAX(DATEUPD)
              FROM
                RB_V_HST_GL
              WHERE
                BUSINESS_UNIT IN (
                  SELECT
                    COD_AZIENDA
                  FROM
                    UTENTE_AZIENDA
                  WHERE
                    FLAG_INSERIMENTO_DATI = 1
                    AND COD_UTENTE = ${user.code}        
                  UNION
                  SELECT
                    A.COD_AZIENDA
                  FROM
                    UTENTE U,
                    AZIENDA_GERARCHIA_ABBI A
                  WHERE
                    U.TIPO_LIM_AZIENDA = 'X'
                    AND U.COD_UTENTE = ${user.code}
                )
                AND BUSINESS_UNIT IN (
                  SELECT
                    *
                  FROM
                    TABLE(RB_F_TGK_GET_LEAVES_ENTITY('01', CASE WHEN ${@REP_ENT} = 'RNAW' THEN 'RUAH_CONSOL' ELSE ${@REP_ENT} || '_CONSOL' END))
                  UNION ALL
                  SELECT
                    *
                  FROM
                    TABLE(RB_F_TGK_GET_LEAVES_ENTITY('01', CASE WHEN ${@REP_ENT} = 'RNAW' THEN 'NEW_YORK_BRANCH' ELSE NULL END))
                )
        )
      ) S
      ON
        D.COD_SCENARIO = S.COD_SCENARIO
        AND D.COD_AZIENDA = S.COD_AZIENDA
    WHERE
      D.COD_PROSPETTO = 'GL'
      AND D.COD_PERIODO IN (${$Period.code}) 
      AND D.COD_AZIENDA IN (
        SELECT
          COD_AZIENDA
        FROM
          UTENTE_AZIENDA
        WHERE
          FLAG_INSERIMENTO_DATI = 1
          AND COD_UTENTE = ${user.code}        
        UNION
        SELECT
          A.COD_AZIENDA
        FROM
          UTENTE U,
          AZIENDA_GERARCHIA_ABBI A
        WHERE
          U.TIPO_LIM_AZIENDA = 'X'
          AND U.COD_UTENTE = ${user.code}
      )
      AND D.COD_AZIENDA IN (
        SELECT
          *
        FROM
          TABLE(RB_F_TGK_GET_LEAVES_ENTITY('01', CASE WHEN ${@REP_ENT} = 'RNAW' THEN 'RUAH_CONSOL' ELSE ${@REP_ENT} || '_CONSOL' END))
        UNION ALL
        SELECT
          *
        FROM
          TABLE(RB_F_TGK_GET_LEAVES_ENTITY('01', CASE WHEN ${@REP_ENT} = 'RNAW' THEN 'NEW_YORK_BRANCH' ELSE NULL END))
      )
    GROUP BY
      D.COD_SCENARIO,
      COD_PERIODO,
      CASE
        WHEN COD_CATEGORIA = 'ORI' THEN 'EOM'
        WHEN COD_CATEGORIA = 'MTD_AVG' THEN 'MTDAVG'
        WHEN COD_CATEGORIA = 'QTD_AVG' THEN 'QTDAVG'
        WHEN COD_CATEGORIA = 'YTD_AVG' THEN 'YTDAVG'
      END,
      COD_CONTO,
      D.COD_AZIENDA,
      COD_DEST1,
      COD_DEST3,
      COD_VALUTA_ORIGINARIA
  ) APP
ON
  STG.COD_SCENARIO = APP.COD_SCENARIO
  AND STG.COD_PERIODO = APP.COD_PERIODO
  AND STG.RB_BALANCE_TYPE = APP.RB_BALANCE_TYPE
  AND STG.GL_KEY_CODE = APP.GL_KEY_CODE
  AND STG.BUSINESS_UNIT = APP.BUSINESS_UNIT
  AND STG.ACCOUNT = APP.ACCOUNT
  AND STG.PRODUCT = APP.PRODUCT
  AND STG.CURRENCY_CODE = APP.CURRENCY_CODE
WHERE
  STG.COD_PERIODO IS NULL 
  OR APP.COD_PERIODO IS NULL
  OR COALESCE(APP.ORIG_AMOUNT, 0) <> COALESCE(STG.ORIG_AMOUNT, 0)
  OR COALESCE(APP.BASE_AMOUNT, 0) <> COALESCE(STG.BASE_AMOUNT, 0)
  OR COALESCE(APP.ROW_COUNT, 0) <> COALESCE(STG.ROW_COUNT, 0)
ORDER BY
  COALESCE(STG.COD_SCENARIO, APP.COD_SCENARIO) ASC,
  COALESCE(STG.COD_PERIODO, APP.COD_PERIODO) ASC,
  COALESCE(STG.RB_BALANCE_TYPE, APP.RB_BALANCE_TYPE) ASC