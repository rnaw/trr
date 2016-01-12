-- RB_STG_LOAN
INSERT INTO RB_STG_LOAN_01
SELECT
	"RB_ROWID", 
	"MONTH_END_DATE", 
	"REPORTING_ENTITY", 
	"INSTRUMENT",
	"INTERCOMPANY", 
	"CALL_CODE", 
	"CALL_CODE_DESC", 
	"BASE_EQUIVALENT", 
	"PROD_GROUP_DESC", 
	"PROD_GROUP_TYPE_DESC", 
	"CUSTOMER_ID", 
	"CUSTOMER_NAME", 
	"CUSTOMER_TYPE", 
	"RELATED_DEP_INST_YESNO", 
	"PURPOSE_CODE", 
	"FOREIGN_DOMESTIC", 
	"CUST_PARENT_FOREIGN_DOMESTIC", 
	"COUNTRY_CODE", 
	"COUNTRY_DESC", 
	"RISK_COUNTRY", 
	"OPERATING_STATE", 
	"LOAN_USED_IN_STATE", 
	"BORROWER_COUNTY", 
	"LOAN_USED_IN_COUNTY", 
	"AFFL_CONSOL_NODE", 
	"DAY_COUNT_BASIS", 
	"SOURCE", 
	"HIGHLVL_PROD_CAT", 
	"GL_KEY_CODE", 
	"GL_KEY_CODE_DESC", 
	"PRINCIPAL_GL_US_GAAP_BASE_EQ", 
	"ACC_INT_GL_US_GAAP_BASE_EQ", 
	"DEF_FEES_GL_US_GAAP_BASE_EQ", 
	"UNEARN_FEES_GL_US_GAAP_BASE_EQ", 
	"SPCFC_RESRV_GL_US_GAAP_BASE_EQ", 
	"INT_INC_GL_US_GAAP_BASE_EQ", 
	"FEES_GL_US_GAAP_BASE_EQ", 
	"PRINCIPAL_GL_IFRS_BASE_EQ", 
	"ACC_INT_GL_IFRS_BASE_EQ", 
	"DEFERRED_FEES_GL_IFRS_BASE_EQ", 
	"UNEARNED_FEES_GL_IFRS_BASE_EQ", 
	"SPCFC_RESRV_GL_IFRS_BASE_EQ", 
	"INT_INC_GL_IFRS_BASE_EQ", 
	"FEES_GL_IFRS_BASE_EQ", 
	"UMD1", 
	"UMD2", 
	"UMD3", 
	"CONSOL_NODE", 
	"SUB_LE1", 
	"SUB_LE2", 
	"BUSINESS_UNIT", 
	"BUSINESS_LINE", 
	"CURRENCY_CODE", 
	"LEGAL_CUST_TOTAL_COMMIT", 
	"LEGAL_CUST_PRINC_FUNDED", 
	"LEGAL_CUST_UNFUNDED_COMMIT", 
	"LEGAL_CUST_INT_OWED", 
	"BANK_SHARE_PRINC_IFRS", 
	"BANK_SHARE_PRINC_US_GAAP", 
	"BANK_SHARE_TOTAL_COMMIT", 
	"BANK_SHARE_UNFUNDED_COMMIT", 
	"BANK_SPECIFIC_RESRV_US_GAAP", 
	"UNEARNED_FEES_US_GAAP", 
	"CHARGED_OFF_US_GAAP", 
	"CHARGED_OFF_IFRS", 
	"SPECIFIC_RESRV_IFRS", 
	"NON_ACC_INTEREST_DIFF_US_GAAP", 
	"INTEREST_APPLIED_PRINC_US_GAAP", 
	"NON_ACC_INTEREST_DIFF_IFRS", 
	"INTEREST_APPLLIED_PRINC_IFRS", 
	"UNEARNED_FEE_IFRS", 
	"LEDGER_ACCRUED_INTEREST_IFRS", 
	"LEDG_ACC_INTEREST_US_GAAP", 
	"INTEREST_PL_MTD_IFRS", 
	"INTEREST_PL_MTD_US_GAAP", 
	"INTEREST_PL_QTD_IFRS", 
	"INTEREST_PL_QTD_US_GAAP", 
	"INTEREST_PL_YTD_IFRS", 
	"INTEREST_PL_YTD_US_GAAP", 
	"ORIGINAL_PREMIUM_DISCOUNT", 
	"REMAINING_PREMIUM_DISCOUNT", 
	"ORIGINATION_DATE", 
	"MATURITY_DATE", 
	"ORIGINAL_INTEREST_RATE", 
	"REVOLVER_YN", 
	"RATE_EFFECTIVE_DATE", 
	"RATE_EXPIRATION_DATE", 
	"INTEREST_RATE", 
	"OVER_UNDER_RATE_INDEX", 
	"NOTE_CEILING_RATE", 
	"NOTE_FLOOR_RATE", 
	"NEXT_RATE_RESET_DATE", 
	"LAST_RATE_RESET_DATE", 
	"RATE_RESET_FREQUENCY", 
	"LAST_REPRICING_DATE", 
	"RB_INDEX", 
	"FIXED_OR_VARIABLE", 
	"BOOK_INDICATOR_HTM_OR_AFS", 
	"IF_AFS_THEN_FV_BALANCE", 
	"CUSTOMER_PARENT", 
	"AMORTIZATION_METHOD", 
	"COF_FTP_RATE", 
	"SPREAD", 
	"FED_CALL_CODE", 
	"ZIP_CODE", 
	"REAL_ESTATE_ZIP_CODE", 
	"PCT_OWNED", 
	"MATURITY_REPORTING", 
	"MATURITY_BUCKETS", 
	"PAST_DUE_YN",
	"PROVENIENZA", 
	"USERUPD", 
	"DATEUPD"
