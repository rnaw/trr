--------------------------------------------------------
--  DDL - DROP for Table RB_HST_LOAN_02
--------------------------------------------------------

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "RB_HST_LOAN_02"';
EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE;
    END IF;
END;
  
--------------------------------------------------------
--  DDL for Table RB_HST_LOAN_02
--------------------------------------------------------

CREATE TABLE "RB_HST_LOAN_02" (
	"RB_ROWID" NUMBER(*,0), 
    "MONTH_END_DATE" DATE, 
    "REPORTING_ENTITY" VARCHAR2(6 BYTE), 
    "NUMBER_OF_DAYS_PAST_DUE" NUMBER(23,3), 
    "RB_SECURED_DE" VARCHAR2(20 BYTE), 
    "RB_ACCTG_METD_DESC" VARCHAR2(20 BYTE), 
    "NON_ACCRUAL_YN" VARCHAR2(10 BYTE), 
    "DATE_NON_ACCRUAL" DATE, 
    "TDR_YN" VARCHAR2(10 BYTE), 
    "DATE_TDR" DATE, 
    "TDR_COMP_WITH_MOD_TERMS_YN" VARCHAR2(10 BYTE), 
    "TDR_TYPE" VARCHAR2(50 BYTE), 
    "GOVT_GUARANTEED_AGENCY" VARCHAR2(50 BYTE), 
    "GOVT_GUARANTEED_PERCENTAGE" NUMBER(23,3), 
    "US_GAAP_RISK_RATING" VARCHAR2(20 BYTE), 
    "IFRS_RISK_RATING" VARCHAR2(20 BYTE), 
    "IN_PROCESS_OF_FORECLOSURE" VARCHAR2(20 BYTE), 
    "ACQUIRED_IN_BUS_COMBINATION_YN" VARCHAR2(10 BYTE), 
    "SOP03_3_ACCTNG_TREATMENT_YN" VARCHAR2(10 BYTE), 
    "FV_LN_ACQ_IN_BUS_COMB_AT_ACQSN" NUMBER(23,3), 
    "GROSS_CNTRCT_AMT_REC_AT_ACQSN" NUMBER(23,3), 
    "ESTCNTRCL_CSFLW_NOEXPCTD2BCLTD" NUMBER(23,3), 
    "SYNDICATED_PARTICIPATED_LOAN" NUMBER(23,3), 
    "AGENT_PARTICIPANT" VARCHAR2(20 BYTE), 
    "PORTION_OF_SYNDICATED_LOAN_HFS" NUMBER(23,3), 
    "UMD_3" VARCHAR2(250 BYTE), 
    "UMD_4" VARCHAR2(250 BYTE), 
    "UMD_5" VARCHAR2(250 BYTE), 
    "CO_BORROWER_ID" VARCHAR2(20 BYTE), 
    "CO_BORROWER_NAME" VARCHAR2(50 BYTE), 
    "RELATIONSHIP_MANAGER_NAME" VARCHAR2(50 BYTE), 
    "NAICS_CODE" VARCHAR2(35 BYTE), 
    "NAICS_DESC" VARCHAR2(150 BYTE), 
    "INDUSTRIES" VARCHAR2(50 BYTE), 
    "RAPID_COLLATERAL_TYPE" VARCHAR2(50 BYTE), 
    "FAC_LEVEL_LINK" VARCHAR2(50 BYTE), 
    "RB_FAC_NAME" VARCHAR2(20 BYTE), 
    "FACILITY_BORROWER_CIF" VARCHAR2(20 BYTE), 
    "FACILITY_BORROWER_NAME" VARCHAR2(50 BYTE), 
    "FACILITY_TRADE_ID" VARCHAR2(20 BYTE), 
    "FAC_OUTSTANDING_AVAILABLE_AMT" NUMBER(23,3), 
    "FACILITY_LIMIT_AMOUNT" NUMBER(23,3), 
    "FACILITY_USED_AMOUNT" NUMBER(23,3), 
    "FACILITY_ORIGINAL_CURRENCY" VARCHAR2(3 BYTE), 
    "FAC_OUTSTANDING_GL_ORI_CUR_AMT" NUMBER(23,3), 
    "FACILITY_START_DATE" DATE, 
    "FACILITY_END_DATE" DATE, 
    "LENDER_TYPE_DESC" VARCHAR2(20 BYTE), 
    "GLOBAL_SECTOR" VARCHAR2(30 BYTE), 
    "LOCAL_SECTOR" VARCHAR2(30 BYTE), 
    "REGULATORY_RISK_RATING" VARCHAR2(20 BYTE), 
    "VARIABLE_INTEREST_ENTITY" VARCHAR2(10 BYTE), 
    "UMD_7" VARCHAR2(250 BYTE), 
    "UMD_8" VARCHAR2(250 BYTE), 
    "UMD_9" VARCHAR2(250 BYTE), 
    "TRADE_ID" VARCHAR2(20 BYTE), 
    "PROD_GROUP" VARCHAR2(20 BYTE), 
    "ACBS_LENDER_TYPE" VARCHAR2(20 BYTE), 
    "FED_CALL_CODE2" VARCHAR2(20 BYTE), 
    "RESCOUNTRY_OF_CUSTOMER" VARCHAR2(20 BYTE), 
    "CIF_TYPE" VARCHAR2(20 BYTE), 
    "CIF_DESCRIPTION_PHOENIX" VARCHAR2(50 BYTE), 
    "CODE_OF_PARENT_PHOENIX" VARCHAR2(20 BYTE), 
    "DESC_OF_PARENT_PHOENIX" VARCHAR2(50 BYTE), 
    "RESCOUNTRY_OF_PARENT" VARCHAR2(50 BYTE), 
    "PORTFOLIO" VARCHAR2(20 BYTE), 
    "PRODUCT_TYPE" VARCHAR2(25 BYTE), 
    "IS_REPORTABLE_LOAN_YN" VARCHAR2(10 BYTE), 
    "BU" VARCHAR2(10 BYTE), 
    "ACCOUNT" VARCHAR2(10 BYTE), 
    "PRODUCT" VARCHAR2(6 BYTE), 
    "OPERATING_UNIT" VARCHAR2(8 BYTE), 
    "DEPTID" VARCHAR2(15 BYTE), 
    "AFFILIATE" VARCHAR2(5 BYTE), 
    "OBU_AFFILIATE" VARCHAR2(8 BYTE), 
    "CUST_CLASS" VARCHAR2(10 BYTE), 
    "CODEBLOCK" VARCHAR2(100 BYTE), 
    "DEFERRED_CODEBLOCK" VARCHAR2(100 BYTE), 
    "RESERVE_CODEBLOCK" VARCHAR2(100 BYTE), 
    "DESCRIPTION" VARCHAR2(100 BYTE), 
    "FILLER_1" VARCHAR2(250 BYTE), 
    "FILLER_2" VARCHAR2(250 BYTE), 
    "FILLER_3" VARCHAR2(250 BYTE), 
    "FILLER_4" VARCHAR2(250 BYTE), 
    "FILLER_5" VARCHAR2(250 BYTE), 
    "FILLER_6" VARCHAR2(250 BYTE), 
    "FILLER_7" VARCHAR2(250 BYTE), 
    "FILLER_8" VARCHAR2(250 BYTE), 
    "FILLER_9" VARCHAR2(250 BYTE), 
    "FILLER_10" VARCHAR2(250 BYTE), 
    "FILLER_11" VARCHAR2(250 BYTE), 
    "FILLER_12" VARCHAR2(250 BYTE), 
    "FILLER_13" VARCHAR2(250 BYTE), 
    "FILLER_14" VARCHAR2(250 BYTE), 
    "FILLER_15" VARCHAR2(250 BYTE), 
    "FILLER_16" VARCHAR2(250 BYTE), 
    "FILLER_17" VARCHAR2(250 BYTE), 
    "FILLER_18" VARCHAR2(250 BYTE), 
    "FILLER_19" VARCHAR2(250 BYTE), 
    "FILLER_20" VARCHAR2(250 BYTE), 
    "FILLER_21" VARCHAR2(250 BYTE), 
    "FILLER_22" VARCHAR2(250 BYTE), 
    "FILLER_23" VARCHAR2(250 BYTE), 
    "FILLER_24" VARCHAR2(250 BYTE), 
    "FILLER_25" VARCHAR2(250 BYTE), 
    "PROVENIENZA" VARCHAR2(30 BYTE), 
    "USERUPD" VARCHAR2(30 BYTE), 
    "DATEUPD" DATE
)
PARTITION BY HASH (MONTH_END_DATE)
INITRANS 1 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

--------------------------------------------------------
--  Indexes for Table RB_HST_LOAN_02
--------------------------------------------------------

CREATE UNIQUE INDEX UI_RB_HST_LOAN_02
ON RB_HST_LOAN_02 (
	MONTH_END_DATE,
	REPORTING_ENTITY,
	RB_ROWID
)
GLOBAL PARTITION BY HASH (MONTH_END_DATE)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

CREATE INDEX IX_RB_HST_LOAN_02_RE
ON RB_HST_LOAN_02 (REPORTING_ENTITY)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

--------------------------------------------------------
--  Constraints for Table RB_HST_LOAN_02
--------------------------------------------------------

ALTER TABLE RB_HST_LOAN_02 ADD CONSTRAINT PK_RB_HST_LOAN_02
PRIMARY KEY (MONTH_END_DATE, REPORTING_ENTITY, RB_ROWID) USING INDEX UI_RB_HST_LOAN_02 ENABLE VALIDATE;