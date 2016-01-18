SELECT
	A.COD_SCENARIO,
	A.COD_PERIODO,
	CGG.DESC_CONTO_ELEGER0 AS DESC_CONTO_ELEGER00,
	C.ATTRIBUTO5 AS LIN,
	CG.DESC_CONTO_ELEGER0,
	A.DATA_SOURCE,
	A.RB_ROWID,
  A.MONTH_END_DATE,
  A.REPORTING_ENTITY,
  A.INSTRUMENT,
  A.SOURCE,
  A.INTERCOMPANY,
  A.CALL_CODE,
  A.CALL_CODE_DESC,
  A.BASE_EQUIVALENT,
  A.PROD_GROUP_DESC,
  A.PROD_GROUP_TYPE_DESC,
  A.CUSTOMER_ID,
  A.CUSTOMER_NAME,
  A.CUSTOMER_TYPE,
  A.RELATED_DEP_INST_YESNO,
  A.PURPOSE_CODE,
  A.FOREIGN_DOMESTIC,
  A.CUST_PARENT_FOREIGN_DOMESTIC,
  A.COUNTRY_CODE,
  A.COUNTRY_DESC,
  A.RISK_COUNTRY,
  A.OPERATING_STATE,
  A.LOAN_USED_IN_STATE,
  A.BORROWER_COUNTY,
  A.LOAN_USED_IN_COUNTY,
  A.AFFL_CONSOL_NODE,
  A.DAY_COUNT_BASIS,
  A.HIGHLVL_PROD_CAT,
  A.GL_KEY_CODE,
  A.GL_KEY_CODE_DESC,
  A.PRINCIPAL_GL_US_GAAP_BASE_EQ,
  A.ACC_INT_GL_US_GAAP_BASE_EQ,
  A.DEF_FEES_GL_US_GAAP_BASE_EQ,
  A.UNEARN_FEES_GL_US_GAAP_BASE_EQ,
  A.SPCFC_RESRV_GL_US_GAAP_BASE_EQ,
  A.INT_INC_GL_US_GAAP_BASE_EQ,
  A.FEES_GL_US_GAAP_BASE_EQ,
  A.PRINCIPAL_GL_IFRS_BASE_EQ,
  A.ACC_INT_GL_IFRS_BASE_EQ,
  A.DEFERRED_FEES_GL_IFRS_BASE_EQ,
  A.UNEARNED_FEES_GL_IFRS_BASE_EQ,
  A.SPCFC_RESRV_GL_IFRS_BASE_EQ,
  A.INT_INC_GL_IFRS_BASE_EQ,
  A.FEES_GL_IFRS_BASE_EQ,
  A.UMD1,
  A.UMD2,
  A.UMD3,
  A.CONSOL_NODE,
  A.SUB_LE1,
  A.SUB_LE2,
  A.BUSINESS_UNIT,
  A.BUSINESS_LINE,
  A.CURRENCY_CODE,
  A.LEGAL_CUST_TOTAL_COMMIT,
  A.LEGAL_CUST_PRINC_FUNDED,
  A.LEGAL_CUST_UNFUNDED_COMMIT,
  A.LEGAL_CUST_INT_OWED,
  A.BANK_SHARE_PRINC_IFRS,
  A.BANK_SHARE_PRINC_US_GAAP,
  A.BANK_SHARE_TOTAL_COMMIT,
  A.BANK_SHARE_UNFUNDED_COMMIT,
  A.BANK_SPECIFIC_RESRV_US_GAAP,
  A.UNEARNED_FEES_US_GAAP,
  A.CHARGED_OFF_US_GAAP,
  A.CHARGED_OFF_IFRS,
  A.SPECIFIC_RESRV_IFRS,
  A.NON_ACC_INTEREST_DIFF_US_GAAP,
  A.INTEREST_APPLIED_PRINC_US_GAAP,
  A.NON_ACC_INTEREST_DIFF_IFRS,
  A.INTEREST_APPLLIED_PRINC_IFRS,
  A.UNEARNED_FEE_IFRS,
  A.LEDGER_ACCRUED_INTEREST_IFRS,
  A.LEDG_ACC_INTEREST_US_GAAP,
  A.INTEREST_PL_MTD_IFRS,
  A.INTEREST_PL_MTD_US_GAAP,
  A.INTEREST_PL_QTD_IFRS,
  A.INTEREST_PL_QTD_US_GAAP,
  A.INTEREST_PL_YTD_IFRS,
  A.INTEREST_PL_YTD_US_GAAP,
  A.ORIGINAL_PREMIUM_DISCOUNT,
  A.REMAINING_PREMIUM_DISCOUNT,
  A.ORIGINATION_DATE,
  A.MATURITY_DATE,
  A.ORIGINAL_INTEREST_RATE,
  A.REVOLVER_YN,
  A.RATE_EFFECTIVE_DATE,
  A.RATE_EXPIRATION_DATE,
  A.INTEREST_RATE,
  A.OVER_UNDER_RATE_INDEX,
  A.NOTE_CEILING_RATE,
  A.NOTE_FLOOR_RATE,
  A.NEXT_RATE_RESET_DATE,
  A.LAST_RATE_RESET_DATE,
  A.RATE_RESET_FREQUENCY,
  A.LAST_REPRICING_DATE,
  A.RB_INDEX,
  A.FIXED_OR_VARIABLE,
  A.BOOK_INDICATOR_HTM_OR_AFS,
  A.IF_AFS_THEN_FV_BALANCE,
  A.CUSTOMER_PARENT,
  A.AMORTIZATION_METHOD,
  A.COF_FTP_RATE,
  A.SPREAD,
  A.FED_CALL_CODE,
  A.ZIP_CODE,
  A.REAL_ESTATE_ZIP_CODE,
  A.PCT_OWNED,
  A.MATURITY_REPORTING,
  A.MATURITY_BUCKETS,
  A.PAST_DUE_YN,
  A.NUMBER_OF_DAYS_PAST_DUE,
  A.RB_SECURED_DE,
  A.RB_ACCTG_METD_DESC,
  A.NON_ACCRUAL_YN,
  A.DATE_NON_ACCRUAL,
  A.TDR_YN,
  A.DATE_TDR,
  A.TDR_COMP_WITH_MOD_TERMS_YN,
  A.TDR_TYPE,
  A.GOVT_GUARANTEED_AGENCY,
  A.GOVT_GUARANTEED_PERCENTAGE,
  A.US_GAAP_RISK_RATING,
  A.IFRS_RISK_RATING,
  A.IN_PROCESS_OF_FORECLOSURE,
  A.ACQUIRED_IN_BUS_COMBINATION_YN,
  A.SOP03_3_ACCTNG_TREATMENT_YN,
  A.FV_LN_ACQ_IN_BUS_COMB_AT_ACQSN,
  A.GROSS_CNTRCT_AMT_REC_AT_ACQSN,
  A.ESTCNTRCL_CSFLW_NOEXPCTD2BCLTD,
  A.SYNDICATED_PARTICIPATED_LOAN,
  A.AGENT_PARTICIPANT,
  A.PORTION_OF_SYNDICATED_LOAN_HFS,
  A.UMD_3,
  A.UMD_4,
  A.UMD_5,
  A.CO_BORROWER_ID,
  A.CO_BORROWER_NAME,
  A.RELATIONSHIP_MANAGER_NAME,
  A.NAICS_CODE,
  A.NAICS_DESC,
  A.INDUSTRIES,
  A.RAPID_COLLATERAL_TYPE,
  A.FAC_LEVEL_LINK,
  A.RB_FAC_NAME,
  A.FACILITY_BORROWER_CIF,
  A.FACILITY_BORROWER_NAME,
  A.FACILITY_TRADE_ID,
  A.FAC_OUTSTANDING_AVAILABLE_AMT,
  A.FACILITY_LIMIT_AMOUNT,
  A.FACILITY_USED_AMOUNT,
  A.FACILITY_ORIGINAL_CURRENCY,
  A.FAC_OUTSTANDING_GL_ORI_CUR_AMT,
  A.FACILITY_START_DATE,
  A.FACILITY_END_DATE,
  A.LENDER_TYPE_DESC,
  A.GLOBAL_SECTOR,
  A.LOCAL_SECTOR,
  A.REGULATORY_RISK_RATING,
  A.VARIABLE_INTEREST_ENTITY,
  A.UMD_7,
  A.UMD_8,
  A.UMD_9,
  A.TRADE_ID,
  A.PROD_GROUP,
  A.ACBS_LENDER_TYPE,
  A.FED_CALL_CODE2,
  A.RESCOUNTRY_OF_CUSTOMER,
  A.CIF_TYPE,
  A.CIF_DESCRIPTION_PHOENIX,
  A.CODE_OF_PARENT_PHOENIX,
  A.DESC_OF_PARENT_PHOENIX,
  A.RESCOUNTRY_OF_PARENT,
  A.PORTFOLIO,
  A.PRODUCT_TYPE,
  A.IS_REPORTABLE_LOAN_YN,
  A.BU,
  A.ACCOUNT,
  A.PRODUCT,
  A.OPERATING_UNIT,
  A.DEPTID,
  A.AFFILIATE,
  A.OBU_AFFILIATE,
  A.CUST_CLASS,
  A.CODEBLOCK,
  A.DEFERRED_CODEBLOCK,
  A.RESERVE_CODEBLOCK,
  A.DESCRIPTION
