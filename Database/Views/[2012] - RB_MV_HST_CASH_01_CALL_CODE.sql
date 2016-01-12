--------------------------------------------------------
--  DDL for View RB_MV_HST_CASH_01_CALL_CODE
--------------------------------------------------------

CREATE OR REPLACE NOFORCE VIEW RB_MV_HST_CASH_01_CALL_CODE (
	CALL_CODE,
	BUSINESS_UNIT
)
AS
SELECT DISTINCT
	CALL_CODE,
	BUSINESS_UNIT
FROM
  RB_HST_CASH_01
;