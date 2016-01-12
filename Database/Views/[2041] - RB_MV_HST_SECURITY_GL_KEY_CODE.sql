--------------------------------------------------------
--  DDL for View RB_MV_HST_SECURITY_GL_KEY_CODE
--------------------------------------------------------

CREATE OR REPLACE NOFORCE VIEW RB_MV_HST_SECURITY_GL_KEY_CODE (
	GL_KEY_CODE,
	BUSINESS_UNIT
)
AS
SELECT DISTINCT
	GL_KEY_CODE,
	BUSINESS_UNIT
FROM
  RB_HST_SECURITY
;