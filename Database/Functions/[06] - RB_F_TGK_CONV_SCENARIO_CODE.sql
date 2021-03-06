--------------------------------------------------------
--  DDL for FUNCTION RB_F_TGK_CONV_SCENARIO_CODE
--------------------------------------------------------
CREATE OR REPLACE FUNCTION RB_F_TGK_CONV_SCENARIO_CODE (
  COD_SCENARIO IN VARCHAR2,
  GET_FROM_REFERENCE IN INT := 0,
  DIRECTION IN INT := 0
)
RETURN VARCHAR2
IS SCENARIO_CODE VARCHAR2(15);
--  This function translates the SCENARIO code:
--	--	from SCENARIO to REF (DIRECTION = 0 -- DEFAULT)
--	--	from REF to SCENARIO (DIRECTION = 1)
BEGIN
	IF COD_SCENARIO IS NOT NULL THEN
		CASE GET_FROM_REFERENCE
		  WHEN 1
			THEN IF DIRECTION = 1 THEN
				SELECT
					COD_SCENARIO INTO RB_F_TGK_CONV_SCENARIO_CODE.SCENARIO_CODE
				FROM
					SCENARIO
				WHERE
					COD_SCENARIO_RIF1 = RB_F_TGK_CONV_SCENARIO_CODE.COD_SCENARIO
				;
			ELSE
				SELECT
					COD_SCENARIO_RIF1 INTO RB_F_TGK_CONV_SCENARIO_CODE.SCENARIO_CODE
				FROM
					SCENARIO
				WHERE
					COD_SCENARIO = RB_F_TGK_CONV_SCENARIO_CODE.COD_SCENARIO
				;
			END IF;
		  WHEN 2
			THEN IF DIRECTION = 1 THEN
				SELECT
					COD_SCENARIO INTO RB_F_TGK_CONV_SCENARIO_CODE.SCENARIO_CODE
				FROM
					SCENARIO
				WHERE
					COD_SCENARIO_RIF2 = RB_F_TGK_CONV_SCENARIO_CODE.COD_SCENARIO
				;
			ELSE
				SELECT
					COD_SCENARIO_RIF2 INTO RB_F_TGK_CONV_SCENARIO_CODE.SCENARIO_CODE
				FROM
					SCENARIO
				WHERE
					COD_SCENARIO = RB_F_TGK_CONV_SCENARIO_CODE.COD_SCENARIO
				;
			END IF;
		  WHEN 3
			THEN IF DIRECTION = 1 THEN
				SELECT
					COD_SCENARIO INTO RB_F_TGK_CONV_SCENARIO_CODE.SCENARIO_CODE
				FROM
					SCENARIO
				WHERE
					COD_SCENARIO_RIF3 = RB_F_TGK_CONV_SCENARIO_CODE.COD_SCENARIO
				;
			ELSE
				SELECT
					COD_SCENARIO_RIF3 INTO RB_F_TGK_CONV_SCENARIO_CODE.SCENARIO_CODE
				FROM
					SCENARIO
				WHERE
					COD_SCENARIO = RB_F_TGK_CONV_SCENARIO_CODE.COD_SCENARIO
				;
			END IF;
		  WHEN 4
			THEN IF DIRECTION = 1 THEN
				SELECT
					COD_SCENARIO INTO RB_F_TGK_CONV_SCENARIO_CODE.SCENARIO_CODE
				FROM
					SCENARIO
				WHERE
					COD_SCENARIO_RIF4 = RB_F_TGK_CONV_SCENARIO_CODE.COD_SCENARIO
				;
			ELSE
				SELECT
					COD_SCENARIO_RIF4 INTO RB_F_TGK_CONV_SCENARIO_CODE.SCENARIO_CODE
				FROM
					SCENARIO
				WHERE
					COD_SCENARIO = RB_F_TGK_CONV_SCENARIO_CODE.COD_SCENARIO
				;
			END IF;
		  WHEN 5
			THEN IF DIRECTION = 1 THEN
				SELECT
					COD_SCENARIO INTO RB_F_TGK_CONV_SCENARIO_CODE.SCENARIO_CODE
				FROM
					SCENARIO
				WHERE
					COD_SCENARIO_RIF5 = RB_F_TGK_CONV_SCENARIO_CODE.COD_SCENARIO
				;
			ELSE
				SELECT
					COD_SCENARIO_RIF5 INTO RB_F_TGK_CONV_SCENARIO_CODE.SCENARIO_CODE
				FROM
					SCENARIO
				WHERE
					COD_SCENARIO = RB_F_TGK_CONV_SCENARIO_CODE.COD_SCENARIO
				;
			END IF;
		  ELSE RB_F_TGK_CONV_SCENARIO_CODE.SCENARIO_CODE := RB_F_TGK_CONV_SCENARIO_CODE.COD_SCENARIO;
		END CASE;
	ELSE RB_F_TGK_CONV_SCENARIO_CODE.SCENARIO_CODE := NULL;
	END IF;
	
	RETURN(RB_F_TGK_CONV_SCENARIO_CODE.SCENARIO_CODE);
END;