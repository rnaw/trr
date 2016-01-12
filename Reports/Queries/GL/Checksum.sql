SELECT
  CASE
    WHEN STG.GL_KEY_CODE IS NULL
      THEN -1
    ELSE 1
  END AS STG,
  COALESCE(STG.GL_KEY_CODE, APP.GL_KEY_CODE) AS GL_KEY_CODE,
  COALESCE(STG.BUSINESS_UNIT, APP.BUSINESS_UNIT) AS BUSINESS_UNIT,
  COALESCE(STG.ACCOUNT, APP.ACCOUNT) AS ACCOUNT,
  COALESCE(STG.PRODUCT, APP.PRODUCT) AS PRODUCT,
  COALESCE(STG.CURRENCY_CODE, APP.CURRENCY_CODE) AS CURRENCY_CODE,
  CASE
    WHEN APP.GL_KEY_CODE IS NULL
      THEN -1
    ELSE 1
  END AS APP
FROM
(
  SELECT DISTINCT
      RB_F_TGK_SANITIZE_CODE(S.GL_KEY_CODE) AS GL_KEY_CODE,
      RB_F_TGK_SANITIZE_CODE(S.BUSINESS_UNIT) AS BUSINESS_UNIT,
      RB_F_TGK_SANITIZE_CODE(S.ACCOUNT) AS ACCOUNT,
      RB_F_TGK_SANITIZE_CODE(S.PRODUCT) AS PRODUCT,
      RB_F_TGK_SANITIZE_CODE(S.CURRENCY_CODE) AS CURRENCY_CODE
  FROM
    RB_V_HST_GL S
  WHERE
    (
      USERUPD = ${user.code}
      AND (EXISTS(SELECT 1 FROM RB_V_HST_GL WHERE USERUPD = ${user.code}))
    )
    OR (
      DATEUPD = (SELECT MAX(DATEUPD) FROM RB_V_HST_GL)
      AND (NOT EXISTS(SELECT 1 FROM RB_V_HST_GL WHERE USERUPD = ${user.code}))
    )
) STG
FULL OUTER JOIN
(
  SELECT DISTINCT
    A.COD_CONTO AS GL_KEY_CODE,
    A.COD_AZIENDA AS BUSINESS_UNIT,
    A.COD_DEST1 AS ACCOUNT,
    A.COD_DEST3 AS PRODUCT,
    A.COD_VALUTA_ORIGINARIA AS CURRENCY_CODE
  FROM
    DATI_SALDI_LORDI A
    INNER JOIN
    (
      SELECT DISTINCT
		RB_F_TGK_CREATE_SCENARIO_CODE(TO_DATE(FISCAL_YEAR||'12'||'31', 'YYYYMMDD')) AS COD_SCENARIO,
		RB_F_TGK_SANITIZE_CODE(S.GL_KEY_CODE) AS GL_KEY_CODE,
		RB_F_TGK_SANITIZE_CODE(S.BUSINESS_UNIT) AS BUSINESS_UNIT,
		RB_F_TGK_SANITIZE_CODE(S.ACCOUNT) AS ACCOUNT,
		RB_F_TGK_SANITIZE_CODE(S.PRODUCT) AS PRODUCT,
		RB_F_TGK_SANITIZE_CODE(S.CURRENCY_CODE) AS CURRENCY_CODE
      FROM
        RB_V_HST_GL S
      WHERE
        (
          USERUPD = ${user.code}
          AND (EXISTS(SELECT 1 FROM RB_V_HST_GL WHERE USERUPD = ${user.code}))
        )
        OR (
          DATEUPD = (SELECT MAX(DATEUPD) FROM RB_V_HST_GL)
          AND (NOT EXISTS(SELECT 1 FROM RB_V_HST_GL WHERE USERUPD = ${user.code}))
        )
    ) S
  ON
	A.GL_KEY_CODE = S.GL_KEY_CODE
	AND A.BUSINESS_UNIT = S.BUSINESS_UNIT
	AND A.COD_VALUTA_ORIGINARIA = S.COD_VALUTA_ORIGINARIA
	AND (
			A.ACCOUNT = S.ACCOUNT
			OR A.ACCOUNT IS NULL AND S.ACCOUNT IS NULL
		)
	AND (
			A.PRODUCT = S.PRODUCT
			OR A.PRODUCT IS NULL AND S.PRODUCT IS NULL
		)
) APP
ON
  (
    STG.GL_KEY_CODE = APP.GL_KEY_CODE
  ) AND
  (
    STG.BUSINESS_UNIT = APP.BUSINESS_UNIT
  )  AND
  (
    STG.CURRENCY_CODE = APP.CURRENCY_CODE
  )  AND
  (
    STG.ACCOUNT = APP.ACCOUNT
    OR STG.ACCOUNT IS NULL AND APP.ACCOUNT IS NULL
  )  AND
  (
    STG.PRODUCT = APP.PRODUCT
    OR STG.PRODUCT IS NULL AND APP.PRODUCT IS NULL
  )
WHERE
  APP.GL_KEY_CODE IS NULL
  OR STG.GL_KEY_CODE IS NULL