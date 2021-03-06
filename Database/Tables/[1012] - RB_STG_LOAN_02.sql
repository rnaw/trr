--------------------------------------------------------
--  DDL - DROP for Table RB_STG_LOAN_02
--------------------------------------------------------

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "RB_STG_LOAN_02"';
EXCEPTION
    WHEN OTHERS THEN
	    IF SQLCODE != -942 THEN RAISE;
		END IF;
END;
  
--------------------------------------------------------
--  DDL for Table RB_STG_LOAN_02
--------------------------------------------------------

CREATE TABLE "RB_STG_LOAN_02" (
	"RB_ROWID" VARCHAR2(255 BYTE), 
    "MONTH_END_DATE" VARCHAR2(255 BYTE), 
    "REPORTING_ENTITY" VARCHAR2(255 BYTE),
    "NUMBER_OF_DAYS_PAST_DUE" VARCHAR2(255 BYTE), 
    "RB_SECURED_DE" VARCHAR2(255 BYTE), 
    "RB_ACCTG_METD_DESC" VARCHAR2(255 BYTE), 
    "NON_ACCRUAL_YN" VARCHAR2(255 BYTE), 
    "DATE_NON_ACCRUAL" VARCHAR2(255 BYTE), 
    "TDR_YN" VARCHAR2(255 BYTE), 
    "DATE_TDR" VARCHAR2(255 BYTE), 
    "TDR_COMP_WITH_MOD_TERMS_YN" VARCHAR2(255 BYTE), 
    "TDR_TYPE" VARCHAR2(255 BYTE), 
    "GOVT_GUARANTEED_AGENCY" VARCHAR2(255 BYTE), 
    "GOVT_GUARANTEED_PERCENTAGE" VARCHAR2(255 BYTE), 
    "US_GAAP_RISK_RATING" VARCHAR2(255 BYTE), 
    "IFRS_RISK_RATING" VARCHAR2(255 BYTE), 
    "IN_PROCESS_OF_FORECLOSURE" VARCHAR2(255 BYTE), 
    "ACQUIRED_IN_BUS_COMBINATION_YN" VARCHAR2(255 BYTE), 
    "SOP03_3_ACCTNG_TREATMENT_YN" VARCHAR2(255 BYTE), 
    "FV_LN_ACQ_IN_BUS_COMB_AT_ACQSN" VARCHAR2(255 BYTE), 
    "GROSS_CNTRCT_AMT_REC_AT_ACQSN" VARCHAR2(255 BYTE), 
    "ESTCNTRCL_CSFLW_NOEXPCTD2BCLTD" VARCHAR2(255 BYTE), 
    "SYNDICATED_PARTICIPATED_LOAN" VARCHAR2(255 BYTE), 
    "AGENT_PARTICIPANT" VARCHAR2(255 BYTE), 
    "PORTION_OF_SYNDICATED_LOAN_HFS" VARCHAR2(255 BYTE), 
    "UMD_3" VARCHAR2(255 BYTE), 
    "UMD_4" VARCHAR2(255 BYTE), 
    "UMD_5" VARCHAR2(255 BYTE), 
    "CO_BORROWER_ID" VARCHAR2(255 BYTE), 
    "CO_BORROWER_NAME" VARCHAR2(255 BYTE), 
    "RELATIONSHIP_MANAGER_NAME" VARCHAR2(255 BYTE), 
    "NAICS_CODE" VARCHAR2(255 BYTE), 
    "NAICS_DESC" VARCHAR2(255 BYTE), 
    "INDUSTRIES" VARCHAR2(255 BYTE), 
    "RAPID_COLLATERAL_TYPE" VARCHAR2(255 BYTE), 
    "FAC_LEVEL_LINK" VARCHAR2(255 BYTE), 
    "RB_FAC_NAME" VARCHAR2(255 BYTE), 
    "FACILITY_BORROWER_CIF" VARCHAR2(255 BYTE), 
    "FACILITY_BORROWER_NAME" VARCHAR2(255 BYTE), 
    "FACILITY_TRADE_ID" VARCHAR2(255 BYTE), 
    "FAC_OUTSTANDING_AVAILABLE_AMT" VARCHAR2(255 BYTE), 
    "FACILITY_LIMIT_AMOUNT" VARCHAR2(255 BYTE), 
    "FACILITY_USED_AMOUNT" VARCHAR2(255 BYTE), 
    "FACILITY_ORIGINAL_CURRENCY" VARCHAR2(255 BYTE), 
    "FAC_OUTSTANDING_GL_ORI_CUR_AMT" VARCHAR2(255 BYTE), 
    "FACILITY_START_DATE" VARCHAR2(255 BYTE), 
    "FACILITY_END_DATE" VARCHAR2(255 BYTE), 
    "LENDER_TYPE_DESC" VARCHAR2(255 BYTE), 
    "GLOBAL_SECTOR" VARCHAR2(255 BYTE), 
    "LOCAL_SECTOR" VARCHAR2(255 BYTE), 
    "REGULATORY_RISK_RATING" VARCHAR2(255 BYTE), 
    "VARIABLE_INTEREST_ENTITY" VARCHAR2(255 BYTE), 
    "UMD_7" VARCHAR2(255 BYTE), 
    "UMD_8" VARCHAR2(255 BYTE), 
    "UMD_9" VARCHAR2(255 BYTE), 
    "TRADE_ID" VARCHAR2(255 BYTE), 
    "PROD_GROUP" VARCHAR2(255 BYTE), 
    "ACBS_LENDER_TYPE" VARCHAR2(255 BYTE), 
    "FED_CALL_CODE2" VARCHAR2(255 BYTE), 
    "RESCOUNTRY_OF_CUSTOMER" VARCHAR2(255 BYTE), 
    "CIF_TYPE" VARCHAR2(255 BYTE), 
    "CIF_DESCRIPTION_PHOENIX" VARCHAR2(255 BYTE), 
    "CODE_OF_PARENT_PHOENIX" VARCHAR2(255 BYTE), 
    "DESC_OF_PARENT_PHOENIX" VARCHAR2(255 BYTE), 
    "RESCOUNTRY_OF_PARENT" VARCHAR2(255 BYTE), 
    "PORTFOLIO" VARCHAR2(255 BYTE), 
    "PRODUCT_TYPE" VARCHAR2(255 BYTE), 
    "IS_REPORTABLE_LOAN_YN" VARCHAR2(255 BYTE), 
    "BU" VARCHAR2(255 BYTE), 
    "ACCOUNT" VARCHAR2(255 BYTE), 
    "PRODUCT" VARCHAR2(255 BYTE), 
    "OPERATING_UNIT" VARCHAR2(255 BYTE), 
    "DEPTID" VARCHAR2(255 BYTE), 
    "AFFILIATE" VARCHAR2(255 BYTE), 
    "OBU_AFFILIATE" VARCHAR2(255 BYTE), 
    "CUST_CLASS" VARCHAR2(255 BYTE), 
    "CODEBLOCK" VARCHAR2(255 BYTE), 
    "DEFERRED_CODEBLOCK" VARCHAR2(255 BYTE), 
    "RESERVE_CODEBLOCK" VARCHAR2(255 BYTE), 
    "DESCRIPTION" VARCHAR2(255 BYTE), 
    "FILLER_1" VARCHAR2(255 BYTE), 
    "FILLER_2" VARCHAR2(255 BYTE), 
    "FILLER_3" VARCHAR2(255 BYTE), 
    "FILLER_4" VARCHAR2(255 BYTE), 
    "FILLER_5" VARCHAR2(255 BYTE), 
    "FILLER_6" VARCHAR2(255 BYTE), 
    "FILLER_7" VARCHAR2(255 BYTE), 
    "FILLER_8" VARCHAR2(255 BYTE), 
    "FILLER_9" VARCHAR2(255 BYTE), 
    "FILLER_10" VARCHAR2(255 BYTE), 
    "FILLER_11" VARCHAR2(255 BYTE), 
    "FILLER_12" VARCHAR2(255 BYTE), 
    "FILLER_13" VARCHAR2(255 BYTE), 
    "FILLER_14" VARCHAR2(255 BYTE), 
    "FILLER_15" VARCHAR2(255 BYTE), 
    "FILLER_16" VARCHAR2(255 BYTE), 
    "FILLER_17" VARCHAR2(255 BYTE), 
    "FILLER_18" VARCHAR2(255 BYTE), 
    "FILLER_19" VARCHAR2(255 BYTE), 
    "FILLER_20" VARCHAR2(255 BYTE), 
    "FILLER_21" VARCHAR2(255 BYTE), 
    "FILLER_22" VARCHAR2(255 BYTE), 
    "FILLER_23" VARCHAR2(255 BYTE), 
    "FILLER_24" VARCHAR2(255 BYTE), 
    "FILLER_25" VARCHAR2(255 BYTE), 
    "PROVENIENZA" VARCHAR2(30 BYTE), 
    "USERUPD" VARCHAR2(30 BYTE), 
    "DATEUPD" DATE
) SEGMENT CREATION DEFERRED 
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS PARALLEL NOLOGGING;

CREATE INDEX IX_RB_STG_LOAN_02_UPD
ON RB_STG_LOAN_02 (MONTH_END_DATE, REPORTING_ENTITY, RB_ROWID, USERUPD)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;