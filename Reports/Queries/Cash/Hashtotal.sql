SELECT
(
  SELECT
    SUM(BASE_EQUIVALENT)
  FROM
    RB_V_HST_CASH S
  WHERE
    (
      USERUPD = ${user.code}
      AND (EXISTS(SELECT 1 FROM RB_V_HST_CASH WHERE USERUPD = ${user.code}))
    )
    OR (
      DATEUPD = (SELECT MAX(DATEUPD) FROM RB_V_HST_CASH)
      AND (NOT EXISTS(SELECT 1 FROM RB_V_HST_CASH WHERE USERUPD = ${user.code}))
    )
) AS STG,
(
  SELECT
    SUM(IMPORTO_4) AS BASE_EQUIVALENT
  FROM
    FORM_DATI A
    INNER JOIN
    (
      SELECT DISTINCT
        RB_F_TGK_CREATE_SCENARIO_CODE(MONTH_END_DATE) AS COD_SCENARIO,
        RB_F_TGK_CREATE_PERIOD_CODE(MONTH_END_DATE) AS COD_PERIODO,
        REPORTING_ENTITY
      FROM
        RB_V_HST_CASH S
      WHERE
        (
          USERUPD = ${user.code}
          AND (EXISTS(SELECT 1 FROM RB_V_HST_CASH WHERE USERUPD = ${user.code}))
        )
        OR (
          DATEUPD = (SELECT MAX(DATEUPD) FROM RB_V_HST_CASH)
          AND (NOT EXISTS(SELECT 1 FROM RB_V_HST_CASH WHERE USERUPD = ${user.code}))
        )
    ) S
  ON
	A.COD_SCENARIO = S.COD_SCENARIO
	AND A.COD_PERIODO = S.COD_PERIODO
	AND A.TESTO_14 = S.REPORTING_ENTITY
  WHERE
    A.COD_PROSPETTO = 'CASH'
) AS APP
FROM
  DUAL