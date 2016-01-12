--------------------------------------------------
--  DDL for FUNCTION RB_F_TGK_CREATE_PERIOD_CODE
--------------------------------------------------

CREATE OR REPLACE FUNCTION RB_F_TGK_CREATE_PERIOD_CODE (
  MONTH_END_DATE IN DATE
)
RETURN VARCHAR2
IS "COD_PERIODO" VARCHAR2(2) := NULL;
--  This function will create a period code
BEGIN
  COD_PERIODO := TO_CHAR(MONTH_END_DATE, 'MM');
  RETURN RB_F_TGK_SANITIZE_CODE(COD_PERIODO);
END;