FROM
  RB_STG_LOAN
;
INSERT INTO RB_STG_LOAN_02
SELECT
	"RB_ROWID", 
	"MONTH_END_DATE", 
	"REPORTING_ENTITY",
	"NUMBER_OF_DAYS_PAST_DUE", 
	"RB_SECURED_DE", 
	"RB_ACCTG_METD_DESC", 
	"NON_ACCRUAL_YN", 
	"DATE_NON_ACCRUAL", 
	"TDR_YN", 
	"DATE_TDR", 
	"TDR_COMP_WITH_MOD_TERMS_YN", 
	"TDR_TYPE", 
	"GOVT_GUARANTEED_AGENCY", 
	"GOVT_GUARANTEED_PERCENTAGE", 
	"US_GAAP_RISK_RATING", 
	"IFRS_RISK_RATING", 
	"IN_PROCESS_OF_FORECLOSURE", 
	"ACQUIRED_IN_BUS_COMBINATION_YN", 
	"SOP03_3_ACCTNG_TREATMENT_YN", 
	"FV_LN_ACQ_IN_BUS_COMB_AT_ACQSN", 
	"GROSS_CNTRCT_AMT_REC_AT_ACQSN", 
	"ESTCNTRCL_CSFLW_NOEXPCTD2BCLTD", 
	"SYNDICATED_PARTICIPATED_LOAN", 
	"AGENT_PARTICIPANT", 
	"PORTION_OF_SYNDICATED_LOAN_HFS", 
	"UMD_3", 
	"UMD_4", 
	"UMD_5", 
	"CO_BORROWER_ID", 
	"CO_BORROWER_NAME", 
	"RELATIONSHIP_MANAGER_NAME", 
	"NAICS_CODE", 
	"NAICS_DESC", 
	"INDUSTRIES", 
	"RAPID_COLLATERAL_TYPE", 
	"FAC_LEVEL_LINK", 
	"RB_FAC_NAME", 
	"FACILITY_BORROWER_CIF", 
	"FACILITY_BORROWER_NAME", 
	"FACILITY_TRADE_ID", 
	"FAC_OUTSTANDING_AVAILABLE_AMT", 
	"FACILITY_LIMIT_AMOUNT", 
	"FACILITY_USED_AMOUNT", 
	"FACILITY_ORIGINAL_CURRENCY", 
	"FAC_OUTSTANDING_GL_ORI_CUR_AMT", 
	"FACILITY_START_DATE", 
	"FACILITY_END_DATE", 
	"LENDER_TYPE_DESC", 
	"GLOBAL_SECTOR", 
	"LOCAL_SECTOR", 
	"REGULATORY_RISK_RATING", 
	"VARIABLE_INTEREST_ENTITY", 
	"UMD_7", 
	"UMD_8", 
	"UMD_9", 
	"TRADE_ID", 
	"PROD_GROUP", 
	"ACBS_LENDER_TYPE", 
	"FED_CALL_CODE2", 
	"RESCOUNTRY_OF_CUSTOMER", 
	"CIF_TYPE", 
	"CIF_DESCRIPTION_PHOENIX", 
	"CODE_OF_PARENT_PHOENIX", 
	"DESC_OF_PARENT_PHOENIX", 
	"RESCOUNTRY_OF_PARENT", 
	"PORTFOLIO", 
	"PRODUCT_TYPE", 
	"IS_REPORTABLE_LOAN_YN", 
	"BU", 
	"ACCOUNT", 
	"PRODUCT", 
	"OPERATING_UNIT", 
	"DEPTID", 
	"AFFILIATE", 
	"OBU_AFFILIATE", 
	"CUST_CLASS", 
	"CODEBLOCK", 
	"DEFERRED_CODEBLOCK", 
	"RESERVE_CODEBLOCK", 
	"DESCRIPTION", 
	"FILLER_1", 
	"FILLER_2", 
	"FILLER_3", 
	"FILLER_4", 
	"FILLER_5", 
	"FILLER_6", 
	"FILLER_7", 
	"FILLER_8", 
	"FILLER_9", 
	"FILLER_10", 
	"FILLER_11", 
	"FILLER_12", 
	"FILLER_13", 
	"FILLER_14", 
	"FILLER_15", 
	"FILLER_16", 
	"FILLER_17", 
	"FILLER_18", 
	"FILLER_19", 
	"FILLER_20", 
	"FILLER_21", 
	"FILLER_22", 
	"FILLER_23", 
	"FILLER_24", 
	"FILLER_25", 
	"PROVENIENZA", 
	"USERUPD", 
	"DATEUPD"
