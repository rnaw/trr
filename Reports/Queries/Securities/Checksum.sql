SELECT
  CASE
    WHEN STG.MONTH_END_DATE IS NULL
      THEN -1
    ELSE 1
  END AS STG,
  COALESCE(STG.MONTH_END_DATE, APP.MONTH_END_DATE) AS MONTH_END_DATE,
  COALESCE(STG.CUSIP, APP.CUSIP) AS CUSIP,
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
      S.CUSIP,
      S.CALL_CODE,
      S.GL_KEY_CODE,
      S.BUSINESS_UNIT
  FROM
    RB_V_HST_SECURITY S
  WHERE
    (
      USERUPD = ${user.code}
      AND (EXISTS(SELECT 1 FROM RB_V_HST_SECURITY WHERE USERUPD = ${user.code}))
    )
    OR (
      DATEUPD = (SELECT MAX(DATEUPD) FROM RB_V_HST_SECURITY)
      AND (NOT EXISTS(SELECT 1 FROM RB_V_HST_SECURITY WHERE USERUPD = ${user.code}))
    )
) STG
FULL OUTER JOIN
(
  SELECT DISTINCT
      A.DATA_1 AS MONTH_END_DATE,
      A.TESTO_29 AS CUSIP,
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
        RB_V_HST_SECURITY S
      WHERE
        (
          USERUPD = ${user.code}
          AND (EXISTS(SELECT 1 FROM RB_V_HST_SECURITY WHERE USERUPD = ${user.code}))
        )
        OR (
          DATEUPD = (SELECT MAX(DATEUPD) FROM RB_V_HST_SECURITY)
          AND (NOT EXISTS(SELECT 1 FROM RB_V_HST_SECURITY WHERE USERUPD = ${user.code}))
        )
    ) S
  ON
	A.COD_SCENARIO = S.COD_SCENARIO
	AND A.COD_PERIODO = S.COD_PERIODO
	AND A.TESTO_1 = S.REPORTING_ENTITY
  WHERE
    A.COD_PROSPETTO = 'SECURITIES'
) APP
ON
	STG.MONTH_END_DATE = APP.MONTH_END_DATE
    AND NVL(STG.CUSIP, ' ') = NVL(APP.CUSIP, ' ')
    AND	NVL(STG.CALL_CODE, ' ') = NVL(APP.CALL_CODE, ' ')
    AND NVL(STG.GL_KEY_CODE, ' ') = NVL(APP.GL_KEY_CODE, ' ')
    AND NVL(STG.BUSINESS_UNIT, ' ') = NVL(APP.BUSINESS_UNIT, ' ')
WHERE
  APP.MONTH_END_DATE IS NULL
  OR STG.MONTH_END_DATE IS NULL