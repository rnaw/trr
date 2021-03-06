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
  END AS CUST_CLASS,
  ${CONCATENATE($Account.code, " (", PARENT($Account(HIERARCHY("RE"))).code, " - ", PARENT($Account(HIERARCHY("RE"))).desc, ": ", $Account.attribute4, " - ", $Account.attribute5, ")")} AS LINE_ITEM
FROM
(
  SELECT
    CAST(ROW_NUMBER() OVER (PARTITION BY
      DATA.TESTO_1,
      DATA.TESTO_2
      ORDER BY
        DATA.TESTO_3,
        DATA.TESTO_4,
        DATA.IMPORTO_1,
        DATA.TESTO_5,
        DATA.TESTO_6,
        DATA.TESTO_7,
        DATA.TESTO_8,
        DATA.TESTO_9,
        DATA.TESTO_10,
        DATA.TESTO_11,
        DATA.TESTO_12,
        DATA.TESTO_13,
        DATA.TESTO_14,
        DATA.TESTO_15,
        DATA.TESTO_16,
        DATA.IMPORTO_2,
        DATA.IMPORTO_3,
        DATA.IMPORTO_4,
        DATA.IMPORTO_5,
        DATA.IMPORTO_6,
        DATA.IMPORTO_7,
        DATA.IMPORTO_8,
        DATA.TESTO_17,
        DATA.TESTO_18,
        DATA.TESTO_19,
        DATA.TESTO_20,
        DATA.IMPORTO_9,
        DATA.IMPORTO_10,
        DATA.IMPORTO_11,
        DATA.IMPORTO_12,
        DATA.IMPORTO_13,
        DATA.IMPORTO_14,
        DATA.IMPORTO_15,
        DATA.IMPORTO_16,
        DATA.IMPORTO_17,
        DATA.IMPORTO_18,
        DATA.IMPORTO_19,
        DATA.DATA_2,
        DATA.DATA_3,
        DATA.TESTO_21,
        DATA.DATA_4,
        DATA.DATA_5,
        DATA.IMPORTO_20,
        DATA.TESTO_22,
        DATA.TESTO_23,
        DATA.IMPORTO_21,
        DATA.IMPORTO_22,
        DATA.TESTO_24,
        DATA.TESTO_25,
        DATA.TESTO_33,
        DATA.TESTO_26,
        DATA.IMPORTO_23,
        DATA.TESTO_27,
        DATA.TESTO_28,
        DATA.TESTO_29,
        DATA.IMPORTO_24,
        DATA.TESTO_30,
        DATA.TESTO_31,
        DATA.TESTO_32
    ) AS VARCHAR2(255)) AS ROW_ID,
    DATA.TESTO_1 AS REPORTING_ENTITY,
    DATA.TESTO_2 AS INSTRUMENT,
    DATA.TESTO_3 AS INTERCOMPANY,
    DATA.TESTO_4 AS CALL_CODE,
    DATA.IMPORTO_1 AS BASE_EQUIVALENT,
    DATA.TESTO_5 AS CUSTOMER_ID,
    DATA.TESTO_6 AS CUSTOMER_NAME,
    DATA.TESTO_7 AS CUSTOMER_TYPE,
    DATA.TESTO_8 AS RELATED_DEP_INST_YESNO,
    DATA.TESTO_9 AS PURPOSE_CODE,
    DATA.TESTO_10 AS FOREIGN_DOMESTIC,
    DATA.TESTO_11 AS COUNTRY_DESC,
    DATA.TESTO_12 AS RISK_COUNTRY,
    DATA.TESTO_13 AS OPERATING_STATE,
    DATA.TESTO_14 AS DAY_COUNT_BASIS,
    DATA.TESTO_15 AS HIGHLVL_PROD_CAT,
    DATA.TESTO_16 AS GL_KEY_CODE,
    DATA.IMPORTO_2 AS PRINCIPAL_GL_US_GAAP_BASE_EQ,
    DATA.IMPORTO_3 AS ACC_INT_GL_US_GAAP_BASE_EQ,
    DATA.IMPORTO_4 AS DEF_FEES_GL_US_GAAP_BASE_EQ,
    DATA.IMPORTO_5 AS UNEARN_FEES_GL_US_GAAP_BASE_EQ,
    DATA.IMPORTO_6 AS SPCFC_RESRV_GL_US_GAAP_BASE_EQ,
    DATA.IMPORTO_7 AS INT_INC_GL_US_GAAP_BASE_EQ,
    DATA.IMPORTO_8 AS FEES_GL_US_GAAP_BASE_EQ,
    DATA.TESTO_17 AS CONSOL_NODE,
    DATA.TESTO_18 AS SUB_LE1,
    DATA.TESTO_19 AS SUB_LE2,
    DATA.TESTO_20 AS BUSINESS_UNIT,
    DATA.IMPORTO_9 AS LEGAL_CUST_TOTAL_COMMIT,
    DATA.IMPORTO_10 AS LEGAL_CUST_PRINC_FUNDED,
    DATA.IMPORTO_11 AS LEGAL_CUST_UNFUNDED_COMMIT,
    DATA.IMPORTO_12 AS BANK_SHARE_PRINC_US_GAAP,
    DATA.IMPORTO_13 AS BANK_SHARE_TOTAL_COMMIT,
    DATA.IMPORTO_14 AS BANK_SHARE_UNFUNDED_COMMIT,
    DATA.IMPORTO_15 AS BANK_SPECIFIC_RESRV_US_GAAP,
    DATA.IMPORTO_16 AS UNEARNED_FEES_US_GAAP,
    DATA.IMPORTO_17 AS CHARGED_OFF_US_GAAP,
    DATA.IMPORTO_18 AS ORIGINAL_PREMIUM_DISCOUNT,
    DATA.IMPORTO_19 AS REMAINING_PREMIUM_DISCOUNT,
    DATA.DATA_2 AS ORIGINATION_DATE,
    DATA.DATA_3 AS MATURITY_DATE,
    DATA.TESTO_21 AS REVOLVER_YN,
    DATA.DATA_4 AS RATE_EFFECTIVE_DATE,
    DATA.DATA_5 AS RATE_EXPIRATION_DATE,
    DATA.IMPORTO_20 AS INTEREST_RATE,
    DATA.TESTO_22 AS FIXED_OR_VARIABLE,
    DATA.TESTO_23 AS CUSTOMER_PARENT,
    DATA.IMPORTO_21 AS COF_FTP_RATE,
    DATA.IMPORTO_22 AS SPREAD,
    DATA.TESTO_24 AS PAST_DUE_YN,
    DATA.TESTO_25 AS TDR_YN,
    DATA.TESTO_33 AS DATE_TDR,
    DATA.TESTO_26 AS US_GAAP_RISK_RATING,
    DATA.IMPORTO_23 AS SYNDICATED_PARTICIPATED_LOAN,
    DATA.TESTO_27 AS AGENT_PARTICIPANT,
    DATA.TESTO_28 AS FACILITY_BORROWER_CIF,
    DATA.TESTO_29 AS FACILITY_TRADE_ID,
    DATA.IMPORTO_24 AS FAC_OUTSTANDING_AVAILABLE_AMT,
    DATA.TESTO_30 AS ACCOUNT,
    DATA.TESTO_31 AS PRODUCT,
    DATA.TESTO_32 AS CUST_CLASS
  FROM
	  RB_DRILL_INSTRUMENT DRILL
  INNER JOIN
	  FORM_DATI DATA
	  ON
      DRILL.OID_FORM_DATI = DATA.OID_FORM_DATI
  WHERE
	  DRILL.COD_SCENARIO = ${A1}
	  AND DRILL.COD_PERIODO = ${B1}
	  AND DRILL.COD_AZIENDA IN (${$Entity.code})
    AND DRILL.COD_CONTO IN (${$Account.code})
	  AND DRILL.COD_DEST1 IN (${$Cust_Dim1.code})
	  AND DRILL.COD_DEST2 IN (${$Cust_Dim2.code})
	  AND DRILL.COD_DEST3 IN (${$Cust_Dim3.code})
	  AND DRILL.COD_DEST4 IN (${$Cust_Dim4.code})
	  AND DRILL.COD_DEST5 IN (${$Cust_Dim5.code})
	  AND DRILL.COD_CATEGORIA IN (${$Category.code})
    AND DATA.COD_PROSPETTO = 'LOAN'
	UNION ALL
  SELECT
    DATA.COD_CONTO || DATA.COD_AZIENDA AS ROW_ID,	
    'ADJUSTMENT' AS REPORTING_ENTITY,
    ' ' AS INSTRUMENT,
    NULL AS INTERCOMPANY,
    NULL AS CALL_CODE,
    SUM(DATA.IMPORTO2) * 1000 AS BASE_EQUIVALENT,
    NULL AS CUSTOMER_ID,
    NULL AS CUSTOMER_NAME,
    NULL AS CUSTOMER_TYPE,
    NULL AS RELATED_DEP_INST_YESNO,
    NULL AS PURPOSE_CODE,
    NULL AS FOREIGN_DOMESTIC,
    NULL AS COUNTRY_DESC,
    NULL AS RISK_COUNTRY,
    NULL AS OPERATING_STATE,
    NULL AS DAY_COUNT_BASIS,
    NULL AS HIGHLVL_PROD_CAT,
    NULL AS GL_KEY_CODE,
    NULL AS PRINCIPAL_GL_US_GAAP_BASE_EQ,
    NULL AS ACC_INT_GL_US_GAAP_BASE_EQ,
    NULL AS DEF_FEES_GL_US_GAAP_BASE_EQ,
    NULL AS UNEARN_FEES_GL_US_GAAP_BASE_EQ,
    NULL AS SPCFC_RESRV_GL_US_GAAP_BASE_EQ,
    NULL AS INT_INC_GL_US_GAAP_BASE_EQ,
    NULL AS FEES_GL_US_GAAP_BASE_EQ,
    NULL AS CONSOL_NODE,
    NULL AS SUB_LE1,
    NULL AS SUB_LE2,
    DATA.COD_AZIENDA AS BUSINESS_UNIT,
    NULL AS LEGAL_CUST_TOTAL_COMMIT,
    NULL AS LEGAL_CUST_PRINC_FUNDED,
    NULL AS LEGAL_CUST_UNFUNDED_COMMIT,
    NULL AS BANK_SHARE_PRINC_US_GAAP,
    NULL AS BANK_SHARE_TOTAL_COMMIT,
    NULL AS BANK_SHARE_UNFUNDED_COMMIT,
    NULL AS BANK_SPECIFIC_RESRV_US_GAAP,
    NULL AS UNEARNED_FEES_US_GAAP,
    NULL AS CHARGED_OFF_US_GAAP,
    NULL AS ORIGINAL_PREMIUM_DISCOUNT,
    NULL AS REMAINING_PREMIUM_DISCOUNT,
    NULL AS ORIGINATION_DATE,
    NULL AS MATURITY_DATE,
    NULL AS REVOLVER_YN,
    NULL AS RATE_EFFECTIVE_DATE,
    NULL AS RATE_EXPIRATION_DATE,
    NULL AS INTEREST_RATE,
    NULL AS FIXED_OR_VARIABLE,
    NULL AS CUSTOMER_PARENT,
    NULL AS COF_FTP_RATE,
    NULL AS SPREAD,
    NULL AS PAST_DUE_YN,
    NULL AS TDR_YN,
    NULL AS DATE_TDR,
    NULL AS US_GAAP_RISK_RATING,
    NULL AS SYNDICATED_PARTICIPATED_LOAN,
    NULL AS AGENT_PARTICIPANT,
    NULL AS FACILITY_BORROWER_CIF,
    NULL AS FACILITY_TRADE_ID,
    NULL AS FAC_OUTSTANDING_AVAILABLE_AMT,
    NULL AS ACCOUNT,
    DATA.COD_DEST3 AS PRODUCT,
    DATA.COD_DEST4 AS CUST_CLASS
  FROM
	DATI_RETT_RIGA DATA
	LEFT OUTER JOIN
	DATI_RETT A
	ON
		DATA.COD_SCENARIO = A.COD_SCENARIO
		AND DATA.COD_PERIODO = A.COD_PERIODO
		AND DATA.NUM_RETTIFICA = A.NUM_RETTIFICA
	LEFT OUTER JOIN
	SCENARIO_PERIODO SP
	ON
		DATA.COD_SCENARIO = SP.COD_SCENARIO
		AND DATA.COD_PERIODO = SP.COD_PERIODO
  WHERE
	  DATA.COD_SCENARIO = ${A1}
	  AND DATA.COD_PERIODO = ${B1}
	  AND DATA.COD_AZIENDA IN (${$Entity.code})
	  AND DATA.COD_CONTO IN (${$Account.code})
	  AND DATA.COD_DEST1 IN (${$Cust_Dim1.code})
	  AND DATA.COD_DEST2 IN (${$Cust_Dim2.code})
	  AND DATA.COD_DEST3 IN (${$Cust_Dim3.code})
	  AND DATA.COD_DEST4 IN (${$Cust_Dim4.code})
	  AND DATA.COD_DEST5 IN (${$Cust_Dim5.code})
	  AND DATA.COD_CATEGORIA IN (${$Category.code})
  GROUP BY
    DATA.COD_CONTO || DATA.COD_AZIENDA,
    DATA.COD_VALUTA2,
    DATA.COD_AZIENDA,
    DATA.COD_DEST3,
    DATA.COD_DEST2,
    DATA.COD_AZI_CTP,
    DATA.COD_DEST4
) A
FULL OUTER JOIN
(
  SELECT
    CAST(ROW_NUMBER() OVER (PARTITION BY
      DATA.TESTO_1,
      DATA.TESTO_2
      ORDER BY
        DATA.TESTO_3,
        DATA.TESTO_4,
        DATA.IMPORTO_1,
        DATA.TESTO_5,
        DATA.TESTO_6,
        DATA.TESTO_7,
        DATA.TESTO_8,
        DATA.TESTO_9,
        DATA.TESTO_10,
        DATA.TESTO_11,
        DATA.TESTO_12,
        DATA.TESTO_13,
        DATA.TESTO_14,
        DATA.TESTO_15,
        DATA.TESTO_16,
        DATA.IMPORTO_2,
        DATA.IMPORTO_3,
        DATA.IMPORTO_4,
        DATA.IMPORTO_5,
        DATA.IMPORTO_6,
        DATA.IMPORTO_7,
        DATA.IMPORTO_8,
        DATA.TESTO_17,
        DATA.TESTO_18,
        DATA.TESTO_19,
        DATA.TESTO_20,
        DATA.IMPORTO_9,
        DATA.IMPORTO_10,
        DATA.IMPORTO_11,
        DATA.IMPORTO_12,
        DATA.IMPORTO_13,
        DATA.IMPORTO_14,
        DATA.IMPORTO_15,
        DATA.IMPORTO_16,
        DATA.IMPORTO_17,
        DATA.IMPORTO_18,
        DATA.IMPORTO_19,
        DATA.DATA_2,
        DATA.DATA_3,
        DATA.TESTO_21,
        DATA.DATA_4,
        DATA.DATA_5,
        DATA.IMPORTO_20,
        DATA.TESTO_22,
        DATA.TESTO_23,
        DATA.IMPORTO_21,
        DATA.IMPORTO_22,
        DATA.TESTO_24,
        DATA.TESTO_25,
        DATA.TESTO_33,
        DATA.TESTO_26,
        DATA.IMPORTO_23,
        DATA.TESTO_27,
        DATA.TESTO_28,
        DATA.TESTO_29,
        DATA.IMPORTO_24,
        DATA.TESTO_30,
        DATA.TESTO_31,
        DATA.TESTO_32
    ) AS VARCHAR2(255)) AS ROW_ID,
    DATA.TESTO_1 AS REPORTING_ENTITY,
    DATA.TESTO_2 AS INSTRUMENT,
    DATA.TESTO_3 AS INTERCOMPANY,
    DATA.TESTO_4 AS CALL_CODE,
    DATA.IMPORTO_1 AS BASE_EQUIVALENT,
    DATA.TESTO_5 AS CUSTOMER_ID,
    DATA.TESTO_6 AS CUSTOMER_NAME,
    DATA.TESTO_7 AS CUSTOMER_TYPE,
    DATA.TESTO_8 AS RELATED_DEP_INST_YESNO,
    DATA.TESTO_9 AS PURPOSE_CODE,
    DATA.TESTO_10 AS FOREIGN_DOMESTIC,
    DATA.TESTO_11 AS COUNTRY_DESC,
    DATA.TESTO_12 AS RISK_COUNTRY,
    DATA.TESTO_13 AS OPERATING_STATE,
    DATA.TESTO_14 AS DAY_COUNT_BASIS,
    DATA.TESTO_15 AS HIGHLVL_PROD_CAT,
    DATA.TESTO_16 AS GL_KEY_CODE,
    DATA.IMPORTO_2 AS PRINCIPAL_GL_US_GAAP_BASE_EQ,
    DATA.IMPORTO_3 AS ACC_INT_GL_US_GAAP_BASE_EQ,
    DATA.IMPORTO_4 AS DEF_FEES_GL_US_GAAP_BASE_EQ,
    DATA.IMPORTO_5 AS UNEARN_FEES_GL_US_GAAP_BASE_EQ,
    DATA.IMPORTO_6 AS SPCFC_RESRV_GL_US_GAAP_BASE_EQ,
    DATA.IMPORTO_7 AS INT_INC_GL_US_GAAP_BASE_EQ,
    DATA.IMPORTO_8 AS FEES_GL_US_GAAP_BASE_EQ,
    DATA.TESTO_17 AS CONSOL_NODE,
    DATA.TESTO_18 AS SUB_LE1,
    DATA.TESTO_19 AS SUB_LE2,
    DATA.TESTO_20 AS BUSINESS_UNIT,
    DATA.IMPORTO_9 AS LEGAL_CUST_TOTAL_COMMIT,
    DATA.IMPORTO_10 AS LEGAL_CUST_PRINC_FUNDED,
    DATA.IMPORTO_11 AS LEGAL_CUST_UNFUNDED_COMMIT,
    DATA.IMPORTO_12 AS BANK_SHARE_PRINC_US_GAAP,
    DATA.IMPORTO_13 AS BANK_SHARE_TOTAL_COMMIT,
    DATA.IMPORTO_14 AS BANK_SHARE_UNFUNDED_COMMIT,
    DATA.IMPORTO_15 AS BANK_SPECIFIC_RESRV_US_GAAP,
    DATA.IMPORTO_16 AS UNEARNED_FEES_US_GAAP,
    DATA.IMPORTO_17 AS CHARGED_OFF_US_GAAP,
    DATA.IMPORTO_18 AS ORIGINAL_PREMIUM_DISCOUNT,
    DATA.IMPORTO_19 AS REMAINING_PREMIUM_DISCOUNT,
    DATA.DATA_2 AS ORIGINATION_DATE,
    DATA.DATA_3 AS MATURITY_DATE,
    DATA.TESTO_21 AS REVOLVER_YN,
    DATA.DATA_4 AS RATE_EFFECTIVE_DATE,
    DATA.DATA_5 AS RATE_EXPIRATION_DATE,
    DATA.IMPORTO_20 AS INTEREST_RATE,
    DATA.TESTO_22 AS FIXED_OR_VARIABLE,
    DATA.TESTO_23 AS CUSTOMER_PARENT,
    DATA.IMPORTO_21 AS COF_FTP_RATE,
    DATA.IMPORTO_22 AS SPREAD,
    DATA.TESTO_24 AS PAST_DUE_YN,
    DATA.TESTO_25 AS TDR_YN,
    DATA.TESTO_33 AS DATE_TDR,
    DATA.TESTO_26 AS US_GAAP_RISK_RATING,
    DATA.IMPORTO_23 AS SYNDICATED_PARTICIPATED_LOAN,
    DATA.TESTO_27 AS AGENT_PARTICIPANT,
    DATA.TESTO_28 AS FACILITY_BORROWER_CIF,
    DATA.TESTO_29 AS FACILITY_TRADE_ID,
    DATA.IMPORTO_24 AS FAC_OUTSTANDING_AVAILABLE_AMT,
    DATA.TESTO_30 AS ACCOUNT,
    DATA.TESTO_31 AS PRODUCT,
    DATA.TESTO_32 AS CUST_CLASS
  FROM
	  RB_DRILL_INSTRUMENT DRILL
  INNER JOIN
	  FORM_DATI DATA
	  ON
		DRILL.OID_FORM_DATI = DATA.OID_FORM_DATI
  WHERE
	  DRILL.COD_SCENARIO = ${A2} 
	  AND DRILL.COD_PERIODO = ${B2}
	  AND DRILL.COD_AZIENDA IN (${$Entity.code})
	  AND DRILL.COD_CONTO IN (${$Account.code})
	  AND DRILL.COD_DEST1 IN (${$Cust_Dim1.code})
	  AND DRILL.COD_DEST2 IN (${$Cust_Dim2.code})
	  AND DRILL.COD_DEST3 IN (${$Cust_Dim3.code})
	  AND DRILL.COD_DEST4 IN (${$Cust_Dim4.code})
	  AND DRILL.COD_DEST5 IN (${$Cust_Dim5.code})
	  AND DRILL.COD_CATEGORIA IN (${$Category.code})
    AND DATA.COD_PROSPETTO = 'LOAN'
	UNION ALL
  SELECT
    DATA.COD_CONTO || DATA.COD_AZIENDA AS ROW_ID,	
    'ADJUSTMENT' AS REPORTING_ENTITY,
    ' ' AS INSTRUMENT,
    NULL AS INTERCOMPANY,
    NULL AS CALL_CODE,
    SUM(DATA.IMPORTO2) * 1000 AS BASE_EQUIVALENT,
    NULL AS CUSTOMER_ID,
    NULL AS CUSTOMER_NAME,
    NULL AS CUSTOMER_TYPE,
    NULL AS RELATED_DEP_INST_YESNO,
    NULL AS PURPOSE_CODE,
    NULL AS FOREIGN_DOMESTIC,
    NULL AS COUNTRY_DESC,
    NULL AS RISK_COUNTRY,
    NULL AS OPERATING_STATE,
    NULL AS DAY_COUNT_BASIS,
    NULL AS HIGHLVL_PROD_CAT,
    NULL AS GL_KEY_CODE,
    NULL AS PRINCIPAL_GL_US_GAAP_BASE_EQ,
    NULL AS ACC_INT_GL_US_GAAP_BASE_EQ,
    NULL AS DEF_FEES_GL_US_GAAP_BASE_EQ,
    NULL AS UNEARN_FEES_GL_US_GAAP_BASE_EQ,
    NULL AS SPCFC_RESRV_GL_US_GAAP_BASE_EQ,
    NULL AS INT_INC_GL_US_GAAP_BASE_EQ,
    NULL AS FEES_GL_US_GAAP_BASE_EQ,
    NULL AS CONSOL_NODE,
    NULL AS SUB_LE1,
    NULL AS SUB_LE2,
    DATA.COD_AZIENDA AS BUSINESS_UNIT,
    NULL AS LEGAL_CUST_TOTAL_COMMIT,
    NULL AS LEGAL_CUST_PRINC_FUNDED,
    NULL AS LEGAL_CUST_UNFUNDED_COMMIT,
    NULL AS BANK_SHARE_PRINC_US_GAAP,
    NULL AS BANK_SHARE_TOTAL_COMMIT,
    NULL AS BANK_SHARE_UNFUNDED_COMMIT,
    NULL AS BANK_SPECIFIC_RESRV_US_GAAP,
    NULL AS UNEARNED_FEES_US_GAAP,
    NULL AS CHARGED_OFF_US_GAAP,
    NULL AS ORIGINAL_PREMIUM_DISCOUNT,
    NULL AS REMAINING_PREMIUM_DISCOUNT,
    NULL AS ORIGINATION_DATE,
    NULL AS MATURITY_DATE,
    NULL AS REVOLVER_YN,
    NULL AS RATE_EFFECTIVE_DATE,
    NULL AS RATE_EXPIRATION_DATE,
    NULL AS INTEREST_RATE,
    NULL AS FIXED_OR_VARIABLE,
    NULL AS CUSTOMER_PARENT,
    NULL AS COF_FTP_RATE,
    NULL AS SPREAD,
    NULL AS PAST_DUE_YN,
    NULL AS TDR_YN,
    NULL AS DATE_TDR,
    NULL AS US_GAAP_RISK_RATING,
    NULL AS SYNDICATED_PARTICIPATED_LOAN,
    NULL AS AGENT_PARTICIPANT,
    NULL AS FACILITY_BORROWER_CIF,
    NULL AS FACILITY_TRADE_ID,
    NULL AS FAC_OUTSTANDING_AVAILABLE_AMT,
    NULL AS ACCOUNT,
    DATA.COD_DEST3 AS PRODUCT,
    DATA.COD_DEST4 AS CUST_CLASS
  FROM
	DATI_RETT_RIGA DATA
	LEFT OUTER JOIN
	DATI_RETT A
	ON
		DATA.COD_SCENARIO = A.COD_SCENARIO
		AND DATA.COD_PERIODO = A.COD_PERIODO
		AND DATA.NUM_RETTIFICA = A.NUM_RETTIFICA
	LEFT OUTER JOIN
	SCENARIO_PERIODO SP
	ON
		DATA.COD_SCENARIO = SP.COD_SCENARIO
		AND DATA.COD_PERIODO = SP.COD_PERIODO
  WHERE
	  DATA.COD_SCENARIO = ${A2}
	  AND DATA.COD_PERIODO = ${B2}
	  AND DATA.COD_AZIENDA IN (${$Entity.code})
	  AND DATA.COD_CONTO IN (${$Account.code})
	  AND DATA.COD_DEST1 IN (${$Cust_Dim1.code})
	  AND DATA.COD_DEST2 IN (${$Cust_Dim2.code})
	  AND DATA.COD_DEST3 IN (${$Cust_Dim3.code})
	  AND DATA.COD_DEST4 IN (${$Cust_Dim4.code})
	  AND DATA.COD_DEST5 IN (${$Cust_Dim5.code})
	  AND DATA.COD_CATEGORIA IN (${$Category.code})
  GROUP BY
    DATA.COD_CONTO || DATA.COD_AZIENDA,
    DATA.COD_VALUTA2,
    DATA.COD_AZIENDA,
    DATA.COD_DEST3,
    DATA.COD_DEST2,
    DATA.COD_AZI_CTP,
    DATA.COD_DEST4
  ) P
ON
  A.ROW_ID = P.ROW_ID
  AND A.REPORTING_ENTITY = P.REPORTING_ENTITY
  AND (A.INSTRUMENT = P.INSTRUMENT OR (A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NULL))