FROM
  RB_STG_LOAN
;

-- RB_HST_LOAN
INSERT INTO RB_HST_LOAN_01
SELECT
	"RB_ROWID", 
	"MONTH_END_DATE", 
	"REPORTING_ENTITY", 
	"INSTRUMENT", 
	"INTERCOMPANY", 
	"CALL_CODE", 
	"CALL_CODE_DESC", 
	"BASE_EQUIVALENT", 
	"PROD_GROUP_DESC", 
	"PROD_GROUP_TYPE_DESC", 
	"CUSTOMER_ID", 
	"CUSTOMER_NAME", 
	"CUSTOMER_TYPE", 
	"RELATED_DEP_INST_YESNO", 
	"PURPOSE_CODE", 
	"FOREIGN_DOMESTIC", 
	"CUST_PARENT_FOREIGN_DOMESTIC", 
	"COUNTRY_CODE", 
	"COUNTRY_DESC", 
	"RISK_COUNTRY", 
	"OPERATING_STATE", 
	"LOAN_USED_IN_STATE", 
	"BORROWER_COUNTY", 
	"LOAN_USED_IN_COUNTY", 
	"AFFL_CONSOL_NODE", 
	"DAY_COUNT_BASIS", 
	"SOURCE", 
	"HIGHLVL_PROD_CAT", 
	"GL_KEY_CODE", 
	"GL_KEY_CODE_DESC", 
	"PRINCIPAL_GL_US_GAAP_BASE_EQ", 
	"ACC_INT_GL_US_GAAP_BASE_EQ", 
	"DEF_FEES_GL_US_GAAP_BASE_EQ", 
	"UNEARN_FEES_GL_US_GAAP_BASE_EQ", 
	"SPCFC_RESRV_GL_US_GAAP_BASE_EQ", 
	"INT_INC_GL_US_GAAP_BASE_EQ", 
	"FEES_GL_US_GAAP_BASE_EQ", 
	"PRINCIPAL_GL_IFRS_BASE_EQ", 
	"ACC_INT_GL_IFRS_BASE_EQ", 
	"DEFERRED_FEES_GL_IFRS_BASE_EQ", 
	"UNEARNED_FEES_GL_IFRS_BASE_EQ", 
	"SPCFC_RESRV_GL_IFRS_BASE_EQ", 
	"INT_INC_GL_IFRS_BASE_EQ", 
	"FEES_GL_IFRS_BASE_EQ", 
	"UMD1", 
	"UMD2", 
	"UMD3", 
	"CONSOL_NODE", 
	"SUB_LE1", 
	"SUB_LE2", 
	"BUSINESS_UNIT", 
	"BUSINESS_LINE", 
	"CURRENCY_CODE", 
	"LEGAL_CUST_TOTAL_COMMIT", 
	"LEGAL_CUST_PRINC_FUNDED", 
	"LEGAL_CUST_UNFUNDED_COMMIT", 
	"LEGAL_CUST_INT_OWED", 
	"BANK_SHARE_PRINC_IFRS", 
	"BANK_SHARE_PRINC_US_GAAP", 
	"BANK_SHARE_TOTAL_COMMIT", 
	"BANK_SHARE_UNFUNDED_COMMIT", 
	"BANK_SPECIFIC_RESRV_US_GAAP", 
	"UNEARNED_FEES_US_GAAP", 
	"CHARGED_OFF_US_GAAP", 
	"CHARGED_OFF_IFRS", 
	"SPECIFIC_RESRV_IFRS", 
	"NON_ACC_INTEREST_DIFF_US_GAAP", 
	"INTEREST_APPLIED_PRINC_US_GAAP", 
	"NON_ACC_INTEREST_DIFF_IFRS", 
	"INTEREST_APPLLIED_PRINC_IFRS", 
	"UNEARNED_FEE_IFRS", 
	"LEDGER_ACCRUED_INTEREST_IFRS", 
	"LEDG_ACC_INTEREST_US_GAAP", 
	"INTEREST_PL_MTD_IFRS", 
	"INTEREST_PL_MTD_US_GAAP", 
	"INTEREST_PL_QTD_IFRS", 
	"INTEREST_PL_QTD_US_GAAP", 
	"INTEREST_PL_YTD_IFRS", 
	"INTEREST_PL_YTD_US_GAAP", 
	"ORIGINAL_PREMIUM_DISCOUNT", 
	"REMAINING_PREMIUM_DISCOUNT", 
	"ORIGINATION_DATE", 
	"MATURITY_DATE", 
	"ORIGINAL_INTEREST_RATE", 
	"REVOLVER_YN", 
	"RATE_EFFECTIVE_DATE", 
	"RATE_EXPIRATION_DATE", 
	"INTEREST_RATE", 
	"OVER_UNDER_RATE_INDEX", 
	"NOTE_CEILING_RATE", 
	"NOTE_FLOOR_RATE", 
	"NEXT_RATE_RESET_DATE", 
	"LAST_RATE_RESET_DATE", 
	"RATE_RESET_FREQUENCY", 
	"LAST_REPRICING_DATE", 
	"RB_INDEX", 
	"FIXED_OR_VARIABLE", 
	"BOOK_INDICATOR_HTM_OR_AFS", 
	"IF_AFS_THEN_FV_BALANCE", 
	"CUSTOMER_PARENT", 
	"AMORTIZATION_METHOD", 
	"COF_FTP_RATE", 
	"SPREAD", 
	"FED_CALL_CODE", 
	"ZIP_CODE", 
	"REAL_ESTATE_ZIP_CODE", 
	"PCT_OWNED", 
	"MATURITY_REPORTING", 
	"MATURITY_BUCKETS", 
	"PAST_DUE_YN",
	"PROVENIENZA", 
	"USERUPD", 
	"DATEUPD"
