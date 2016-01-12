--------------------------------------------------------
--  DDL for FUNCTION RB_F_TGK_CREATE_SCENARIO_CODE
--------------------------------------------------------

CREATE OR REPLACE FUNCTION RB_F_TGK_CREATE_SCENARIO_CODE (
  MONTH_END_DATE IN DATE,
  SCENARIO_TYPE IN CHAR := 'A'
)
RETURN VARCHAR2
IS SCENARIO_CODE VARCHAR2(15);
--  This function will create a scenario code
BEGIN
  SCENARIO_CODE :=
    CASE
      WHEN SCENARIO_TYPE = 'A'
        THEN TO_CHAR(MONTH_END_DATE, 'YYYY')||'ACTUAL'
      WHEN SCENARIO_TYPE = 'R'
        THEN TO_CHAR(MONTH_END_DATE, 'YYYY')||'REGULATORY'
      ELSE NULL
    END;
  RETURN(RB_F_TGK_SANITIZE_CODE(SCENARIO_CODE));
END;