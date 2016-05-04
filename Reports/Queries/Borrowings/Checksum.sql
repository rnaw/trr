SELECT
  CASE
    WHEN STG.MONTH_END_DATE IS NULL
      THEN -1
    ELSE 1
  END AS STG,
  COALESCE(STG.MONTH_END_DATE, APP.MONTH_END_DATE) AS MONTH_END_DATE,
  COALESCE(STG.INSTRUMENT, APP.INSTRUMENT) AS CUSIP,
  COALESCE(STG.CALL_CODE, APP.CALL_CODE) AS CALL_CODE,
  COALESCE(STG.GL_KEY_CODE, APP.GL_KEY_CODE) AS GL_KEY_CODE,
  COALESCE(STG.BUSINESS_UNIT, APP.BUSINESS_UNIT) AS BUSINESS_UNIT,
  CASE
    WHEN APP.MONTH_END_DATE IS NULL
      THEN -1
    ELSE 1
  END AS APP
FROM
  (
    SELECT DISTINCT
        S.MONTH_END_DATE,
        S.INSTRUMENT,
        S.CALL_CODE,
        S.GL_KEY_CODE,
        S.BUSINESS_UNIT
    FROM
      RB_V_HST_BORROWINGS S
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
      AND REPORTING_ENTITY = ${@REP_ENT} || '_CONSOL'
      AND DATEUPD = (
        SELECT
          MAX(DATEUPD)
        FROM
          RB_V_HST_BORROWINGS
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
          AND REPORTING_ENTITY = ${@REP_ENT} || '_CONSOL'
      )
  ) STG
  FULL OUTER JOIN
  (
    SELECT DISTINCT
        A.DATA_1 AS MONTH_END_DATE,
        A.TESTO_2 AS INSTRUMENT,
        A.TESTO_4 AS CALL_CODE,
        A.TESTO_16 AS GL_KEY_CODE,
        A.TESTO_20 AS BUSINESS_UNIT
    FROM
      FORM_DATI A
      INNER JOIN
      (
        SELECT DISTINCT
          RB_F_TGK_CREATE_SCENARIO_CODE(MONTH_END_DATE) AS COD_SCENARIO,
          RB_F_TGK_CREATE_PERIOD_CODE(MONTH_END_DATE) AS COD_PERIODO,
          REPORTING_ENTITY
        FROM
          RB_V_HST_BORROWINGS S
        WHERE
          DATEUPD = (
              SELECT
                MAX(DATEUPD)
              FROM
                RB_V_HST_BORROWINGS
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
                AND REPORTING_ENTITY = ${@REP_ENT} || '_CONSOL'
        )
    ON
    A.COD_SCENARIO = S.COD_SCENARIO
    AND A.COD_PERIODO = S.COD_PERIODO
    AND A.TESTO_1 = S.REPORTING_ENTITY
    WHERE
      A.COD_PROSPETTO = 'BORROWINGS'
  ) APP
ON
  STG.MONTH_END_DATE = APP.MONTH_END_DATE
    AND NVL(STG.INSTRUMENT, ' ') = NVL(APP.INSTRUMENT, ' ')
    AND	NVL(STG.CALL_CODE, ' ') = NVL(APP.CALL_CODE, ' ')
    AND NVL(STG.GL_KEY_CODE, ' ') = NVL(APP.GL_KEY_CODE, ' ')
    AND NVL(STG.BUSINESS_UNIT, ' ') = NVL(APP.BUSINESS_UNIT, ' ')
WHERE
  APP.MONTH_END_DATE IS NULL
  OR STG.MONTH_END_DATE IS NULL