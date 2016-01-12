SELECT
(
  SELECT
    COUNT(*)
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
) AS STG,
(
  SELECT
    COUNT(*)
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
) AS APP
FROM
  DUAL