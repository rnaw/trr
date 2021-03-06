SELECT 
  COALESCE(A.REPORTING_ENTITY, P.REPORTING_ENTITY) AS REPORTING_ENTITY,
  COALESCE(A.INSTRUMENT, P.INSTRUMENT) AS INSTRUMENT,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.INTERCOMPANY <> P.INTERCOMPANY
          OR A.INTERCOMPANY IS NULL AND P.INTERCOMPANY IS NOT NULL
          OR A.INTERCOMPANY IS NOT NULL AND P.INTERCOMPANY IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS INTERCOMPANY,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.CALL_CODE <> P.CALL_CODE
          OR A.CALL_CODE IS NULL AND P.CALL_CODE IS NOT NULL
          OR A.CALL_CODE IS NOT NULL AND P.CALL_CODE IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS CALL_CODE,
  COALESCE(A.BASE_EQUIVALENT, 0) - COALESCE(P.BASE_EQUIVALENT, 0) AS BASE_EQUIVALENT,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.CUSTOMER_ID <> P.CUSTOMER_ID
          OR A.CUSTOMER_ID IS NULL AND P.CUSTOMER_ID IS NOT NULL
          OR A.CUSTOMER_ID IS NOT NULL AND P.CUSTOMER_ID IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS CUSTOMER_ID,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.CUSTOMER_NAME <> P.CUSTOMER_NAME
          OR A.CUSTOMER_NAME IS NULL AND P.CUSTOMER_NAME IS NOT NULL
          OR A.CUSTOMER_NAME IS NOT NULL AND P.CUSTOMER_NAME IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS CUSTOMER_NAME,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.CUSTOMER_TYPE <> P.CUSTOMER_TYPE
          OR A.CUSTOMER_TYPE IS NULL AND P.CUSTOMER_TYPE IS NOT NULL
          OR A.CUSTOMER_TYPE IS NOT NULL AND P.CUSTOMER_TYPE IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS CUSTOMER_TYPE,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.RELATED_DEP_INST_YESNO <> P.RELATED_DEP_INST_YESNO
          OR A.RELATED_DEP_INST_YESNO IS NULL AND P.RELATED_DEP_INST_YESNO IS NOT NULL
          OR A.RELATED_DEP_INST_YESNO IS NOT NULL AND P.RELATED_DEP_INST_YESNO IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS RELATED_DEP_INST_YESNO,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.PURPOSE_CODE <> P.PURPOSE_CODE
          OR A.PURPOSE_CODE IS NULL AND P.PURPOSE_CODE IS NOT NULL
          OR A.PURPOSE_CODE IS NOT NULL AND P.PURPOSE_CODE IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS PURPOSE_CODE,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.FOREIGN_DOMESTIC <> P.FOREIGN_DOMESTIC
          OR A.FOREIGN_DOMESTIC IS NULL AND P.FOREIGN_DOMESTIC IS NOT NULL
          OR A.FOREIGN_DOMESTIC IS NOT NULL AND P.FOREIGN_DOMESTIC IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS FOREIGN_DOMESTIC,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.COUNTRY_DESC <> P.COUNTRY_DESC
          OR A.COUNTRY_DESC IS NULL AND P.COUNTRY_DESC IS NOT NULL
          OR A.COUNTRY_DESC IS NOT NULL AND P.COUNTRY_DESC IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS COUNTRY_DESC,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.RISK_COUNTRY <> P.RISK_COUNTRY
          OR A.RISK_COUNTRY IS NULL AND P.RISK_COUNTRY IS NOT NULL
          OR A.RISK_COUNTRY IS NOT NULL AND P.RISK_COUNTRY IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS RISK_COUNTRY,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.OPERATING_STATE <> P.OPERATING_STATE
          OR A.OPERATING_STATE IS NULL AND P.OPERATING_STATE IS NOT NULL
          OR A.OPERATING_STATE IS NOT NULL AND P.OPERATING_STATE IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS OPERATING_STATE,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.DAY_COUNT_BASIS <> P.DAY_COUNT_BASIS
          OR A.DAY_COUNT_BASIS IS NULL AND P.DAY_COUNT_BASIS IS NOT NULL
          OR A.DAY_COUNT_BASIS IS NOT NULL AND P.DAY_COUNT_BASIS IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS DAY_COUNT_BASIS,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.HIGHLVL_PROD_CAT <> P.HIGHLVL_PROD_CAT
          OR A.HIGHLVL_PROD_CAT IS NULL AND P.HIGHLVL_PROD_CAT IS NOT NULL
          OR A.HIGHLVL_PROD_CAT IS NOT NULL AND P.HIGHLVL_PROD_CAT IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS HIGHLVL_PROD_CAT,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.GL_KEY_CODE <> P.GL_KEY_CODE
          OR A.GL_KEY_CODE IS NULL AND P.GL_KEY_CODE IS NOT NULL
          OR A.GL_KEY_CODE IS NOT NULL AND P.GL_KEY_CODE IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS GL_KEY_CODE,
  COALESCE(A.PRINCIPAL_GL_US_GAAP_BASE_EQ, 0) - COALESCE(P.PRINCIPAL_GL_US_GAAP_BASE_EQ, 0) AS PRINCIPAL_GL_US_GAAP_BASE_EQ,
  COALESCE(A.ACC_INT_GL_US_GAAP_BASE_EQ, 0) - COALESCE(P.ACC_INT_GL_US_GAAP_BASE_EQ, 0) AS ACC_INT_GL_US_GAAP_BASE_EQ,
  COALESCE(A.DEF_FEES_GL_US_GAAP_BASE_EQ, 0) - COALESCE(P.DEF_FEES_GL_US_GAAP_BASE_EQ, 0) AS DEF_FEES_GL_US_GAAP_BASE_EQ,
  COALESCE(A.UNEARN_FEES_GL_US_GAAP_BASE_EQ, 0) - COALESCE(P.UNEARN_FEES_GL_US_GAAP_BASE_EQ, 0) AS UNEARN_FEES_GL_US_GAAP_BASE_EQ,
  COALESCE(A.SPCFC_RESRV_GL_US_GAAP_BASE_EQ, 0) - COALESCE(P.SPCFC_RESRV_GL_US_GAAP_BASE_EQ, 0) AS SPCFC_RESRV_GL_US_GAAP_BASE_EQ,
  COALESCE(A.INT_INC_GL_US_GAAP_BASE_EQ, 0) - COALESCE(P.INT_INC_GL_US_GAAP_BASE_EQ, 0) AS INT_INC_GL_US_GAAP_BASE_EQ,
  COALESCE(A.FEES_GL_US_GAAP_BASE_EQ, 0) - COALESCE(P.FEES_GL_US_GAAP_BASE_EQ, 0) AS FEES_GL_US_GAAP_BASE_EQ,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.CONSOL_NODE <> P.CONSOL_NODE
          OR A.CONSOL_NODE IS NULL AND P.CONSOL_NODE IS NOT NULL
          OR A.CONSOL_NODE IS NOT NULL AND P.CONSOL_NODE IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS CONSOL_NODE,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.SUB_LE1 <> P.SUB_LE1
          OR A.SUB_LE1 IS NULL AND P.SUB_LE1 IS NOT NULL
          OR A.SUB_LE1 IS NOT NULL AND P.SUB_LE1 IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS SUB_LE1,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.SUB_LE2 <> P.SUB_LE2
          OR A.SUB_LE2 IS NULL AND P.SUB_LE2 IS NOT NULL
          OR A.SUB_LE2 IS NOT NULL AND P.SUB_LE2 IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS SUB_LE2,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.BUSINESS_UNIT <> P.BUSINESS_UNIT
          OR A.BUSINESS_UNIT IS NULL AND P.BUSINESS_UNIT IS NOT NULL
          OR A.BUSINESS_UNIT IS NOT NULL AND P.BUSINESS_UNIT IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS BUSINESS_UNIT,
  COALESCE(A.LEGAL_CUST_TOTAL_COMMIT, 0) - COALESCE(P.LEGAL_CUST_TOTAL_COMMIT, 0) AS LEGAL_CUST_TOTAL_COMMIT,
  COALESCE(A.LEGAL_CUST_PRINC_FUNDED, 0) - COALESCE(P.LEGAL_CUST_PRINC_FUNDED, 0) AS LEGAL_CUST_PRINC_FUNDED,
  COALESCE(A.LEGAL_CUST_UNFUNDED_COMMIT, 0) - COALESCE(P.LEGAL_CUST_UNFUNDED_COMMIT, 0) AS LEGAL_CUST_UNFUNDED_COMMIT,
  COALESCE(A.BANK_SHARE_PRINC_US_GAAP, 0) - COALESCE(P.BANK_SHARE_PRINC_US_GAAP, 0) AS BANK_SHARE_PRINC_US_GAAP,
  COALESCE(A.BANK_SHARE_TOTAL_COMMIT, 0) - COALESCE(P.BANK_SHARE_TOTAL_COMMIT, 0) AS BANK_SHARE_TOTAL_COMMIT,
  COALESCE(A.BANK_SHARE_UNFUNDED_COMMIT, 0) - COALESCE(P.BANK_SHARE_UNFUNDED_COMMIT, 0) AS BANK_SHARE_UNFUNDED_COMMIT,
  COALESCE(A.BANK_SPECIFIC_RESRV_US_GAAP, 0) - COALESCE(P.BANK_SPECIFIC_RESRV_US_GAAP, 0) AS BANK_SPECIFIC_RESRV_US_GAAP,
  COALESCE(A.UNEARNED_FEES_US_GAAP, 0) - COALESCE(P.UNEARNED_FEES_US_GAAP, 0) AS UNEARNED_FEES_US_GAAP,
  COALESCE(A.CHARGED_OFF_US_GAAP, 0) - COALESCE(P.CHARGED_OFF_US_GAAP, 0) AS CHARGED_OFF_US_GAAP,
  COALESCE(A.ORIGINAL_PREMIUM_DISCOUNT, 0) - COALESCE(P.ORIGINAL_PREMIUM_DISCOUNT, 0) AS ORIGINAL_PREMIUM_DISCOUNT,
  COALESCE(A.REMAINING_PREMIUM_DISCOUNT, 0) - COALESCE(P.REMAINING_PREMIUM_DISCOUNT, 0) AS REMAINING_PREMIUM_DISCOUNT,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.ORIGINATION_DATE <> P.ORIGINATION_DATE
          OR A.ORIGINATION_DATE IS NULL AND P.ORIGINATION_DATE IS NOT NULL
          OR A.ORIGINATION_DATE IS NOT NULL AND P.ORIGINATION_DATE IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS ORIGINATION_DATE,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.MATURITY_DATE <> P.MATURITY_DATE
          OR A.MATURITY_DATE IS NULL AND P.MATURITY_DATE IS NOT NULL
          OR A.MATURITY_DATE IS NOT NULL AND P.MATURITY_DATE IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS MATURITY_DATE,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.REVOLVER_YN <> P.REVOLVER_YN
          OR A.REVOLVER_YN IS NULL AND P.REVOLVER_YN IS NOT NULL
          OR A.REVOLVER_YN IS NOT NULL AND P.REVOLVER_YN IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS REVOLVER_YN,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.RATE_EFFECTIVE_DATE <> P.RATE_EFFECTIVE_DATE
          OR A.RATE_EFFECTIVE_DATE IS NULL AND P.RATE_EFFECTIVE_DATE IS NOT NULL
          OR A.RATE_EFFECTIVE_DATE IS NOT NULL AND P.RATE_EFFECTIVE_DATE IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS RATE_EFFECTIVE_DATE,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.RATE_EXPIRATION_DATE <> P.RATE_EXPIRATION_DATE
          OR A.RATE_EXPIRATION_DATE IS NULL AND P.RATE_EXPIRATION_DATE IS NOT NULL
          OR A.RATE_EXPIRATION_DATE IS NOT NULL AND P.RATE_EXPIRATION_DATE IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS RATE_EXPIRATION_DATE,
  COALESCE(A.INTEREST_RATE, 0) - COALESCE(P.INTEREST_RATE, 0) AS INTEREST_RATE,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.FIXED_OR_VARIABLE <> P.FIXED_OR_VARIABLE
          OR A.FIXED_OR_VARIABLE IS NULL AND P.FIXED_OR_VARIABLE IS NOT NULL
          OR A.FIXED_OR_VARIABLE IS NOT NULL AND P.FIXED_OR_VARIABLE IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS FIXED_OR_VARIABLE,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.CUSTOMER_PARENT <> P.CUSTOMER_PARENT
          OR A.CUSTOMER_PARENT IS NULL AND P.CUSTOMER_PARENT IS NOT NULL
          OR A.CUSTOMER_PARENT IS NOT NULL AND P.CUSTOMER_PARENT IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS CUSTOMER_PARENT,
  COALESCE(A.COF_FTP_RATE, 0) - COALESCE(P.COF_FTP_RATE, 0) AS COF_FTP_RATE,
  COALESCE(A.SPREAD, 0) - COALESCE(P.SPREAD, 0) AS SPREAD,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.PAST_DUE_YN <> P.PAST_DUE_YN
          OR A.PAST_DUE_YN IS NULL AND P.PAST_DUE_YN IS NOT NULL
          OR A.PAST_DUE_YN IS NOT NULL AND P.PAST_DUE_YN IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS PAST_DUE_YN,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.TDR_YN <> P.TDR_YN
          OR A.TDR_YN IS NULL AND P.TDR_YN IS NOT NULL
          OR A.TDR_YN IS NOT NULL AND P.TDR_YN IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS TDR_YN,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.DATE_TDR <> P.DATE_TDR
          OR A.DATE_TDR IS NULL AND P.DATE_TDR IS NOT NULL
          OR A.DATE_TDR IS NOT NULL AND P.DATE_TDR IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS DATE_TDR,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.US_GAAP_RISK_RATING <> P.US_GAAP_RISK_RATING
          OR A.US_GAAP_RISK_RATING IS NULL AND P.US_GAAP_RISK_RATING IS NOT NULL
          OR A.US_GAAP_RISK_RATING IS NOT NULL AND P.US_GAAP_RISK_RATING IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS US_GAAP_RISK_RATING,
  COALESCE(A.SYNDICATED_PARTICIPATED_LOAN, 0) - COALESCE(P.SYNDICATED_PARTICIPATED_LOAN, 0) AS SYNDICATED_PARTICIPATED_LOAN,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.AGENT_PARTICIPANT <> P.AGENT_PARTICIPANT
          OR A.AGENT_PARTICIPANT IS NULL AND P.AGENT_PARTICIPANT IS NOT NULL
          OR A.AGENT_PARTICIPANT IS NOT NULL AND P.AGENT_PARTICIPANT IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS AGENT_PARTICIPANT,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.FACILITY_BORROWER_CIF <> P.FACILITY_BORROWER_CIF
          OR A.FACILITY_BORROWER_CIF IS NULL AND P.FACILITY_BORROWER_CIF IS NOT NULL
          OR A.FACILITY_BORROWER_CIF IS NOT NULL AND P.FACILITY_BORROWER_CIF IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS FACILITY_BORROWER_CIF,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.FACILITY_TRADE_ID <> P.FACILITY_TRADE_ID
          OR A.FACILITY_TRADE_ID IS NULL AND P.FACILITY_TRADE_ID IS NOT NULL
          OR A.FACILITY_TRADE_ID IS NOT NULL AND P.FACILITY_TRADE_ID IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS FACILITY_TRADE_ID,
  COALESCE(A.FAC_OUTSTANDING_AVAILABLE_AMT, 0) - COALESCE(P.FAC_OUTSTANDING_AVAILABLE_AMT, 0) AS FAC_OUTSTANDING_AVAILABLE_AMT,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.ACCOUNT <> P.ACCOUNT
          OR A.ACCOUNT IS NULL AND P.ACCOUNT IS NOT NULL
          OR A.ACCOUNT IS NOT NULL AND P.ACCOUNT IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS ACCOUNT,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.PRODUCT <> P.PRODUCT
          OR A.PRODUCT IS NULL AND P.PRODUCT IS NOT NULL
          OR A.PRODUCT IS NOT NULL AND P.PRODUCT IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS PRODUCT,
  CASE
    WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.CUST_CLASS <> P.CUST_CLASS
          OR A.CUST_CLASS IS NULL AND P.CUST_CLASS IS NOT NULL
          OR A.CUST_CLASS IS NOT NULL AND P.CUST_CLASS IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS CUST_CLASS