FROM 
(
	SELECT
		'ADJUSTMENTS' AS DATA_SOURCE,
		D.COD_CONTO AS COD_CONTO_REP,
		D.COD_SCENARIO,
		D.COD_PERIODO,
    NULL AS RB_ROWID,
		NULL AS MONTH_END_DATE,
    NULL AS REPORTING_ENTITY,
    NULL AS INSTRUMENT,
    NULL AS SOURCE,
    NULL AS INTERCOMPANY,
    D.COD_DEST5 AS CALL_CODE,
    NULL AS CALL_CODE_DESC,
    D.IMPORTO2 * 1000 AS BASE_EQUIVALENT,
    NULL AS PROD_GROUP_DESC,
    NULL AS PROD_GROUP_TYPE_DESC,
    NULL AS CUSTOMER_ID,
    NULL AS CUSTOMER_NAME,
    NULL AS CUSTOMER_TYPE,
    NULL AS RELATED_DEP_INST_YESNO,
    NULL AS PURPOSE_CODE,
    NULL AS FOREIGN_DOMESTIC,
    NULL AS CUST_PARENT_FOREIGN_DOMESTIC,
    NULL AS COUNTRY_CODE,
    NULL AS COUNTRY_DESC,
    NULL AS RISK_COUNTRY,
    NULL AS OPERATING_STATE,
    NULL AS LOAN_USED_IN_STATE,
    NULL AS BORROWER_COUNTY,
    NULL AS LOAN_USED_IN_COUNTY,
    NULL AS AFFL_CONSOL_NODE,
    NULL AS DAY_COUNT_BASIS,
    NULL AS HIGHLVL_PROD_CAT,
    NULL AS GL_KEY_CODE,
    NULL AS GL_KEY_CODE_DESC,
    NULL AS PRINCIPAL_GL_US_GAAP_BASE_EQ,
    NULL AS ACC_INT_GL_US_GAAP_BASE_EQ,
    NULL AS DEF_FEES_GL_US_GAAP_BASE_EQ,
    NULL AS UNEARN_FEES_GL_US_GAAP_BASE_EQ,
    NULL AS SPCFC_RESRV_GL_US_GAAP_BASE_EQ,
    NULL AS INT_INC_GL_US_GAAP_BASE_EQ,
    NULL AS FEES_GL_US_GAAP_BASE_EQ,
    NULL AS PRINCIPAL_GL_IFRS_BASE_EQ,
    NULL AS ACC_INT_GL_IFRS_BASE_EQ,
    NULL AS DEFERRED_FEES_GL_IFRS_BASE_EQ,
    NULL AS UNEARNED_FEES_GL_IFRS_BASE_EQ,
    NULL AS SPCFC_RESRV_GL_IFRS_BASE_EQ,
    NULL AS INT_INC_GL_IFRS_BASE_EQ,
    NULL AS FEES_GL_IFRS_BASE_EQ,
    NULL AS UMD1,
    NULL AS UMD2,
    NULL AS UMD3,
    NULL AS CONSOL_NODE,
    NULL AS SUB_LE1,
    NULL AS SUB_LE2,
    D.COD_AZIENDA AS BUSINESS_UNIT,
    NULL AS BUSINESS_LINE,
    D.COD_VALUTA2 AS CURRENCY_CODE,
    NULL AS LEGAL_CUST_TOTAL_COMMIT,
    NULL AS LEGAL_CUST_PRINC_FUNDED,
    NULL AS LEGAL_CUST_UNFUNDED_COMMIT,
    NULL AS LEGAL_CUST_INT_OWED,
    NULL AS BANK_SHARE_PRINC_IFRS,
    NULL AS BANK_SHARE_PRINC_US_GAAP,
    NULL AS BANK_SHARE_TOTAL_COMMIT,
    NULL AS BANK_SHARE_UNFUNDED_COMMIT,
    NULL AS BANK_SPECIFIC_RESRV_US_GAAP,
    NULL AS UNEARNED_FEES_US_GAAP,
    NULL AS CHARGED_OFF_US_GAAP,
    NULL AS CHARGED_OFF_IFRS,
    NULL AS SPECIFIC_RESRV_IFRS,
    NULL AS NON_ACC_INTEREST_DIFF_US_GAAP,
    NULL AS INTEREST_APPLIED_PRINC_US_GAAP,
    NULL AS NON_ACC_INTEREST_DIFF_IFRS,
    NULL AS INTEREST_APPLLIED_PRINC_IFRS,
    NULL AS UNEARNED_FEE_IFRS,
    NULL AS LEDGER_ACCRUED_INTEREST_IFRS,
    NULL AS LEDG_ACC_INTEREST_US_GAAP,
    NULL AS INTEREST_PL_MTD_IFRS,
    NULL AS INTEREST_PL_MTD_US_GAAP,
    NULL AS INTEREST_PL_QTD_IFRS,
    NULL AS INTEREST_PL_QTD_US_GAAP,
    NULL AS INTEREST_PL_YTD_IFRS,
    NULL AS INTEREST_PL_YTD_US_GAAP,
    NULL AS ORIGINAL_PREMIUM_DISCOUNT,
    NULL AS REMAINING_PREMIUM_DISCOUNT,
    NULL AS ORIGINATION_DATE,
    NULL AS MATURITY_DATE,
    NULL AS ORIGINAL_INTEREST_RATE,
    NULL AS REVOLVER_YN,
    NULL AS RATE_EFFECTIVE_DATE,
    NULL AS RATE_EXPIRATION_DATE,
    NULL AS INTEREST_RATE,
    NULL AS OVER_UNDER_RATE_INDEX,
    NULL AS NOTE_CEILING_RATE,
    NULL AS NOTE_FLOOR_RATE,
    NULL AS NEXT_RATE_RESET_DATE,
    NULL AS LAST_RATE_RESET_DATE,
    NULL AS RATE_RESET_FREQUENCY,
    NULL AS LAST_REPRICING_DATE,
    NULL AS RB_INDEX,
    NULL AS FIXED_OR_VARIABLE,
    NULL AS BOOK_INDICATOR_HTM_OR_AFS,
    NULL AS IF_AFS_THEN_FV_BALANCE,
    NULL AS CUSTOMER_PARENT,
    NULL AS AMORTIZATION_METHOD,
    NULL AS COF_FTP_RATE,
    NULL AS SPREAD,
    NULL AS FED_CALL_CODE,
    NULL AS ZIP_CODE,
    NULL AS REAL_ESTATE_ZIP_CODE,
    NULL AS PCT_OWNED,
    NULL AS MATURITY_REPORTING,
    NULL AS MATURITY_BUCKETS,
    NULL AS PAST_DUE_YN,
    NULL AS NUMBER_OF_DAYS_PAST_DUE,
    NULL AS RB_SECURED_DE,
    NULL AS RB_ACCTG_METD_DESC,
    NULL AS NON_ACCRUAL_YN,
    NULL AS DATE_NON_ACCRUAL,
    NULL AS TDR_YN,
    NULL AS DATE_TDR,
    NULL AS TDR_COMP_WITH_MOD_TERMS_YN,
    NULL AS TDR_TYPE,
    NULL AS GOVT_GUARANTEED_AGENCY,
    NULL AS GOVT_GUARANTEED_PERCENTAGE,
    NULL AS US_GAAP_RISK_RATING,
    NULL AS IFRS_RISK_RATING,
    NULL AS IN_PROCESS_OF_FORECLOSURE,
    NULL AS ACQUIRED_IN_BUS_COMBINATION_YN,
    NULL AS SOP03_3_ACCTNG_TREATMENT_YN,
    NULL AS FV_LN_ACQ_IN_BUS_COMB_AT_ACQSN,
    NULL AS GROSS_CNTRCT_AMT_REC_AT_ACQSN,
    NULL AS ESTCNTRCL_CSFLW_NOEXPCTD2BCLTD,
    NULL AS SYNDICATED_PARTICIPATED_LOAN,
    NULL AS AGENT_PARTICIPANT,
    NULL AS PORTION_OF_SYNDICATED_LOAN_HFS,
    NULL AS UMD_3,
    NULL AS UMD_4,
    NULL AS UMD_5,
    NULL AS CO_BORROWER_ID,
    NULL AS CO_BORROWER_NAME,
    NULL AS RELATIONSHIP_MANAGER_NAME,
    NULL AS NAICS_CODE,
    NULL AS NAICS_DESC,
    NULL AS INDUSTRIES,
    NULL AS RAPID_COLLATERAL_TYPE,
    NULL AS FAC_LEVEL_LINK,
    NULL AS RB_FAC_NAME,
    NULL AS FACILITY_BORROWER_CIF,
    NULL AS FACILITY_BORROWER_NAME,
    NULL AS FACILITY_TRADE_ID,
    NULL AS FAC_OUTSTANDING_AVAILABLE_AMT,
    NULL AS FACILITY_LIMIT_AMOUNT,
    NULL AS FACILITY_USED_AMOUNT,
    NULL AS FACILITY_ORIGINAL_CURRENCY,
    NULL AS FAC_OUTSTANDING_GL_ORI_CUR_AMT,
    NULL AS FACILITY_START_DATE,
    NULL AS FACILITY_END_DATE,
    NULL AS LENDER_TYPE_DESC,
    NULL AS GLOBAL_SECTOR,
    NULL AS LOCAL_SECTOR,
    NULL AS REGULATORY_RISK_RATING,
    NULL AS VARIABLE_INTEREST_ENTITY,
    NULL AS UMD_7,
    NULL AS UMD_8,
    NULL AS UMD_9,
    NULL AS TRADE_ID,
    NULL AS PROD_GROUP,
    NULL AS ACBS_LENDER_TYPE,
    NULL AS FED_CALL_CODE2,
    NULL AS RESCOUNTRY_OF_CUSTOMER,
    NULL AS CIF_TYPE,
    NULL AS CIF_DESCRIPTION_PHOENIX,
    NULL AS CODE_OF_PARENT_PHOENIX,
    NULL AS DESC_OF_PARENT_PHOENIX,
    NULL AS RESCOUNTRY_OF_PARENT,
    NULL AS PORTFOLIO,
    NULL AS PRODUCT_TYPE,
    NULL AS IS_REPORTABLE_LOAN_YN,
    NULL AS BU,
    NULL AS ACCOUNT,
    D.COD_DEST3 AS PRODUCT,
    CASE
			WHEN SUBSTR(D.COD_DEST2, 3) = 'BLC'
				THEN SUBSTR(D.COD_DEST2, 5)
			ELSE NULL
		END AS OPERATING_UNIT,
    CASE
			WHEN SUBSTR(D.COD_DEST2, 3) = 'DPT'
				THEN SUBSTR(D.COD_DEST2, 5)
			ELSE NULL
		END AS DEPTID,
    NULL AS AFFILIATE,
    NULL AS OBU_AFFILIATE,
    D.COD_DEST4 AS CUST_CLASS,
    NULL AS CODEBLOCK,
    NULL AS DEFERRED_CODEBLOCK,
    NULL AS RESERVE_CODEBLOCK,
    NULL AS DESCRIPTION
	FROM
		DATI_RETT_RIGA D
		INNER JOIN
		(
			SELECT DISTINCT
				DRILL.COD_SCENARIO,
				DRILL.COD_PERIODO,
				DRILL.COD_CONTO
			FROM
				RB_DRILL_INSTRUMENT DRILL
				INNER JOIN
				FORM_DATI FD
				ON
					DRILL.OID_FORM_DATI = FD.OID_FORM_DATI
			WHERE
				FD.COD_PROSPETTO = 'LOAN'
        AND DRILL.COD_AZIENDA IN (${$Entity.code})
		) DRILL
		ON
			D.COD_SCENARIO = DRILL.COD_SCENARIO
			AND D.COD_PERIODO = DRILL.COD_PERIODO
			AND D.COD_CONTO = DRILL.COD_CONTO
		LEFT OUTER JOIN
		DEST3 D3
		ON
			D.COD_DEST3 = D3.COD_DEST3
		LEFT OUTER JOIN
		AZIENDA A
		ON
			D.COD_AZIENDA = A.COD_AZIENDA
		LEFT OUTER JOIN
		AZIENDA ACTP
		ON
			D.COD_AZI_CTP = ACTP.COD_AZIENDA
	WHERE
		D.COD_SCENARIO IN (${$Scenario.code})
		AND D.COD_PERIODO IN (${$Period.code})
    AND D.COD_AZIENDA IN (${$Entity.code})
		AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 3) = ${A1}
		AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 4) = ${B1}
		AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 7) IS NULL
		AND D.COD_CATEGORIA IN ('ADJ_REP_R', 'ADJ_REP_NR')
	UNION ALL
	SELECT
		'ORIGINAL' AS DATA_SOURCE,
		A.COD_CONTO AS COD_CONTO_REP,
		B.COD_SCENARIO,
		B.COD_PERIODO,
    B.TESTO_49 AS RB_ROWID,
    LOAN.MONTH_END_DATE,
    LOAN.REPORTING_ENTITY,
    LOAN.INSTRUMENT,
    LOAN.SOURCE,
    LOAN.INTERCOMPANY,
    LOAN.CALL_CODE,
    LOAN.CALL_CODE_DESC,
    LOAN.BASE_EQUIVALENT,
    LOAN.PROD_GROUP_DESC,
    LOAN.PROD_GROUP_TYPE_DESC,
    LOAN.CUSTOMER_ID,
    LOAN.CUSTOMER_NAME,
    LOAN.CUSTOMER_TYPE,
    LOAN.RELATED_DEP_INST_YESNO,
    LOAN.PURPOSE_CODE,
    LOAN.FOREIGN_DOMESTIC,
    LOAN.CUST_PARENT_FOREIGN_DOMESTIC,
    LOAN.COUNTRY_CODE,
    LOAN.COUNTRY_DESC,
    LOAN.RISK_COUNTRY,
    LOAN.OPERATING_STATE,
    LOAN.LOAN_USED_IN_STATE,
    LOAN.BORROWER_COUNTY,
    LOAN.LOAN_USED_IN_COUNTY,
    LOAN.AFFL_CONSOL_NODE,
    LOAN.DAY_COUNT_BASIS,
    LOAN.HIGHLVL_PROD_CAT,
    LOAN.GL_KEY_CODE,
    LOAN.GL_KEY_CODE_DESC,
    LOAN.PRINCIPAL_GL_US_GAAP_BASE_EQ,
    LOAN.ACC_INT_GL_US_GAAP_BASE_EQ,
    LOAN.DEF_FEES_GL_US_GAAP_BASE_EQ,
    LOAN.UNEARN_FEES_GL_US_GAAP_BASE_EQ,
    LOAN.SPCFC_RESRV_GL_US_GAAP_BASE_EQ,
    LOAN.INT_INC_GL_US_GAAP_BASE_EQ,
    LOAN.FEES_GL_US_GAAP_BASE_EQ,
    LOAN.PRINCIPAL_GL_IFRS_BASE_EQ,
    LOAN.ACC_INT_GL_IFRS_BASE_EQ,
    LOAN.DEFERRED_FEES_GL_IFRS_BASE_EQ,
    LOAN.UNEARNED_FEES_GL_IFRS_BASE_EQ,
    LOAN.SPCFC_RESRV_GL_IFRS_BASE_EQ,
    LOAN.INT_INC_GL_IFRS_BASE_EQ,
    LOAN.FEES_GL_IFRS_BASE_EQ,
    LOAN.UMD1,
    LOAN.UMD2,
    LOAN.UMD3,
    LOAN.CONSOL_NODE,
    LOAN.SUB_LE1,
    LOAN.SUB_LE2,
    LOAN.BUSINESS_UNIT,
    LOAN.BUSINESS_LINE,
    LOAN.CURRENCY_CODE,
    LOAN.LEGAL_CUST_TOTAL_COMMIT,
    LOAN.LEGAL_CUST_PRINC_FUNDED,
    LOAN.LEGAL_CUST_UNFUNDED_COMMIT,
    LOAN.LEGAL_CUST_INT_OWED,
    LOAN.BANK_SHARE_PRINC_IFRS,
    LOAN.BANK_SHARE_PRINC_US_GAAP,
    LOAN.BANK_SHARE_TOTAL_COMMIT,
    LOAN.BANK_SHARE_UNFUNDED_COMMIT,
    LOAN.BANK_SPECIFIC_RESRV_US_GAAP,
    LOAN.UNEARNED_FEES_US_GAAP,
    LOAN.CHARGED_OFF_US_GAAP,
    LOAN.CHARGED_OFF_IFRS,
    LOAN.SPECIFIC_RESRV_IFRS,
    LOAN.NON_ACC_INTEREST_DIFF_US_GAAP,
    LOAN.INTEREST_APPLIED_PRINC_US_GAAP,
    LOAN.NON_ACC_INTEREST_DIFF_IFRS,
    LOAN.INTEREST_APPLLIED_PRINC_IFRS,
    LOAN.UNEARNED_FEE_IFRS,
    LOAN.LEDGER_ACCRUED_INTEREST_IFRS,
    LOAN.LEDG_ACC_INTEREST_US_GAAP,
    LOAN.INTEREST_PL_MTD_IFRS,
    LOAN.INTEREST_PL_MTD_US_GAAP,
    LOAN.INTEREST_PL_QTD_IFRS,
    LOAN.INTEREST_PL_QTD_US_GAAP,
    LOAN.INTEREST_PL_YTD_IFRS,
    LOAN.INTEREST_PL_YTD_US_GAAP,
    LOAN.ORIGINAL_PREMIUM_DISCOUNT,
    LOAN.REMAINING_PREMIUM_DISCOUNT,
    LOAN.ORIGINATION_DATE,
    LOAN.MATURITY_DATE,
    LOAN.ORIGINAL_INTEREST_RATE,
    LOAN.REVOLVER_YN,
    LOAN.RATE_EFFECTIVE_DATE,
    LOAN.RATE_EXPIRATION_DATE,
    LOAN.INTEREST_RATE,
    LOAN.OVER_UNDER_RATE_INDEX,
    LOAN.NOTE_CEILING_RATE,
    LOAN.NOTE_FLOOR_RATE,
    LOAN.NEXT_RATE_RESET_DATE,
    LOAN.LAST_RATE_RESET_DATE,
    LOAN.RATE_RESET_FREQUENCY,
    LOAN.LAST_REPRICING_DATE,
    LOAN.RB_INDEX,
    LOAN.FIXED_OR_VARIABLE,
    LOAN.BOOK_INDICATOR_HTM_OR_AFS,
    LOAN.IF_AFS_THEN_FV_BALANCE,
    LOAN.CUSTOMER_PARENT,
    LOAN.AMORTIZATION_METHOD,
    LOAN.COF_FTP_RATE,
    LOAN.SPREAD,
    LOAN.FED_CALL_CODE,
    LOAN.ZIP_CODE,
    LOAN.REAL_ESTATE_ZIP_CODE,
    LOAN.PCT_OWNED,
    LOAN.MATURITY_REPORTING,
    LOAN.MATURITY_BUCKETS,
    LOAN.PAST_DUE_YN,
    LOAN.NUMBER_OF_DAYS_PAST_DUE,
    LOAN.RB_SECURED_DE,
    LOAN.RB_ACCTG_METD_DESC,
    LOAN.NON_ACCRUAL_YN,
    LOAN.DATE_NON_ACCRUAL,
    LOAN.TDR_YN,
    LOAN.DATE_TDR,
    LOAN.TDR_COMP_WITH_MOD_TERMS_YN,
    LOAN.TDR_TYPE,
    LOAN.GOVT_GUARANTEED_AGENCY,
    LOAN.GOVT_GUARANTEED_PERCENTAGE,
    LOAN.US_GAAP_RISK_RATING,
    LOAN.IFRS_RISK_RATING,
    LOAN.IN_PROCESS_OF_FORECLOSURE,
    LOAN.ACQUIRED_IN_BUS_COMBINATION_YN,
    LOAN.SOP03_3_ACCTNG_TREATMENT_YN,
    LOAN.FV_LN_ACQ_IN_BUS_COMB_AT_ACQSN,
    LOAN.GROSS_CNTRCT_AMT_REC_AT_ACQSN,
    LOAN.ESTCNTRCL_CSFLW_NOEXPCTD2BCLTD,
    LOAN.SYNDICATED_PARTICIPATED_LOAN,
    LOAN.AGENT_PARTICIPANT,
    LOAN.PORTION_OF_SYNDICATED_LOAN_HFS,
    LOAN.UMD_3,
    LOAN.UMD_4,
    LOAN.UMD_5,
    LOAN.CO_BORROWER_ID,
    LOAN.CO_BORROWER_NAME,
    LOAN.RELATIONSHIP_MANAGER_NAME,
    LOAN.NAICS_CODE,
    LOAN.NAICS_DESC,
    LOAN.INDUSTRIES,
    LOAN.RAPID_COLLATERAL_TYPE,
    LOAN.FAC_LEVEL_LINK,
    LOAN.RB_FAC_NAME,
    LOAN.FACILITY_BORROWER_CIF,
    LOAN.FACILITY_BORROWER_NAME,
    LOAN.FACILITY_TRADE_ID,
    LOAN.FAC_OUTSTANDING_AVAILABLE_AMT,
    LOAN.FACILITY_LIMIT_AMOUNT,
    LOAN.FACILITY_USED_AMOUNT,
    LOAN.FACILITY_ORIGINAL_CURRENCY,
    LOAN.FAC_OUTSTANDING_GL_ORI_CUR_AMT,
    LOAN.FACILITY_START_DATE,
    LOAN.FACILITY_END_DATE,
    LOAN.LENDER_TYPE_DESC,
    LOAN.GLOBAL_SECTOR,
    LOAN.LOCAL_SECTOR,
    LOAN.REGULATORY_RISK_RATING,
    LOAN.VARIABLE_INTEREST_ENTITY,
    LOAN.UMD_7,
    LOAN.UMD_8,
    LOAN.UMD_9,
    LOAN.TRADE_ID,
    LOAN.PROD_GROUP,
    LOAN.ACBS_LENDER_TYPE,
    LOAN.FED_CALL_CODE2,
    LOAN.RESCOUNTRY_OF_CUSTOMER,
    LOAN.CIF_TYPE,
    LOAN.CIF_DESCRIPTION_PHOENIX,
    LOAN.CODE_OF_PARENT_PHOENIX,
    LOAN.DESC_OF_PARENT_PHOENIX,
    LOAN.RESCOUNTRY_OF_PARENT,
    LOAN.PORTFOLIO,
    LOAN.PRODUCT_TYPE,
    LOAN.IS_REPORTABLE_LOAN_YN,
    LOAN.BU,
    LOAN.ACCOUNT,
    LOAN.PRODUCT,
    LOAN.OPERATING_UNIT,
    LOAN.DEPTID,
    LOAN.AFFILIATE,
    LOAN.OBU_AFFILIATE,
    LOAN.CUST_CLASS,
    LOAN.CODEBLOCK,
    LOAN.DEFERRED_CODEBLOCK,
    LOAN.RESERVE_CODEBLOCK,
    LOAN.DESCRIPTION
	FROM
		RB_DRILL_INSTRUMENT A
		INNER JOIN
		FORM_DATI B
		ON
			A.OID_FORM_DATI = B.OID_FORM_DATI
		INNER JOIN
		(
			SELECT DISTINCT
				COD_SCENARIO,
				COD_PERIODO,
				COD_CONTO
			FROM
				DATI_SALDI_LORDI
			WHERE
				COD_CATEGORIA = 'ORI_REP'
				AND PROVENIENZA LIKE REPLACE(
CASE
WHEN
${B1} = 'RAL'
THEN
'MAP_REP_' || ${A1} || '_' || SUBSTR(${B1},1,2) || '_%'
ELSE
'MAP_REP_' || ${A1} || '_' || ${B1} || '_%'
END
, '-', '_')
        AND COD_AZIENDA IN (${$Entity.code})
		) C
		ON
			A.COD_SCENARIO = C.COD_SCENARIO
			AND A.COD_PERIODO = C.COD_PERIODO
			AND A.COD_CONTO = C.COD_CONTO
    INNER JOIN
    RB_V_LOAN LOAN
    ON
      B.DATA_1 = LOAN.MONTH_END_DATE
      AND B.TESTO_1 = LOAN.REPORTING_ENTITY
      AND B.TESTO_49 = CAST(LOAN.RB_ROWID AS VARCHAR(255))
		WHERE
			A.COD_SCENARIO IN (${$Scenario.code})
			AND A.COD_PERIODO IN (${$Period.code})
      AND A.COD_AZIENDA IN (${$Entity.code})
			AND A.PROVENIENZA LIKE REPLACE(
CASE
WHEN
${B1} = 'RAL'
THEN
'MAP_REP_' || ${A1} || '_' || SUBSTR(${B1},1,2) || '_%'
ELSE
'MAP_REP_' || ${A1} || '_' || ${B1} || '_%'
END
, '-', '_')
			AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 3) = ${A1}
			AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 4) = ${B1}
			AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 7) IS NULL
			AND A.COD_CATEGORIA IN ('ORI_REP')
			AND B.COD_PROSPETTO = 'LOAN'
  UNION ALL
  SELECT
		'ROUNDING' AS DATA_SOURCE,
		D.COD_CONTO AS COD_CONTO_REP,
		D.COD_SCENARIO,
		D.COD_PERIODO,
    NULL AS RB_ROWID,    
    NULL AS MONTH_END_DATE,
    NULL AS REPORTING_ENTITY,
    NULL AS INSTRUMENT,
    NULL AS SOURCE,
    NULL AS INTERCOMPANY,
    D.COD_DEST5 AS CALL_CODE,
    NULL AS CALL_CODE_DESC,
    D.IMPORTO * 1000 AS BASE_EQUIVALENT,
    NULL AS PROD_GROUP_DESC,
    NULL AS PROD_GROUP_TYPE_DESC,
    NULL AS CUSTOMER_ID,
    NULL AS CUSTOMER_NAME,
    NULL AS CUSTOMER_TYPE,
    NULL AS RELATED_DEP_INST_YESNO,
    NULL AS PURPOSE_CODE,
    NULL AS FOREIGN_DOMESTIC,
    NULL AS CUST_PARENT_FOREIGN_DOMESTIC,
    NULL AS COUNTRY_CODE,
    NULL AS COUNTRY_DESC,
    NULL AS RISK_COUNTRY,
    NULL AS OPERATING_STATE,
    NULL AS LOAN_USED_IN_STATE,
    NULL AS BORROWER_COUNTY,
    NULL AS LOAN_USED_IN_COUNTY,
    NULL AS AFFL_CONSOL_NODE,
    NULL AS DAY_COUNT_BASIS,
    NULL AS HIGHLVL_PROD_CAT,
    NULL AS GL_KEY_CODE,
    NULL AS GL_KEY_CODE_DESC,
    NULL AS PRINCIPAL_GL_US_GAAP_BASE_EQ,
    NULL AS ACC_INT_GL_US_GAAP_BASE_EQ,
    NULL AS DEF_FEES_GL_US_GAAP_BASE_EQ,
    NULL AS UNEARN_FEES_GL_US_GAAP_BASE_EQ,
    NULL AS SPCFC_RESRV_GL_US_GAAP_BASE_EQ,
    NULL AS INT_INC_GL_US_GAAP_BASE_EQ,
    NULL AS FEES_GL_US_GAAP_BASE_EQ,
    NULL AS PRINCIPAL_GL_IFRS_BASE_EQ,
    NULL AS ACC_INT_GL_IFRS_BASE_EQ,
    NULL AS DEFERRED_FEES_GL_IFRS_BASE_EQ,
    NULL AS UNEARNED_FEES_GL_IFRS_BASE_EQ,
    NULL AS SPCFC_RESRV_GL_IFRS_BASE_EQ,
    NULL AS INT_INC_GL_IFRS_BASE_EQ,
    NULL AS FEES_GL_IFRS_BASE_EQ,
    NULL AS UMD1,
    NULL AS UMD2,
    NULL AS UMD3,
    NULL AS CONSOL_NODE,
    NULL AS SUB_LE1,
    NULL AS SUB_LE2,
    D.COD_AZIENDA AS BUSINESS_UNIT,
    NULL AS BUSINESS_LINE,
    D.COD_VALUTA_ORIGINARIA AS CURRENCY_CODE,
    NULL AS LEGAL_CUST_TOTAL_COMMIT,
    NULL AS LEGAL_CUST_PRINC_FUNDED,
    NULL AS LEGAL_CUST_UNFUNDED_COMMIT,
    NULL AS LEGAL_CUST_INT_OWED,
    NULL AS BANK_SHARE_PRINC_IFRS,
    NULL AS BANK_SHARE_PRINC_US_GAAP,
    NULL AS BANK_SHARE_TOTAL_COMMIT,
    NULL AS BANK_SHARE_UNFUNDED_COMMIT,
    NULL AS BANK_SPECIFIC_RESRV_US_GAAP,
    NULL AS UNEARNED_FEES_US_GAAP,
    NULL AS CHARGED_OFF_US_GAAP,
    NULL AS CHARGED_OFF_IFRS,
    NULL AS SPECIFIC_RESRV_IFRS,
    NULL AS NON_ACC_INTEREST_DIFF_US_GAAP,
    NULL AS INTEREST_APPLIED_PRINC_US_GAAP,
    NULL AS NON_ACC_INTEREST_DIFF_IFRS,
    NULL AS INTEREST_APPLLIED_PRINC_IFRS,
    NULL AS UNEARNED_FEE_IFRS,
    NULL AS LEDGER_ACCRUED_INTEREST_IFRS,
    NULL AS LEDG_ACC_INTEREST_US_GAAP,
    NULL AS INTEREST_PL_MTD_IFRS,
    NULL AS INTEREST_PL_MTD_US_GAAP,
    NULL AS INTEREST_PL_QTD_IFRS,
    NULL AS INTEREST_PL_QTD_US_GAAP,
    NULL AS INTEREST_PL_YTD_IFRS,
    NULL AS INTEREST_PL_YTD_US_GAAP,
    NULL AS ORIGINAL_PREMIUM_DISCOUNT,
    NULL AS REMAINING_PREMIUM_DISCOUNT,
    NULL AS ORIGINATION_DATE,
    NULL AS MATURITY_DATE,
    NULL AS ORIGINAL_INTEREST_RATE,
    NULL AS REVOLVER_YN,
    NULL AS RATE_EFFECTIVE_DATE,
    NULL AS RATE_EXPIRATION_DATE,
    NULL AS INTEREST_RATE,
    NULL AS OVER_UNDER_RATE_INDEX,
    NULL AS NOTE_CEILING_RATE,
    NULL AS NOTE_FLOOR_RATE,
    NULL AS NEXT_RATE_RESET_DATE,
    NULL AS LAST_RATE_RESET_DATE,
    NULL AS RATE_RESET_FREQUENCY,
    NULL AS LAST_REPRICING_DATE,
    NULL AS RB_INDEX,
    NULL AS FIXED_OR_VARIABLE,
    NULL AS BOOK_INDICATOR_HTM_OR_AFS,
    NULL AS IF_AFS_THEN_FV_BALANCE,
    NULL AS CUSTOMER_PARENT,
    NULL AS AMORTIZATION_METHOD,
    NULL AS COF_FTP_RATE,
    NULL AS SPREAD,
    NULL AS FED_CALL_CODE,
    NULL AS ZIP_CODE,
    NULL AS REAL_ESTATE_ZIP_CODE,
    NULL AS PCT_OWNED,
    NULL AS MATURITY_REPORTING,
    NULL AS MATURITY_BUCKETS,
    NULL AS PAST_DUE_YN,
    NULL AS NUMBER_OF_DAYS_PAST_DUE,
    NULL AS RB_SECURED_DE,
    NULL AS RB_ACCTG_METD_DESC,
    NULL AS NON_ACCRUAL_YN,
    NULL AS DATE_NON_ACCRUAL,
    NULL AS TDR_YN,
    NULL AS DATE_TDR,
    NULL AS TDR_COMP_WITH_MOD_TERMS_YN,
    NULL AS TDR_TYPE,
    NULL AS GOVT_GUARANTEED_AGENCY,
    NULL AS GOVT_GUARANTEED_PERCENTAGE,
    NULL AS US_GAAP_RISK_RATING,
    NULL AS IFRS_RISK_RATING,
    NULL AS IN_PROCESS_OF_FORECLOSURE,
    NULL AS ACQUIRED_IN_BUS_COMBINATION_YN,
    NULL AS SOP03_3_ACCTNG_TREATMENT_YN,
    NULL AS FV_LN_ACQ_IN_BUS_COMB_AT_ACQSN,
    NULL AS GROSS_CNTRCT_AMT_REC_AT_ACQSN,
    NULL AS ESTCNTRCL_CSFLW_NOEXPCTD2BCLTD,
    NULL AS SYNDICATED_PARTICIPATED_LOAN,
    NULL AS AGENT_PARTICIPANT,
    NULL AS PORTION_OF_SYNDICATED_LOAN_HFS,
    NULL AS UMD_3,
    NULL AS UMD_4,
    NULL AS UMD_5,
    NULL AS CO_BORROWER_ID,
    NULL AS CO_BORROWER_NAME,
    NULL AS RELATIONSHIP_MANAGER_NAME,
    NULL AS NAICS_CODE,
    NULL AS NAICS_DESC,
    NULL AS INDUSTRIES,
    NULL AS RAPID_COLLATERAL_TYPE,
    NULL AS FAC_LEVEL_LINK,
    NULL AS RB_FAC_NAME,
    NULL AS FACILITY_BORROWER_CIF,
    NULL AS FACILITY_BORROWER_NAME,
    NULL AS FACILITY_TRADE_ID,
    NULL AS FAC_OUTSTANDING_AVAILABLE_AMT,
    NULL AS FACILITY_LIMIT_AMOUNT,
    NULL AS FACILITY_USED_AMOUNT,
    NULL AS FACILITY_ORIGINAL_CURRENCY,
    NULL AS FAC_OUTSTANDING_GL_ORI_CUR_AMT,
    NULL AS FACILITY_START_DATE,
    NULL AS FACILITY_END_DATE,
    NULL AS LENDER_TYPE_DESC,
    NULL AS GLOBAL_SECTOR,
    NULL AS LOCAL_SECTOR,
    NULL AS REGULATORY_RISK_RATING,
    NULL AS VARIABLE_INTEREST_ENTITY,
    NULL AS UMD_7,
    NULL AS UMD_8,
    NULL AS UMD_9,
    NULL AS TRADE_ID,
    NULL AS PROD_GROUP,
    NULL AS ACBS_LENDER_TYPE,
    NULL AS FED_CALL_CODE2,
    NULL AS RESCOUNTRY_OF_CUSTOMER,
    NULL AS CIF_TYPE,
    NULL AS CIF_DESCRIPTION_PHOENIX,
    NULL AS CODE_OF_PARENT_PHOENIX,
    NULL AS DESC_OF_PARENT_PHOENIX,
    NULL AS RESCOUNTRY_OF_PARENT,
    NULL AS PORTFOLIO,
    NULL AS PRODUCT_TYPE,
    NULL AS IS_REPORTABLE_LOAN_YN,
    NULL AS BU,
    NULL AS ACCOUNT,
    D.COD_DEST3 AS PRODUCT,
    CASE
			WHEN SUBSTR(D.COD_DEST2, 3) = 'BLC'
				THEN SUBSTR(D.COD_DEST2, 5)
			ELSE NULL
		END AS OPERATING_UNIT,
    CASE
			WHEN SUBSTR(D.COD_DEST2, 3) = 'DPT'
				THEN SUBSTR(D.COD_DEST2, 5)
			ELSE NULL
		END AS DEPTID,
    NULL AS AFFILIATE,
    NULL AS OBU_AFFILIATE,
    D.COD_DEST4 AS CUST_CLASS,
    NULL AS CODEBLOCK,
    NULL AS DEFERRED_CODEBLOCK,
    NULL AS RESERVE_CODEBLOCK,
    NULL AS DESCRIPTION
	FROM
		DATI_SALDI_LORDI D
		INNER JOIN
		(
			SELECT DISTINCT
				DRILL.COD_SCENARIO,
				DRILL.COD_PERIODO,
				DRILL.COD_CONTO
			FROM
				RB_DRILL_INSTRUMENT DRILL
				INNER JOIN
				FORM_DATI FD
				ON
					DRILL.OID_FORM_DATI = FD.OID_FORM_DATI
			WHERE
				FD.COD_PROSPETTO = 'LOAN'
        AND DRILL.COD_AZIENDA IN (${$Entity.code})
		) DRILL
		ON
			D.COD_SCENARIO = DRILL.COD_SCENARIO
			AND D.COD_PERIODO = DRILL.COD_PERIODO
			AND D.COD_CONTO = DRILL.COD_CONTO
		LEFT OUTER JOIN
		DEST3 D3
		ON
			D.COD_DEST3 = D3.COD_DEST3
		LEFT OUTER JOIN
		AZIENDA A
		ON
			D.COD_AZIENDA = A.COD_AZIENDA
	WHERE
		D.COD_SCENARIO IN (${$Scenario.code})
		AND D.COD_PERIODO IN (${$Period.code})
    AND D.COD_AZIENDA IN (${$Entity.code})
		AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 3) = ${A1}
		AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 4) = ${B1}
		AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 7) IS NULL
		AND D.COD_CATEGORIA IN ('ORI_REP')
		AND D.PROVENIENZA = 'PROC_BALANCING'
  UNION ALL
  SELECT
		'OVERWRITE' AS DATA_SOURCE,
		D.COD_CONTO AS COD_CONTO_REP,
		D.COD_SCENARIO,
		D.COD_PERIODO,
    NULL AS RB_ROWID,
		NULL AS MONTH_END_DATE,
    NULL AS REPORTING_ENTITY,
    NULL AS INSTRUMENT,
    NULL AS SOURCE,
    NULL AS INTERCOMPANY,
    D.COD_DEST5 AS CALL_CODE,
    NULL AS CALL_CODE_DESC,
    D.IMPORTO * 1000 AS BASE_EQUIVALENT,
    NULL AS PROD_GROUP_DESC,
    NULL AS PROD_GROUP_TYPE_DESC,
    NULL AS CUSTOMER_ID,
    NULL AS CUSTOMER_NAME,
    NULL AS CUSTOMER_TYPE,
    NULL AS RELATED_DEP_INST_YESNO,
    NULL AS PURPOSE_CODE,
    NULL AS FOREIGN_DOMESTIC,
    NULL AS CUST_PARENT_FOREIGN_DOMESTIC,
    NULL AS COUNTRY_CODE,
    NULL AS COUNTRY_DESC,
    NULL AS RISK_COUNTRY,
    NULL AS OPERATING_STATE,
    NULL AS LOAN_USED_IN_STATE,
    NULL AS BORROWER_COUNTY,
    NULL AS LOAN_USED_IN_COUNTY,
    NULL AS AFFL_CONSOL_NODE,
    NULL AS DAY_COUNT_BASIS,
    NULL AS HIGHLVL_PROD_CAT,
    NULL AS GL_KEY_CODE,
    NULL AS GL_KEY_CODE_DESC,
    NULL AS PRINCIPAL_GL_US_GAAP_BASE_EQ,
    NULL AS ACC_INT_GL_US_GAAP_BASE_EQ,
    NULL AS DEF_FEES_GL_US_GAAP_BASE_EQ,
    NULL AS UNEARN_FEES_GL_US_GAAP_BASE_EQ,
    NULL AS SPCFC_RESRV_GL_US_GAAP_BASE_EQ,
    NULL AS INT_INC_GL_US_GAAP_BASE_EQ,
    NULL AS FEES_GL_US_GAAP_BASE_EQ,
    NULL AS PRINCIPAL_GL_IFRS_BASE_EQ,
    NULL AS ACC_INT_GL_IFRS_BASE_EQ,
    NULL AS DEFERRED_FEES_GL_IFRS_BASE_EQ,
    NULL AS UNEARNED_FEES_GL_IFRS_BASE_EQ,
    NULL AS SPCFC_RESRV_GL_IFRS_BASE_EQ,
    NULL AS INT_INC_GL_IFRS_BASE_EQ,
    NULL AS FEES_GL_IFRS_BASE_EQ,
    NULL AS UMD1,
    NULL AS UMD2,
    NULL AS UMD3,
    NULL AS CONSOL_NODE,
    NULL AS SUB_LE1,
    NULL AS SUB_LE2,
    D.COD_AZIENDA AS BUSINESS_UNIT,
    NULL AS BUSINESS_LINE,
    D.COD_VALUTA_ORIGINARIA AS CURRENCY_CODE,
    NULL AS LEGAL_CUST_TOTAL_COMMIT,
    NULL AS LEGAL_CUST_PRINC_FUNDED,
    NULL AS LEGAL_CUST_UNFUNDED_COMMIT,
    NULL AS LEGAL_CUST_INT_OWED,
    NULL AS BANK_SHARE_PRINC_IFRS,
    NULL AS BANK_SHARE_PRINC_US_GAAP,
    NULL AS BANK_SHARE_TOTAL_COMMIT,
    NULL AS BANK_SHARE_UNFUNDED_COMMIT,
    NULL AS BANK_SPECIFIC_RESRV_US_GAAP,
    NULL AS UNEARNED_FEES_US_GAAP,
    NULL AS CHARGED_OFF_US_GAAP,
    NULL AS CHARGED_OFF_IFRS,
    NULL AS SPECIFIC_RESRV_IFRS,
    NULL AS NON_ACC_INTEREST_DIFF_US_GAAP,
    NULL AS INTEREST_APPLIED_PRINC_US_GAAP,
    NULL AS NON_ACC_INTEREST_DIFF_IFRS,
    NULL AS INTEREST_APPLLIED_PRINC_IFRS,
    NULL AS UNEARNED_FEE_IFRS,
    NULL AS LEDGER_ACCRUED_INTEREST_IFRS,
    NULL AS LEDG_ACC_INTEREST_US_GAAP,
    NULL AS INTEREST_PL_MTD_IFRS,
    NULL AS INTEREST_PL_MTD_US_GAAP,
    NULL AS INTEREST_PL_QTD_IFRS,
    NULL AS INTEREST_PL_QTD_US_GAAP,
    NULL AS INTEREST_PL_YTD_IFRS,
    NULL AS INTEREST_PL_YTD_US_GAAP,
    NULL AS ORIGINAL_PREMIUM_DISCOUNT,
    NULL AS REMAINING_PREMIUM_DISCOUNT,
    NULL AS ORIGINATION_DATE,
    NULL AS MATURITY_DATE,
    NULL AS ORIGINAL_INTEREST_RATE,
    NULL AS REVOLVER_YN,
    NULL AS RATE_EFFECTIVE_DATE,
    NULL AS RATE_EXPIRATION_DATE,
    NULL AS INTEREST_RATE,
    NULL AS OVER_UNDER_RATE_INDEX,
    NULL AS NOTE_CEILING_RATE,
    NULL AS NOTE_FLOOR_RATE,
    NULL AS NEXT_RATE_RESET_DATE,
    NULL AS LAST_RATE_RESET_DATE,
    NULL AS RATE_RESET_FREQUENCY,
    NULL AS LAST_REPRICING_DATE,
    NULL AS RB_INDEX,
    NULL AS FIXED_OR_VARIABLE,
    NULL AS BOOK_INDICATOR_HTM_OR_AFS,
    NULL AS IF_AFS_THEN_FV_BALANCE,
    NULL AS CUSTOMER_PARENT,
    NULL AS AMORTIZATION_METHOD,
    NULL AS COF_FTP_RATE,
    NULL AS SPREAD,
    NULL AS FED_CALL_CODE,
    NULL AS ZIP_CODE,
    NULL AS REAL_ESTATE_ZIP_CODE,
    NULL AS PCT_OWNED,
    NULL AS MATURITY_REPORTING,
    NULL AS MATURITY_BUCKETS,
    NULL AS PAST_DUE_YN,
    NULL AS NUMBER_OF_DAYS_PAST_DUE,
    NULL AS RB_SECURED_DE,
    NULL AS RB_ACCTG_METD_DESC,
    NULL AS NON_ACCRUAL_YN,
    NULL AS DATE_NON_ACCRUAL,
    NULL AS TDR_YN,
    NULL AS DATE_TDR,
    NULL AS TDR_COMP_WITH_MOD_TERMS_YN,
    NULL AS TDR_TYPE,
    NULL AS GOVT_GUARANTEED_AGENCY,
    NULL AS GOVT_GUARANTEED_PERCENTAGE,
    NULL AS US_GAAP_RISK_RATING,
    NULL AS IFRS_RISK_RATING,
    NULL AS IN_PROCESS_OF_FORECLOSURE,
    NULL AS ACQUIRED_IN_BUS_COMBINATION_YN,
    NULL AS SOP03_3_ACCTNG_TREATMENT_YN,
    NULL AS FV_LN_ACQ_IN_BUS_COMB_AT_ACQSN,
    NULL AS GROSS_CNTRCT_AMT_REC_AT_ACQSN,
    NULL AS ESTCNTRCL_CSFLW_NOEXPCTD2BCLTD,
    NULL AS SYNDICATED_PARTICIPATED_LOAN,
    NULL AS AGENT_PARTICIPANT,
    NULL AS PORTION_OF_SYNDICATED_LOAN_HFS,
    NULL AS UMD_3,
    NULL AS UMD_4,
    NULL AS UMD_5,
    NULL AS CO_BORROWER_ID,
    NULL AS CO_BORROWER_NAME,
    NULL AS RELATIONSHIP_MANAGER_NAME,
    NULL AS NAICS_CODE,
    NULL AS NAICS_DESC,
    NULL AS INDUSTRIES,
    NULL AS RAPID_COLLATERAL_TYPE,
    NULL AS FAC_LEVEL_LINK,
    NULL AS RB_FAC_NAME,
    NULL AS FACILITY_BORROWER_CIF,
    NULL AS FACILITY_BORROWER_NAME,
    NULL AS FACILITY_TRADE_ID,
    NULL AS FAC_OUTSTANDING_AVAILABLE_AMT,
    NULL AS FACILITY_LIMIT_AMOUNT,
    NULL AS FACILITY_USED_AMOUNT,
    NULL AS FACILITY_ORIGINAL_CURRENCY,
    NULL AS FAC_OUTSTANDING_GL_ORI_CUR_AMT,
    NULL AS FACILITY_START_DATE,
    NULL AS FACILITY_END_DATE,
    NULL AS LENDER_TYPE_DESC,
    NULL AS GLOBAL_SECTOR,
    NULL AS LOCAL_SECTOR,
    NULL AS REGULATORY_RISK_RATING,
    NULL AS VARIABLE_INTEREST_ENTITY,
    NULL AS UMD_7,
    NULL AS UMD_8,
    NULL AS UMD_9,
    NULL AS TRADE_ID,
    NULL AS PROD_GROUP,
    NULL AS ACBS_LENDER_TYPE,
    NULL AS FED_CALL_CODE2,
    NULL AS RESCOUNTRY_OF_CUSTOMER,
    NULL AS CIF_TYPE,
    NULL AS CIF_DESCRIPTION_PHOENIX,
    NULL AS CODE_OF_PARENT_PHOENIX,
    NULL AS DESC_OF_PARENT_PHOENIX,
    NULL AS RESCOUNTRY_OF_PARENT,
    NULL AS PORTFOLIO,
    NULL AS PRODUCT_TYPE,
    NULL AS IS_REPORTABLE_LOAN_YN,
    NULL AS BU,
    NULL AS ACCOUNT,
    D.COD_DEST3 AS PRODUCT,
    CASE
			WHEN SUBSTR(D.COD_DEST2, 3) = 'BLC'
				THEN SUBSTR(D.COD_DEST2, 5)
			ELSE NULL
		END AS OPERATING_UNIT,
    CASE
			WHEN SUBSTR(D.COD_DEST2, 3) = 'DPT'
				THEN SUBSTR(D.COD_DEST2, 5)
			ELSE NULL
		END AS DEPTID,
    NULL AS AFFILIATE,
    NULL AS OBU_AFFILIATE,
    D.COD_DEST4 AS CUST_CLASS,
    NULL AS CODEBLOCK,
    NULL AS DEFERRED_CODEBLOCK,
    NULL AS RESERVE_CODEBLOCK,
    NULL AS DESCRIPTION
	FROM
		DATI_SALDI_LORDI D
		INNER JOIN
		(
			SELECT DISTINCT
				DRILL.COD_SCENARIO,
				DRILL.COD_PERIODO,
				DRILL.COD_CONTO
			FROM
				RB_DRILL_INSTRUMENT DRILL
				INNER JOIN
				FORM_DATI FD
				ON
					DRILL.OID_FORM_DATI = FD.OID_FORM_DATI
			WHERE
				FD.COD_PROSPETTO = 'LOAN'
        AND DRILL.COD_AZIENDA IN (${$Entity.code})
		) DRILL
		ON
			D.COD_SCENARIO = DRILL.COD_SCENARIO
			AND D.COD_PERIODO = DRILL.COD_PERIODO
			AND D.COD_CONTO = DRILL.COD_CONTO
		LEFT OUTER JOIN
		DEST3 D3
		ON
			D.COD_DEST3 = D3.COD_DEST3
		LEFT OUTER JOIN
		AZIENDA A
		ON
			D.COD_AZIENDA = A.COD_AZIENDA
	WHERE
		D.COD_SCENARIO IN (${$Scenario.code})
		AND D.COD_PERIODO IN (${$Period.code})
    AND D.COD_AZIENDA IN (${$Entity.code})
		AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 3) = ${A1}
		AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 4) = ${B1}
		AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 7) IS NULL
		AND D.COD_CATEGORIA = 'ORI_REP'
		AND D.PROVENIENZA NOT LIKE REPLACE(
CASE
WHEN
${B1} = 'RAL'
THEN
'MAP_REP_' || ${A1} || '_' || SUBSTR(${B1},1,2) || '_%'
ELSE
'MAP_REP_' || ${A1} || '_' || ${B1} || '_%'
END
, '-', '_')
		AND D.PROVENIENZA <> 'PROC_BALANCING'
) A
LEFT OUTER JOIN
CONTO_GERARCHIA CG
ON
  RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO_REP, 'RE', 6) = CG.COD_CONTO_ELEGER
LEFT OUTER JOIN
CONTO_GERARCHIA CGG
ON
  RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO_REP, 'RE', 5) = CGG.COD_CONTO_ELEGER
LEFT OUTER JOIN
CONTO C
ON
  A.COD_CONTO_REP = C.COD_CONTO
WHERE
    CG.COD_CONTO_GERARCHIA = 'RE'
    AND CGG.COD_CONTO_GERARCHIA = 'RE'
ORDER BY
	CGG.DESC_CONTO_ELEGER0 ASC,
	C.ATTRIBUTO5 ASC,
	CG.DESC_CONTO_ELEGER0 ASC,
	CASE
		WHEN A.MONTH_END_DATE IS NOT NULL
			THEN TO_CHAR(MONTH_END_DATE, 'MMDDYYYY')
		ELSE A.COD_SCENARIO
	END ASC,
	CASE
		WHEN A.MONTH_END_DATE IS NOT NULL
			THEN TO_CHAR(MONTH_END_DATE, 'MMDDYYYY')
		ELSE A.COD_PERIODO
	END ASC,
	A.DATA_SOURCE DESC,
	A.RB_ROWID,	
	A.REPORTING_ENTITY,
	A.INSTRUMENT,
	A.SOURCE