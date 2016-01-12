SELECT
(
  SELECT
    SUM(IMPORTO)
  FROM
    RB_V_DATI_SALDI_LORDI S
  WHERE
	COD_PERIODO = '01'
	AND (
		(
		  USERUPD = ${user.code}
		  AND (EXISTS(SELECT 1 FROM RB_V_HST_GL WHERE USERUPD = ${user.code}))
		)
		OR (
		  DATEUPD = (SELECT MAX(DATEUPD) FROM RB_V_HST_LOAN)
		  AND (NOT EXISTS(SELECT 1 FROM RB_V_HST_GL WHERE USERUPD = ${user.code}))
		)
	)
) AS STG,
(
  SELECT
    SUM(IMPORTO) AS IMPORTO
  FROM
    DATI_SALDI_LORDI A
    INNER JOIN
    (
      SELECT DISTINCT
        COD_SCENARIO
	  FROM
        RB_V_DATI_SALDI_LORDI
      WHERE
		COD_PERIODO = '01'
		AND (
			(
			  USERUPD = ${user.code}
			  AND (EXISTS(SELECT 1 FROM RB_V_HST_GL WHERE USERUPD = ${user.code}))
			)
			OR (
			  DATEUPD = (SELECT MAX(DATEUPD) FROM RB_V_HST_LOAN)
			  AND (NOT EXISTS(SELECT 1 FROM RB_V_HST_GL WHERE USERUPD = ${user.code}))
			)
		)
    ) S
  ON
	A.COD_SCENARIO = S.COD_SCENARIO
	AND A.COD_PERIODO = S.COD_PERIODO
) AS APP
FROM
  DUAL