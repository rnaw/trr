--------------------------------------------------------
--  DDL for FUNCTION RB_F_TGK_SANITIZE_CODE
--------------------------------------------------------

CREATE OR REPLACE FUNCTION RB_F_TGK_SANITIZE_CODE (
  CODE IN VARCHAR2,
  ALLOW_NULL IN INT := 0
)
RETURN VARCHAR2
IS "SANITIZED_CODE" VARCHAR2(255) := NULL;
--  This function will sanitize a string in order to be used as a
--  valid code identifier in TAGETIK
BEGIN
  --  Upper Case the code, REPLACE ' ' with '_'
  --  If ALLOW_NULL = 0 then replace NULL with 'NA'
  SANITIZED_CODE := REPLACE(UPPER(CODE), ' ', '_');
  IF ALLOW_NULL = 0 THEN SANITIZED_CODE := NVL(SANITIZED_CODE, 'NA'); END IF;
  RETURN SANITIZED_CODE;
END;