FROM
(
  SELECT
    ROW_NUMBER() OVER (PARTITION BY
      TESTO_1,
      TESTO_2
      ORDER BY
        TESTO_3,
		TESTO_4,
		IMPORTO_1,
		TESTO_5,
		TESTO_6,
		TESTO_7,
		TESTO_8,
		TESTO_9,
		TESTO_10,
		TESTO_11,
		TESTO_12,
		TESTO_13,
		TESTO_14,
		TESTO_15,
		TESTO_16,
		IMPORTO_2,
		IMPORTO_3,
		IMPORTO_4,
		IMPORTO_5,
		IMPORTO_6,
		IMPORTO_7,
		IMPORTO_8,
		TESTO_17,
		TESTO_18,
		TESTO_19,
		TESTO_20,
		IMPORTO_9,
		IMPORTO_10,
		IMPORTO_11,
		IMPORTO_12,
		IMPORTO_13,
		IMPORTO_14,
		IMPORTO_15,
		IMPORTO_16,
		IMPORTO_17,
		IMPORTO_18,
		IMPORTO_19,
		DATA_2,
		DATA_3,
		TESTO_21,
		DATA_4,
		DATA_5,
		IMPORTO_20,
		TESTO_22,
		TESTO_23,
		IMPORTO_21,
		IMPORTO_22,
		TESTO_24,
		TESTO_25,
		TESTO_33,
		TESTO_26,
		IMPORTO_23,
		TESTO_27,
		TESTO_28,
		TESTO_29,
		IMPORTO_24,
		TESTO_30,
		TESTO_31,
		TESTO_32
    ) AS ROW_ID,
    TESTO_1 AS REPORTING_ENTITY,
	TESTO_2 AS INSTRUMENT,
	TESTO_3 AS INTERCOMPANY,
	TESTO_4 AS CALL_CODE,
	IMPORTO_1 AS BASE_EQUIVALENT,
	TESTO_5 AS CUSTOMER_ID,
	TESTO_6 AS CUSTOMER_NAME,
	TESTO_7 AS CUSTOMER_TYPE,
	TESTO_8 AS RELATED_DEP_INST_YESNO,
	TESTO_9 AS PURPOSE_CODE,
	TESTO_10 AS FOREIGN_DOMESTIC,
	TESTO_11 AS COUNTRY_DESC,
	TESTO_12 AS RISK_COUNTRY,
	TESTO_13 AS OPERATING_STATE,
	TESTO_14 AS DAY_COUNT_BASIS,
	TESTO_15 AS HIGHLVL_PROD_CAT,
	TESTO_16 AS GL_KEY_CODE,
	IMPORTO_2 AS PRINCIPAL_GL_US_GAAP_BASE_EQ,
	IMPORTO_3 AS ACC_INT_GL_US_GAAP_BASE_EQ,
	IMPORTO_4 AS DEF_FEES_GL_US_GAAP_BASE_EQ,
	IMPORTO_5 AS UNEARN_FEES_GL_US_GAAP_BASE_EQ,
	IMPORTO_6 AS SPCFC_RESRV_GL_US_GAAP_BASE_EQ,
	IMPORTO_7 AS INT_INC_GL_US_GAAP_BASE_EQ,
	IMPORTO_8 AS FEES_GL_US_GAAP_BASE_EQ,
	TESTO_17 AS CONSOL_NODE,
	TESTO_18 AS SUB_LE1,
	TESTO_19 AS SUB_LE2,
	TESTO_20 AS BUSINESS_UNIT,
	IMPORTO_9 AS LEGAL_CUST_TOTAL_COMMIT,
	IMPORTO_10 AS LEGAL_CUST_PRINC_FUNDED,
	IMPORTO_11 AS LEGAL_CUST_UNFUNDED_COMMIT,
	IMPORTO_12 AS BANK_SHARE_PRINC_US_GAAP,
	IMPORTO_13 AS BANK_SHARE_TOTAL_COMMIT,
	IMPORTO_14 AS BANK_SHARE_UNFUNDED_COMMIT,
	IMPORTO_15 AS BANK_SPECIFIC_RESRV_US_GAAP,
	IMPORTO_16 AS UNEARNED_FEES_US_GAAP,
	IMPORTO_17 AS CHARGED_OFF_US_GAAP,
	IMPORTO_18 AS ORIGINAL_PREMIUM_DISCOUNT,
	IMPORTO_19 AS REMAINING_PREMIUM_DISCOUNT,
	DATA_2 AS ORIGINATION_DATE,
	DATA_3 AS MATURITY_DATE,
	TESTO_21 AS REVOLVER_YN,
	DATA_4 AS RATE_EFFECTIVE_DATE,
	DATA_5 AS RATE_EXPIRATION_DATE,
	IMPORTO_20 AS INTEREST_RATE,
	TESTO_22 AS FIXED_OR_VARIABLE,
	TESTO_23 AS CUSTOMER_PARENT,
	IMPORTO_21 AS COF_FTP_RATE,
	IMPORTO_22 AS SPREAD,
	TESTO_24 AS PAST_DUE_YN,
	TESTO_25 AS TDR_YN,
	TESTO_33 AS DATE_TDR,
	TESTO_26 AS US_GAAP_RISK_RATING,
	IMPORTO_23 AS SYNDICATED_PARTICIPATED_LOAN,
	TESTO_27 AS AGENT_PARTICIPANT,
	TESTO_28 AS FACILITY_BORROWER_CIF,
	TESTO_29 AS FACILITY_TRADE_ID,
	IMPORTO_24 AS FAC_OUTSTANDING_AVAILABLE_AMT,
	TESTO_30 AS ACCOUNT,
	TESTO_31 AS PRODUCT,
	TESTO_32 AS CUST_CLASS
  FROM
    FORM_DATI
  WHERE
      COD_PROSPETTO = 'LOAN'
  AND COD_SCENARIO = ${A1}
  AND COD_PERIODO = ${B1}
  AND COD_AZIENDA IN (
              SELECT
                COD_AZIENDA
              FROM
                UTENTE_AZIENDA
              WHERE
                FLAG_INSERIMENTO_DATI = 1
                AND COD_AZIENDA_GERARCHIA = (SELECT COD_AZIENDA_GERARCHIA FROM RACCOLTA WHERE COD_RACCOLTA = 'ACT')
                AND COD_UTENTE = ${USER.CODE}
              UNION
              SELECT
                A.COD_AZIENDA
              FROM
                UTENTE U,
                AZIENDA_GERARCHIA_ABBI A
              WHERE
                U.TIPO_LIM_AZIENDA = 'X'
                AND A.COD_AZIENDA_GERARCHIA = (SELECT COD_AZIENDA_GERARCHIA FROM RACCOLTA WHERE COD_RACCOLTA = 'ACT')
                AND U.COD_UTENTE = ${USER.CODE}
          )
) A
FULL OUTER JOIN
(
  SELECT
    ROW_NUMBER() OVER (PARTITION BY
      TESTO_1,
      TESTO_2
      ORDER BY
        TESTO_3,
		TESTO_4,
		IMPORTO_1,
		TESTO_5,
		TESTO_6,
		TESTO_7,
		TESTO_8,
		TESTO_9,
		TESTO_10,
		TESTO_11,
		TESTO_12,
		TESTO_13,
		TESTO_14,
		TESTO_15,
		TESTO_16,
		IMPORTO_2,
		IMPORTO_3,
		IMPORTO_4,
		IMPORTO_5,
		IMPORTO_6,
		IMPORTO_7,
		IMPORTO_8,
		TESTO_17,
		TESTO_18,
		TESTO_19,
		TESTO_20,
		IMPORTO_9,
		IMPORTO_10,
		IMPORTO_11,
		IMPORTO_12,
		IMPORTO_13,
		IMPORTO_14,
		IMPORTO_15,
		IMPORTO_16,
		IMPORTO_17,
		IMPORTO_18,
		IMPORTO_19,
		DATA_2,
		DATA_3,
		TESTO_21,
		DATA_4,
		DATA_5,
		IMPORTO_20,
		TESTO_22,
		TESTO_23,
		IMPORTO_21,
		IMPORTO_22,
		TESTO_24,
		TESTO_25,
		TESTO_33,
		TESTO_26,
		IMPORTO_23,
		TESTO_27,
		TESTO_28,
		TESTO_29,
		IMPORTO_24,
		TESTO_30,
		TESTO_31,
		TESTO_32
    ) AS ROW_ID,
	TESTO_1 AS REPORTING_ENTITY,
	TESTO_2 AS INSTRUMENT,
	TESTO_3 AS INTERCOMPANY,
	TESTO_4 AS CALL_CODE,
	IMPORTO_1 AS BASE_EQUIVALENT,
	TESTO_5 AS CUSTOMER_ID,
	TESTO_6 AS CUSTOMER_NAME,
	TESTO_7 AS CUSTOMER_TYPE,
	TESTO_8 AS RELATED_DEP_INST_YESNO,
	TESTO_9 AS PURPOSE_CODE,
	TESTO_10 AS FOREIGN_DOMESTIC,
	TESTO_11 AS COUNTRY_DESC,
	TESTO_12 AS RISK_COUNTRY,
	TESTO_13 AS OPERATING_STATE,
	TESTO_14 AS DAY_COUNT_BASIS,
	TESTO_15 AS HIGHLVL_PROD_CAT,
	TESTO_16 AS GL_KEY_CODE,
	IMPORTO_2 AS PRINCIPAL_GL_US_GAAP_BASE_EQ,
	IMPORTO_3 AS ACC_INT_GL_US_GAAP_BASE_EQ,
	IMPORTO_4 AS DEF_FEES_GL_US_GAAP_BASE_EQ,
	IMPORTO_5 AS UNEARN_FEES_GL_US_GAAP_BASE_EQ,
	IMPORTO_6 AS SPCFC_RESRV_GL_US_GAAP_BASE_EQ,
	IMPORTO_7 AS INT_INC_GL_US_GAAP_BASE_EQ,
	IMPORTO_8 AS FEES_GL_US_GAAP_BASE_EQ,
	TESTO_17 AS CONSOL_NODE,
	TESTO_18 AS SUB_LE1,
	TESTO_19 AS SUB_LE2,
	TESTO_20 AS BUSINESS_UNIT,
	IMPORTO_9 AS LEGAL_CUST_TOTAL_COMMIT,
	IMPORTO_10 AS LEGAL_CUST_PRINC_FUNDED,
	IMPORTO_11 AS LEGAL_CUST_UNFUNDED_COMMIT,
	IMPORTO_12 AS BANK_SHARE_PRINC_US_GAAP,
	IMPORTO_13 AS BANK_SHARE_TOTAL_COMMIT,
	IMPORTO_14 AS BANK_SHARE_UNFUNDED_COMMIT,
	IMPORTO_15 AS BANK_SPECIFIC_RESRV_US_GAAP,
	IMPORTO_16 AS UNEARNED_FEES_US_GAAP,
	IMPORTO_17 AS CHARGED_OFF_US_GAAP,
	IMPORTO_18 AS ORIGINAL_PREMIUM_DISCOUNT,
	IMPORTO_19 AS REMAINING_PREMIUM_DISCOUNT,
	DATA_2 AS ORIGINATION_DATE,
	DATA_3 AS MATURITY_DATE,
	TESTO_21 AS REVOLVER_YN,
	DATA_4 AS RATE_EFFECTIVE_DATE,
	DATA_5 AS RATE_EXPIRATION_DATE,
	IMPORTO_20 AS INTEREST_RATE,
	TESTO_22 AS FIXED_OR_VARIABLE,
	TESTO_23 AS CUSTOMER_PARENT,
	IMPORTO_21 AS COF_FTP_RATE,
	IMPORTO_22 AS SPREAD,
	TESTO_24 AS PAST_DUE_YN,
	TESTO_25 AS TDR_YN,
	TESTO_33 AS DATE_TDR,
	TESTO_26 AS US_GAAP_RISK_RATING,
	IMPORTO_23 AS SYNDICATED_PARTICIPATED_LOAN,
	TESTO_27 AS AGENT_PARTICIPANT,
	TESTO_28 AS FACILITY_BORROWER_CIF,
	TESTO_29 AS FACILITY_TRADE_ID,
	IMPORTO_24 AS FAC_OUTSTANDING_AVAILABLE_AMT,
	TESTO_30 AS ACCOUNT,
	TESTO_31 AS PRODUCT,
	TESTO_32 AS CUST_CLASS
  FROM
    FORM_DATI
  WHERE
      COD_PROSPETTO = 'LOAN'
  AND COD_SCENARIO = ${A2}
  AND COD_PERIODO = ${B2}
  AND COD_AZIENDA IN (
              SELECT
                COD_AZIENDA
              FROM
                UTENTE_AZIENDA
              WHERE
                FLAG_INSERIMENTO_DATI = 1
                AND COD_AZIENDA_GERARCHIA = (SELECT COD_AZIENDA_GERARCHIA FROM RACCOLTA WHERE COD_RACCOLTA = 'ACT')
                AND COD_UTENTE = ${USER.CODE}
              UNION
              SELECT
                A.COD_AZIENDA
              FROM
                UTENTE U,
                AZIENDA_GERARCHIA_ABBI A
              WHERE
                U.TIPO_LIM_AZIENDA = 'X'
                AND A.COD_AZIENDA_GERARCHIA = (SELECT COD_AZIENDA_GERARCHIA FROM RACCOLTA WHERE COD_RACCOLTA = 'ACT')
                AND U.COD_UTENTE = ${USER.CODE}
          )
) P
ON
  A.ROW_ID = P.ROW_ID
  AND A.REPORTING_ENTITY = P.REPORTING_ENTITY
  AND (A.INSTRUMENT = P.INSTRUMENT OR (A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NULL))