FROM
  RB_HST_LOAN
;

INSERT INTO RB_HST_LOAN_02
SELECT
	"RB_ROWID", 
	"MONTH_END_DATE", 
	"REPORTING_ENTITY", 
	"NUMBER_OF_DAYS_PAST_DUE", 
	"RB_SECURED_DE", 
	"RB_ACCTG_METD_DESC", 
	"NON_ACCRUAL_YN", 
	"DATE_NON_ACCRUAL", 
	"TDR_YN", 
	"DATE_TDR", 
	"TDR_COMP_WITH_MOD_TERMS_YN", 
	"TDR_TYPE", 
	"GOVT_GUARANTEED_AGENCY", 
	"GOVT_GUARANTEED_PERCENTAGE", 
	"US_GAAP_RISK_RATING", 
	"IFRS_RISK_RATING", 
	"IN_PROCESS_OF_FORECLOSURE", 
	"ACQUIRED_IN_BUS_COMBINATION_YN", 
	"SOP03_3_ACCTNG_TREATMENT_YN", 
	"FV_LN_ACQ_IN_BUS_COMB_AT_ACQSN", 
	"GROSS_CNTRCT_AMT_REC_AT_ACQSN", 
	"ESTCNTRCL_CSFLW_NOEXPCTD2BCLTD", 
	"SYNDICATED_PARTICIPATED_LOAN", 
	"AGENT_PARTICIPANT", 
	"PORTION_OF_SYNDICATED_LOAN_HFS", 
	"UMD_3", 
	"UMD_4", 
	"UMD_5", 
	"CO_BORROWER_ID", 
	"CO_BORROWER_NAME", 
	"RELATIONSHIP_MANAGER_NAME", 
	"NAICS_CODE", 
	"NAICS_DESC", 
	"INDUSTRIES", 
	"RAPID_COLLATERAL_TYPE", 
	"FAC_LEVEL_LINK", 
	"RB_FAC_NAME", 
	"FACILITY_BORROWER_CIF", 
	"FACILITY_BORROWER_NAME", 
	"FACILITY_TRADE_ID", 
	"FAC_OUTSTANDING_AVAILABLE_AMT", 
	"FACILITY_LIMIT_AMOUNT", 
	"FACILITY_USED_AMOUNT", 
	"FACILITY_ORIGINAL_CURRENCY", 
	"FAC_OUTSTANDING_GL_ORI_CUR_AMT", 
	"FACILITY_START_DATE", 
	"FACILITY_END_DATE", 
	"LENDER_TYPE_DESC", 
	"GLOBAL_SECTOR", 
	"LOCAL_SECTOR", 
	"REGULATORY_RISK_RATING", 
	"VARIABLE_INTEREST_ENTITY", 
	"UMD_7", 
	"UMD_8", 
	"UMD_9", 
	"TRADE_ID", 
	"PROD_GROUP", 
	"ACBS_LENDER_TYPE", 
	"FED_CALL_CODE2", 
	"RESCOUNTRY_OF_CUSTOMER", 
	"CIF_TYPE", 
	"CIF_DESCRIPTION_PHOENIX", 
	"CODE_OF_PARENT_PHOENIX", 
	"DESC_OF_PARENT_PHOENIX", 
	"RESCOUNTRY_OF_PARENT", 
	"PORTFOLIO", 
	"PRODUCT_TYPE", 
	"IS_REPORTABLE_LOAN_YN", 
	"BU", 
	"ACCOUNT", 
	"PRODUCT", 
	"OPERATING_UNIT", 
	"DEPTID", 
	"AFFILIATE", 
	"OBU_AFFILIATE", 
	"CUST_CLASS", 
	"CODEBLOCK", 
	"DEFERRED_CODEBLOCK", 
	"RESERVE_CODEBLOCK", 
	"DESCRIPTION", 
	"FILLER_1", 
	"FILLER_2", 
	"FILLER_3", 
	"FILLER_4", 
	"FILLER_5", 
	"FILLER_6", 
	"FILLER_7", 
	"FILLER_8", 
	"FILLER_9", 
	"FILLER_10", 
	"FILLER_11", 
	"FILLER_12", 
	"FILLER_13", 
	"FILLER_14", 
	"FILLER_15", 
	"FILLER_16", 
	"FILLER_17", 
	"FILLER_18", 
	"FILLER_19", 
	"FILLER_20", 
	"FILLER_21", 
	"FILLER_22", 
	"FILLER_23", 
	"FILLER_24", 
	"FILLER_25", 
	"PROVENIENZA", 
	"USERUPD", 
	"DATEUPD"
FROM
  RB_HST_LOAN
;