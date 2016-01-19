SELECT
(
  SELECT
    COUNT(*)
  FROM
    RB_V_HST_DEPOSITS S
  WHERE
    (
      USERUPD = ${user.code}
      AND (EXISTS(SELECT 1 FROM RB_V_HST_DEPOSITS WHERE USERUPD = ${user.code}))
    )
    OR (
      DATEUPD = (SELECT MAX(DATEUPD) FROM RB_V_HST_DEPOSITS)
      AND (NOT EXISTS(SELECT 1 FROM RB_V_HST_DEPOSITS WHERE USERUPD = ${user.code}))
    )
) AS STG,
(
  SELECT
    COUNT(*)
  FROM
    FORM_DATI A
    INNER JOIN
    (
      SELECT DISTINCT
        RB_F_TGK_CREATE_SCENARIO_CODE(MONTH_END_DATE) AS COD_SCENARIO,
        RB_F_TGK_CREATE_PERIOD_CODE(MONTH_END_DATE) AS COD_PERIODO,
        REPORTING_ENTITY
      FROM
        RB_V_HST_DEPOSITS S
      WHERE
        (
          USERUPD = ${user.code}
          AND (EXISTS(SELECT 1 FROM RB_V_HST_DEPOSITS WHERE USERUPD = ${user.code}))
        )
        OR (
          DATEUPD = (SELECT MAX(DATEUPD) FROM RB_V_HST_DEPOSITS)
          AND (NOT EXISTS(SELECT 1 FROM RB_V_HST_DEPOSITS WHERE USERUPD = ${user.code}))
        )
    ) S
  ON
	A.COD_SCENARIO = S.COD_SCENARIO
	AND A.COD_PERIODO = S.COD_PERIODO
	AND A.TESTO_19 = S.REPORTING_ENTITY
  WHERE
    A.COD_PROSPETTO = 'DEPOSITS'
) AS APP
FROM
  DUAL