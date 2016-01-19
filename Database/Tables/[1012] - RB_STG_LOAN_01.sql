--------------------------------------------------------
--  DDL - DROP for Table RB_STG_LOAN_01
--------------------------------------------------------

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "RB_STG_LOAN_01"';
EXCEPTION
    WHEN OTHERS THEN
	    IF SQLCODE != -942 THEN RAISE;
		END IF;
END;
  
--------------------------------------------------------
--  DDL for Table RB_STG_LOAN_01
--------------------------------------------------------

CREATE TABLE "RB_STG_LOAN_01" (
	"RB_ROWID" VARCHAR2(255 BYTE), 
    "MONTH_END_DATE" VARCHAR2(255 BYTE), 
    "REPORTING_ENTITY" VARCHAR2(255 BYTE), 
    "INSTRUMENT" VARCHAR2(255 BYTE),
    "INTERCOMPANY" VARCHAR2(255 BYTE), 
    "CALL_CODE" VARCHAR2(255 BYTE), 
    "CALL_CODE_DESC" VARCHAR2(255 BYTE), 
    "BASE_EQUIVALENT" VARCHAR2(255 BYTE), 
    "PROD_GROUP_DESC" VARCHAR2(255 BYTE), 
    "PROD_GROUP_TYPE_DESC" VARCHAR2(255 BYTE), 
    "CUSTOMER_ID" VARCHAR2(255 BYTE), 
    "CUSTOMER_NAME" VARCHAR2(255 BYTE), 
    "CUSTOMER_TYPE" VARCHAR2(255 BYTE), 
    "RELATED_DEP_INST_YESNO" VARCHAR2(255 BYTE), 
    "PURPOSE_CODE" VARCHAR2(255 BYTE), 
    "FOREIGN_DOMESTIC" VARCHAR2(255 BYTE), 
    "CUST_PARENT_FOREIGN_DOMESTIC" VARCHAR2(255 BYTE), 
    "COUNTRY_CODE" VARCHAR2(255 BYTE), 
    "COUNTRY_DESC" VARCHAR2(255 BYTE), 
    "RISK_COUNTRY" VARCHAR2(255 BYTE), 
    "OPERATING_STATE" VARCHAR2(255 BYTE), 
    "LOAN_USED_IN_STATE" VARCHAR2(255 BYTE), 
    "BORROWER_COUNTY" VARCHAR2(255 BYTE), 
    "LOAN_USED_IN_COUNTY" VARCHAR2(255 BYTE), 
    "AFFL_CONSOL_NODE" VARCHAR2(255 BYTE), 
    "DAY_COUNT_BASIS" VARCHAR2(255 BYTE), 
    "SOURCE" VARCHAR2(255 BYTE), 
    "HIGHLVL_PROD_CAT" VARCHAR2(255 BYTE), 
    "GL_KEY_CODE" VARCHAR2(255 BYTE), 
    "GL_KEY_CODE_DESC" VARCHAR2(255 BYTE), 
    "PRINCIPAL_GL_US_GAAP_BASE_EQ" VARCHAR2(255 BYTE), 
    "ACC_INT_GL_US_GAAP_BASE_EQ" VARCHAR2(255 BYTE), 
    "DEF_FEES_GL_US_GAAP_BASE_EQ" VARCHAR2(255 BYTE), 
    "UNEARN_FEES_GL_US_GAAP_BASE_EQ" VARCHAR2(255 BYTE), 
    "SPCFC_RESRV_GL_US_GAAP_BASE_EQ" VARCHAR2(255 BYTE), 
    "INT_INC_GL_US_GAAP_BASE_EQ" VARCHAR2(255 BYTE), 
    "FEES_GL_US_GAAP_BASE_EQ" VARCHAR2(255 BYTE), 
    "PRINCIPAL_GL_IFRS_BASE_EQ" VARCHAR2(255 BYTE), 
    "ACC_INT_GL_IFRS_BASE_EQ" VARCHAR2(255 BYTE), 
    "DEFERRED_FEES_GL_IFRS_BASE_EQ" VARCHAR2(255 BYTE), 
    "UNEARNED_FEES_GL_IFRS_BASE_EQ" VARCHAR2(255 BYTE), 
    "SPCFC_RESRV_GL_IFRS_BASE_EQ" VARCHAR2(255 BYTE), 
    "INT_INC_GL_IFRS_BASE_EQ" VARCHAR2(255 BYTE), 
    "FEES_GL_IFRS_BASE_EQ" VARCHAR2(255 BYTE), 
    "UMD1" VARCHAR2(255 BYTE), 
    "UMD2" VARCHAR2(255 BYTE), 
    "UMD3" VARCHAR2(255 BYTE), 
    "CONSOL_NODE" VARCHAR2(255 BYTE), 
    "SUB_LE1" VARCHAR2(255 BYTE), 
    "SUB_LE2" VARCHAR2(255 BYTE), 
    "BUSINESS_UNIT" VARCHAR2(255 BYTE), 
    "BUSINESS_LINE" VARCHAR2(255 BYTE), 
    "CURRENCY_CODE" VARCHAR2(255 BYTE), 
    "LEGAL_CUST_TOTAL_COMMIT" VARCHAR2(255 BYTE), 
    "LEGAL_CUST_PRINC_FUNDED" VARCHAR2(255 BYTE), 
    "LEGAL_CUST_UNFUNDED_COMMIT" VARCHAR2(255 BYTE), 
    "LEGAL_CUST_INT_OWED" VARCHAR2(255 BYTE), 
    "BANK_SHARE_PRINC_IFRS" VARCHAR2(255 BYTE), 
    "BANK_SHARE_PRINC_US_GAAP" VARCHAR2(255 BYTE), 
    "BANK_SHARE_TOTAL_COMMIT" VARCHAR2(255 BYTE), 
    "BANK_SHARE_UNFUNDED_COMMIT" VARCHAR2(255 BYTE), 
    "BANK_SPECIFIC_RESRV_US_GAAP" VARCHAR2(255 BYTE), 
    "UNEARNED_FEES_US_GAAP" VARCHAR2(255 BYTE), 
    "CHARGED_OFF_US_GAAP" VARCHAR2(255 BYTE), 
    "CHARGED_OFF_IFRS" VARCHAR2(255 BYTE), 
    "SPECIFIC_RESRV_IFRS" VARCHAR2(255 BYTE), 
    "NON_ACC_INTEREST_DIFF_US_GAAP" VARCHAR2(255 BYTE), 
    "INTEREST_APPLIED_PRINC_US_GAAP" VARCHAR2(255 BYTE), 
    "NON_ACC_INTEREST_DIFF_IFRS" VARCHAR2(255 BYTE), 
    "INTEREST_APPLLIED_PRINC_IFRS" VARCHAR2(255 BYTE), 
    "UNEARNED_FEE_IFRS" VARCHAR2(255 BYTE), 
    "LEDGER_ACCRUED_INTEREST_IFRS" VARCHAR2(255 BYTE), 
    "LEDG_ACC_INTEREST_US_GAAP" VARCHAR2(255 BYTE), 
    "INTEREST_PL_MTD_IFRS" VARCHAR2(255 BYTE), 
    "INTEREST_PL_MTD_US_GAAP" VARCHAR2(255 BYTE), 
    "INTEREST_PL_QTD_IFRS" VARCHAR2(255 BYTE), 
    "INTEREST_PL_QTD_US_GAAP" VARCHAR2(255 BYTE), 
    "INTEREST_PL_YTD_IFRS" VARCHAR2(255 BYTE), 
    "INTEREST_PL_YTD_US_GAAP" VARCHAR2(255 BYTE), 
    "ORIGINAL_PREMIUM_DISCOUNT" VARCHAR2(255 BYTE), 
    "REMAINING_PREMIUM_DISCOUNT" VARCHAR2(255 BYTE), 
    "ORIGINATION_DATE" VARCHAR2(255 BYTE), 
    "MATURITY_DATE" VARCHAR2(255 BYTE), 
    "ORIGINAL_INTEREST_RATE" VARCHAR2(255 BYTE), 
    "REVOLVER_YN" VARCHAR2(255 BYTE), 
    "RATE_EFFECTIVE_DATE" VARCHAR2(255 BYTE), 
    "RATE_EXPIRATION_DATE" VARCHAR2(255 BYTE), 
    "INTEREST_RATE" VARCHAR2(255 BYTE), 
    "OVER_UNDER_RATE_INDEX" VARCHAR2(255 BYTE), 
    "NOTE_CEILING_RATE" VARCHAR2(255 BYTE), 
    "NOTE_FLOOR_RATE" VARCHAR2(255 BYTE), 
    "NEXT_RATE_RESET_DATE" VARCHAR2(255 BYTE), 
    "LAST_RATE_RESET_DATE" VARCHAR2(255 BYTE), 
    "RATE_RESET_FREQUENCY" VARCHAR2(255 BYTE), 
    "LAST_REPRICING_DATE" VARCHAR2(255 BYTE), 
    "RB_INDEX" VARCHAR2(255 BYTE), 
    "FIXED_OR_VARIABLE" VARCHAR2(255 BYTE), 
    "BOOK_INDICATOR_HTM_OR_AFS" VARCHAR2(255 BYTE), 
    "IF_AFS_THEN_FV_BALANCE" VARCHAR2(255 BYTE), 
    "CUSTOMER_PARENT" VARCHAR2(255 BYTE), 
    "AMORTIZATION_METHOD" VARCHAR2(255 BYTE), 
    "COF_FTP_RATE" VARCHAR2(255 BYTE), 
    "SPREAD" VARCHAR2(255 BYTE), 
    "FED_CALL_CODE" VARCHAR2(255 BYTE), 
    "ZIP_CODE" VARCHAR2(255 BYTE), 
    "REAL_ESTATE_ZIP_CODE" VARCHAR2(255 BYTE), 
    "PCT_OWNED" VARCHAR2(255 BYTE), 
    "MATURITY_REPORTING" VARCHAR2(255 BYTE), 
    "MATURITY_BUCKETS" VARCHAR2(255 BYTE), 
    "PAST_DUE_YN" VARCHAR2(255 BYTE),
    "PROVENIENZA" VARCHAR2(30 BYTE), 
    "USERUPD" VARCHAR2(30 BYTE), 
    "DATEUPD" DATE
) SEGMENT CREATION DEFERRED 
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS PARALLEL NOLOGGING;

CREATE INDEX IX_RB_STG_LOAN_01_UPD
ON RB_STG_LOAN_01 (MONTH_END_DATE, REPORTING_ENTITY, RB_ROWID, USERUPD)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;