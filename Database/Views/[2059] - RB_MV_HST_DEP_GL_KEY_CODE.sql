--------------------------------------------------------
--  DDL for View RB_MV_HST_DEP_GL_KEY_CODE
--------------------------------------------------------

CREATE OR REPLACE NOFORCE VIEW RB_MV_HST_DEP_GL_KEY_CODE (
	GL_KEY_CODE,
	BUSINESS_UNIT
)
AS
SELECT DISTINCT
	GL_KEY_CODE,
	BUSINESS_UNIT
FROM
  RB_V_DEPOSITS
;