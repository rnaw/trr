--------------------------------------------------------
--  DDL for FUNCTION RB_F_TGK_GET_OPEN_SCE_PER
--------------------------------------------------------

CREATE OR REPLACE FUNCTION RB_F_TGK_GET_OPEN_SCE_PER (
  PROCESS IN VARCHAR2,
  GET_FROM_REFERENCE IN INT := 0,
  SHIFT IN VARCHAR2 := 'CP'
)
RETURN RB_SCENARIO_PERIODO_TABLE PIPELINED
IS
  OPEN_SCENARIO_PERIODO RB_SCENARIO_PERIODO := RB_SCENARIO_PERIODO(NULL, NULL);
  P_OPEN_SCENARIO_PERIODO RB_SCENARIO_PERIODO := RB_SCENARIO_PERIODO(NULL, NULL);
--  This function will return a table of a two columns (COD_SCENARIO, COD_PERIODO)
--  of all open SCENARIO/PERIODO that belongs to a certain PROCESS
--  GET_FROM_REFERENCE is
--	0 if you want to return the Scenario
--	1 if you want to return the Scenario REF1
--	2 if you want to return the Scenario REF2
--	3 if you want to return the Scenario REF3
--	4 if you want to return the Scenario REF4
--	5 if you want to return the Scenario REF5
--  SHIFT is:
--  'PP' for Prior Period
--  'PQ' for Prior Quarter
--  'PY' for Prior Year
BEGIN
  FOR R IN (
    SELECT
      SP.COD_SCENARIO,
      S.COD_SCENARIO_PREC,
      SP.COD_PERIODO
    FROM
      SCENARIO_PERIODO SP
      INNER JOIN
      SCENARIO S
      ON
        SP.COD_SCENARIO = S.COD_SCENARIO
    WHERE
          SP.COD_RACCOLTA = PROCESS
      AND SP.FLAG_BLOCCATO = 0
    ORDER BY
      SP.COD_SCENARIO ASC,
      SP.COD_PERIODO ASC
  ) LOOP
  
    CASE SHIFT
      WHEN 'PP'
        THEN
          CASE 
            WHEN R.COD_PERIODO = '01'
              THEN
                BEGIN
                  R.COD_SCENARIO := R.COD_SCENARIO_PREC;
                  R.COD_PERIODO := '12';
                END;
            ELSE R.COD_PERIODO := SUBSTR('0' || TO_CHAR(TO_NUMBER(R.COD_PERIODO) - 1), LENGTH(TO_CHAR(TO_NUMBER(R.COD_PERIODO) - 1)));
          END CASE;
      WHEN 'PQ'
        THEN
          CASE 
            WHEN R.COD_PERIODO IN ('01', '02', '03')
              THEN
                BEGIN
                  R.COD_SCENARIO := R.COD_SCENARIO_PREC;
                  R.COD_PERIODO := '12';
                END;
            WHEN R.COD_PERIODO IN ('04', '05', '06')
              THEN
                BEGIN
                  R.COD_PERIODO := '03';
                END;
            WHEN R.COD_PERIODO IN ('07', '08', '09')
              THEN
                BEGIN
                  R.COD_PERIODO := '06';
                END;
            WHEN R.COD_PERIODO IN ('10', '11', '12')
              THEN
                BEGIN
                  R.COD_PERIODO := '09';
                END;
            ELSE R.COD_PERIODO := NULL;
          END CASE;
      WHEN 'PY'
        THEN
			BEGIN
			  R.COD_SCENARIO := R.COD_SCENARIO_PREC;
			  R.COD_PERIODO := '12';
			END;
      WHEN 'CP'
        THEN
          BEGIN
            R.COD_PERIODO := R.COD_PERIODO;
          END;
    END CASE;
   
	OPEN_SCENARIO_PERIODO.COD_SCENARIO := RB_F_TGK_CONV_SCENARIO_CODE(R.COD_SCENARIO, GET_FROM_REFERENCE);
    OPEN_SCENARIO_PERIODO.COD_PERIODO := R.COD_PERIODO;
    
    IF    OPEN_SCENARIO_PERIODO.COD_SCENARIO IS NOT NULL
      AND (
            (
                  OPEN_SCENARIO_PERIODO.COD_SCENARIO <> P_OPEN_SCENARIO_PERIODO.COD_SCENARIO
              OR  (OPEN_SCENARIO_PERIODO.COD_SCENARIO IS NULL AND P_OPEN_SCENARIO_PERIODO.COD_SCENARIO IS NOT NULL)
              OR  (OPEN_SCENARIO_PERIODO.COD_SCENARIO IS NOT NULL AND P_OPEN_SCENARIO_PERIODO.COD_SCENARIO IS NULL)
            )
            OR (
                    OPEN_SCENARIO_PERIODO.COD_PERIODO <> P_OPEN_SCENARIO_PERIODO.COD_PERIODO
                OR  (OPEN_SCENARIO_PERIODO.COD_PERIODO IS NULL AND P_OPEN_SCENARIO_PERIODO.COD_PERIODO IS NOT NULL)
                OR  (OPEN_SCENARIO_PERIODO.COD_PERIODO IS NOT NULL AND P_OPEN_SCENARIO_PERIODO.COD_PERIODO IS NULL)
            )
          )
      THEN PIPE ROW(OPEN_SCENARIO_PERIODO);
    END IF;
    
    P_OPEN_SCENARIO_PERIODO.COD_SCENARIO := OPEN_SCENARIO_PERIODO.COD_SCENARIO;
    P_OPEN_SCENARIO_PERIODO.COD_PERIODO := OPEN_SCENARIO_PERIODO.COD_PERIODO;
    
  END LOOP;
  
  RETURN;
END;