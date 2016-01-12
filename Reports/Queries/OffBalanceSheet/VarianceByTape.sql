SELECT
  COALESCE(A.REPORTING_ENTITY, P.REPORTING_ENTITY) AS REPORTING_ENTITY,
  COALESCE(A.INSTRUMENT, P.INSTRUMENT) AS INSTRUMENT,
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
      WHEN  A.BUSINESS_UNIT <> P.BUSINESS_UNIT
            OR A.BUSINESS_UNIT IS NULL AND P.BUSINESS_UNIT IS NOT NULL
            OR A.BUSINESS_UNIT IS NOT NULL AND P.BUSINESS_UNIT IS NULL
        THEN CAST('VARIANCE' AS VARCHAR(8))
      ELSE CAST('OK' AS VARCHAR(8))
    END AS BUSINESS_UNIT,
  CASE
      WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
        THEN CAST('OLD' AS VARCHAR(8))
     WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
        THEN CAST('NEW' AS VARCHAR(8))
      WHEN  A.CURRENCY_CODE <> P.CURRENCY_CODE
            OR A.CURRENCY_CODE IS NULL AND P.CURRENCY_CODE IS NOT NULL
            OR A.CURRENCY_CODE IS NOT NULL AND P.CURRENCY_CODE IS NULL
        THEN CAST('VARIANCE' AS VARCHAR(8))
      ELSE CAST('OK' AS VARCHAR(8))
    END AS CURRENCY_CODE,
  COALESCE(A.FOREIGN_AMOUNT,0) − COALESCE(P.FOREIGN_AMOUNT, 0) AS FOREIGN_AMOUNT,
  CASE
      WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
        THEN CAST('OLD' AS VARCHAR(8))
     WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
        THEN CAST('NEW' AS VARCHAR(8))
      WHEN  A.CURRENCY_USQ <> P.CURRENCY_USQ
            OR A.CURRENCY_USQ IS NULL AND P.CURRENCY_USQ IS NOT NULL
            OR A.CURRENCY_USQ IS NOT NULL AND P.CURRENCY_USQ IS NULL
        THEN CAST('VARIANCE' AS VARCHAR(8))
      ELSE CAST('OK' AS VARCHAR(8))
    END AS CURRENCY_USQ,
  COALESCE(A.BASE_EQUIVALENT,0) − COALESCE(P.BASE_EQUIVALENT, 0) AS BASE_EQUIVALENT,
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
      WHEN  A."DEPO_NON-DEPO" <> P."DEPO_NON-DEPO"
            OR A."DEPO_NON-DEPO" IS NULL AND P."DEPO_NON-DEPO" IS NOT NULL
            OR A."DEPO_NON-DEPO" IS NOT NULL AND P."DEPO_NON-DEPO" IS NULL
        THEN CAST('VARIANCE' AS VARCHAR(8))
      ELSE CAST('OK' AS VARCHAR(8))
    END AS "DEPO_NON-DEPO",
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
      WHEN  A.CANCELLABLE_Y_N <> P.CANCELLABLE_Y_N
            OR A.CANCELLABLE_Y_N IS NULL AND P.CANCELLABLE_Y_N IS NOT NULL
            OR A.CANCELLABLE_Y_N IS NOT NULL AND P.CANCELLABLE_Y_N IS NULL
        THEN CAST('VARIANCE' AS VARCHAR(8))
      ELSE CAST('OK' AS VARCHAR(8))
    END AS CANCELLABLE_Y_N,
  CASE
      WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
        THEN CAST('OLD' AS VARCHAR(8))
     WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
        THEN CAST('NEW' AS VARCHAR(8))
      WHEN  A.MATURITY_BUCKETS <> P.MATURITY_BUCKETS
            OR A.MATURITY_BUCKETS IS NULL AND P.MATURITY_BUCKETS IS NOT NULL
            OR A.MATURITY_BUCKETS IS NOT NULL AND P.MATURITY_BUCKETS IS NULL
        THEN CAST('VARIANCE' AS VARCHAR(8))
      ELSE CAST('OK' AS VARCHAR(8))
    END AS MATURITY_BUCKETS,
  COALESCE(A.SECURITIZATION_EXPO,0) − COALESCE(P.SECURITIZATION_EXPO, 0) AS SECURITIZATION_EXPO,
  COALESCE(A.CREDIT_CONVERSION_FACTOR,0) − COALESCE(P.CREDIT_CONVERSION_FACTOR, 0) AS CREDIT_CONVERSION_FACTOR,
  COALESCE(A.CREDIT_EQUIVALENT_AMT,0) − COALESCE(P.CREDIT_EQUIVALENT_AMT, 0) AS CREDIT_EQUIVALENT_AMT,
  CASE
      WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
        THEN CAST('OLD' AS VARCHAR(8))
     WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
        THEN CAST('NEW' AS VARCHAR(8))
      WHEN  A.RISK_COUNTRY_CODE <> P.RISK_COUNTRY_CODE
            OR A.RISK_COUNTRY_CODE IS NULL AND P.RISK_COUNTRY_CODE IS NOT NULL
            OR A.RISK_COUNTRY_CODE IS NOT NULL AND P.RISK_COUNTRY_CODE IS NULL
        THEN CAST('VARIANCE' AS VARCHAR(8))
      ELSE CAST('OK' AS VARCHAR(8))
    END AS RISK_COUNTRY_CODE,
  COALESCE(A.RISK_WEIGHTED_CATEGORY,0) − COALESCE(P.RISK_WEIGHTED_CATEGORY, 0) AS RISK_WEIGHTED_CATEGORY,
  COALESCE(A.RISK_WEIGHTED_ALLOCATION,0) − COALESCE(P.RISK_WEIGHTED_ALLOCATION, 0) AS RISK_WEIGHTED_ALLOCATION,
  COALESCE(A.ABCP_CONDUITS_AMT,0) − COALESCE(P.ABCP_CONDUITS_AMT, 0) AS ABCP_CONDUITS_AMT,
  CASE
      WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
        THEN CAST('OLD' AS VARCHAR(8))
     WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
        THEN CAST('NEW' AS VARCHAR(8))
      WHEN  A.TRADE_ID <> P.TRADE_ID
            OR A.TRADE_ID IS NULL AND P.TRADE_ID IS NOT NULL
            OR A.TRADE_ID IS NOT NULL AND P.TRADE_ID IS NULL
        THEN CAST('VARIANCE' AS VARCHAR(8))
      ELSE CAST('OK' AS VARCHAR(8))
    END AS TRADE_ID,
  CASE
      WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
        THEN CAST('OLD' AS VARCHAR(8))
     WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
        THEN CAST('NEW' AS VARCHAR(8))
      WHEN  A.REPORTABLE_Y_N <> P.REPORTABLE_Y_N
            OR A.REPORTABLE_Y_N IS NULL AND P.REPORTABLE_Y_N IS NOT NULL
            OR A.REPORTABLE_Y_N IS NOT NULL AND P.REPORTABLE_Y_N IS NULL
        THEN CAST('VARIANCE' AS VARCHAR(8))
      ELSE CAST('OK' AS VARCHAR(8))
    END AS REPORTABLE_Y_N,
  CASE
      WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
        THEN CAST('OLD' AS VARCHAR(8))
     WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
        THEN CAST('NEW' AS VARCHAR(8))
      WHEN  A.BU  <> P.BU 
            OR A.BU  IS NULL AND P.BU  IS NOT NULL
            OR A.BU  IS NOT NULL AND P.BU  IS NULL
        THEN CAST('VARIANCE' AS VARCHAR(8))
      ELSE CAST('OK' AS VARCHAR(8))
    END AS BU ,
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
  CASE
      WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
        THEN CAST('OLD' AS VARCHAR(8))
     WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
        THEN CAST('NEW' AS VARCHAR(8))
      WHEN  A.AFFILIATE <> P.AFFILIATE
            OR A.AFFILIATE IS NULL AND P.AFFILIATE IS NOT NULL
            OR A.AFFILIATE IS NOT NULL AND P.AFFILIATE IS NULL
        THEN CAST('VARIANCE' AS VARCHAR(8))
      ELSE CAST('OK' AS VARCHAR(8))
    END AS AFFILIATE,
  CASE
      WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
        THEN CAST('OLD' AS VARCHAR(8))
     WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
        THEN CAST('NEW' AS VARCHAR(8))
      WHEN  A.CIF_TYPE <> P.CIF_TYPE
            OR A.CIF_TYPE IS NULL AND P.CIF_TYPE IS NOT NULL
            OR A.CIF_TYPE IS NOT NULL AND P.CIF_TYPE IS NULL
        THEN CAST('VARIANCE' AS VARCHAR(8))
      ELSE CAST('OK' AS VARCHAR(8))
    END AS CIF_TYPE,
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
      WHEN  A.LOAN_CALL_CODE <> P.LOAN_CALL_CODE
            OR A.LOAN_CALL_CODE IS NULL AND P.LOAN_CALL_CODE IS NOT NULL
            OR A.LOAN_CALL_CODE IS NOT NULL AND P.LOAN_CALL_CODE IS NULL
        THEN CAST('VARIANCE' AS VARCHAR(8))
      ELSE CAST('OK' AS VARCHAR(8))
    END AS LOAN_CALL_CODE,
  CASE
      WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
        THEN CAST('OLD' AS VARCHAR(8))
     WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
        THEN CAST('NEW' AS VARCHAR(8))
      WHEN  A.FACILITY_TYPE_DESC <> P.FACILITY_TYPE_DESC
            OR A.FACILITY_TYPE_DESC IS NULL AND P.FACILITY_TYPE_DESC IS NOT NULL
            OR A.FACILITY_TYPE_DESC IS NOT NULL AND P.FACILITY_TYPE_DESC IS NULL
        THEN CAST('VARIANCE' AS VARCHAR(8))
      ELSE CAST('OK' AS VARCHAR(8))
    END AS FACILITY_TYPE_DESC,
  CASE
      WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
        THEN CAST('OLD' AS VARCHAR(8))
     WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
        THEN CAST('NEW' AS VARCHAR(8))
      WHEN  A.CALL_CODE_CODEBLOCK <> P.CALL_CODE_CODEBLOCK
            OR A.CALL_CODE_CODEBLOCK IS NULL AND P.CALL_CODE_CODEBLOCK IS NOT NULL
            OR A.CALL_CODE_CODEBLOCK IS NOT NULL AND P.CALL_CODE_CODEBLOCK IS NULL
        THEN CAST('VARIANCE' AS VARCHAR(8))
      ELSE CAST('OK' AS VARCHAR(8))
    END AS CALL_CODE_CODEBLOCK,
  CASE
      WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
        THEN CAST('OLD' AS VARCHAR(8))
     WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
        THEN CAST('NEW' AS VARCHAR(8))
      WHEN  A.CCF_CODEBLOCK <> P.CCF_CODEBLOCK
            OR A.CCF_CODEBLOCK IS NULL AND P.CCF_CODEBLOCK IS NOT NULL
            OR A.CCF_CODEBLOCK IS NOT NULL AND P.CCF_CODEBLOCK IS NULL
        THEN CAST('VARIANCE' AS VARCHAR(8))
      ELSE CAST('OK' AS VARCHAR(8))
    END AS CCF_CODEBLOCK
FROM
(
  SELECT
    ROW_NUMBER() OVER (PARTITION BY
      H.REPORTING_ENTITY,
      H.INSTRUMENT
      ORDER BY
        H.CALL_CODE,
        H.CALL_CODE_DESC,
        H.GL_KEY_CODE,
        H.GL_KEY_CODE_DESC,
        H.CONSOL_NODE,
        H.BUSINESS_UNIT,
        H.CURRENCY_CODE,
        H.FOREIGN_AMOUNT,
        H.CURRENCY_USQ,
        H.BASE_EQUIVALENT,
        H.ORIGINATION_DATE,
        H.MATURITY_DATE,
        H.REMAINING_MATURITY_DAYS,
        H.FRONTED_UNFUNDED_PARTICIPANTS,
        H.CUSTOMER_ID,
        H.CUSTOMER_NAME,
        H."DEPO_NON-DEPO",
        H.FOREIGN_DOMESTIC,
        H.CANCELLABLE_Y_N,
        H.MATURITY_BUCKETS,
        H.SECURITIZATION_EXPO,
        H.CREDIT_CONVERSION_FACTOR,
        H.CREDIT_EQUIVALENT_AMT,
        H.RISK_COUNTRY,
        H.RISK_COUNTRY_CODE,
        H.RISK_WEIGHTED_CATEGORY,
        H.RISK_WEIGHTED_ALLOCATION,
        H.UMD_1,
        H.UMD_2,
        H.UMD_3,
        H.SECURED_Y_N,
        H.GUARANTEED_Y_N,
        H.GOVT_GUARANTEED_PERCENTAGE ,
        H.QUALIFIED_CENTRAL_CPT_Y_N,
        H.ABCP_CONDUITS_AMT,
        H.SOVERIGN_DEFAULT_Y_N,
        H.CRC_RATING_OF_OECD_EXPOSURES,
        H.US_GAAP_RISK_RATING,
        H.IFRS_RISK_RATING,
        H.FACILITY_LIMIT_AMOUNT,
        H.FACILITY_USED_AMOUNT,
        H.SYNDICATED_RABOSHARE,
        H."SYNDICATED_RABOSHARE_%",
        H.SYNDICATED_PARTICIPANTS,
        H."SYNDICATED_PARTICIPANTS_%",
        H.SOURCE,
        H.UMD_4,
        H.UMD_5,
        H.UMD_6,
        H.TRADE_ID,
        H.REPORTABLE_Y_N,
        H.BU ,
        H.ACCOUNT,
        H.PRODUCT,
        H.OPERATING_UNIT,
        H.DEPTID,
        H.CUST_CLASS,
        H.AFFILIATE,
        H.CIF_TYPE,
        H.CUSTOMER_TYPE,
        H.LOAN_CALL_CODE,
        H.PRODUCT_GROUP,
        H.FACILITY_TYPE,
        H.FACILITY_TYPE_DESC,
        H.CALL_CODE_CODEBLOCK,
        H.CCF_CODEBLOCK,
        H.FILLER_1,
        H.FILLER_2,
        H.FILLER_3,
        H.FILLER_4,
        H.FILLER_5,
        H.FILLER_6,
        H.FILLER_7,
        H.FILLER_8,
        H.FILLER_9,
        H.FILLER_10,
        H.FILLER_11,
        H.FILLER_12,
        H.FILLER_13,
        H.FILLER_14,
        H.FILLER_15,
        H.FILLER_16,
        H.FILLER_17,
        H.FILLER_18,
        H.FILLER_19,
        H.FILLER_20,
        H.FILLER_21,
        H.FILLER_22,
        H.FILLER_23,
        H.FILLER_24,
        H.FILLER_25
    ) AS ROW_ID,
    H.MONTH_END_DATE,
    REPORTING_ENTITY,
    INSTRUMENT,
    CALL_CODE,
    CALL_CODE_DESC,
    GL_KEY_CODE,
    GL_KEY_CODE_DESC,
    CONSOL_NODE,
    BUSINESS_UNIT,
    CURRENCY_CODE,
    FOREIGN_AMOUNT,
    CURRENCY_USQ,
    BASE_EQUIVALENT,
    ORIGINATION_DATE,
    MATURITY_DATE,
    REMAINING_MATURITY_DAYS,
    FRONTED_UNFUNDED_PARTICIPANTS,
    CUSTOMER_ID,
    CUSTOMER_NAME,
    "DEPO_NON-DEPO",
    FOREIGN_DOMESTIC,
    CANCELLABLE_Y_N,
    MATURITY_BUCKETS,
    SECURITIZATION_EXPO,
    CREDIT_CONVERSION_FACTOR,
    CREDIT_EQUIVALENT_AMT,
    RISK_COUNTRY,
    RISK_COUNTRY_CODE,
    RISK_WEIGHTED_CATEGORY,
    RISK_WEIGHTED_ALLOCATION,
    UMD_1,
    UMD_2,
    UMD_3,
    SECURED_Y_N,
    GUARANTEED_Y_N,
    GOVT_GUARANTEED_PERCENTAGE ,
    QUALIFIED_CENTRAL_CPT_Y_N,
    ABCP_CONDUITS_AMT,
    SOVERIGN_DEFAULT_Y_N,
    CRC_RATING_OF_OECD_EXPOSURES,
    US_GAAP_RISK_RATING,
    IFRS_RISK_RATING,
    FACILITY_LIMIT_AMOUNT,
    FACILITY_USED_AMOUNT,
    SYNDICATED_RABOSHARE,
    "SYNDICATED_RABOSHARE_%",
    SYNDICATED_PARTICIPANTS,
    "SYNDICATED_PARTICIPANTS_%",
    SOURCE,
    UMD_4,
    UMD_5,
    UMD_6,
    TRADE_ID,
    REPORTABLE_Y_N,
    BU ,
    ACCOUNT,
    PRODUCT,
    OPERATING_UNIT,
    DEPTID,
    CUST_CLASS,
    AFFILIATE,
    CIF_TYPE,
    CUSTOMER_TYPE,
    LOAN_CALL_CODE,
    PRODUCT_GROUP,
    FACILITY_TYPE,
    FACILITY_TYPE_DESC,
    CALL_CODE_CODEBLOCK,
    CCF_CODEBLOCK,
    FILLER_1,
    FILLER_2,
    FILLER_3,
    FILLER_4,
    FILLER_5,
    FILLER_6,
    FILLER_7,
    FILLER_8,
    FILLER_9,
    FILLER_10,
    FILLER_11,
    FILLER_12,
    FILLER_13,
    FILLER_14,
    FILLER_15,
    FILLER_16,
    FILLER_17,
    FILLER_18,
    FILLER_19,
    FILLER_20,
    FILLER_21,
    FILLER_22,
    FILLER_23,
    FILLER_24,
    FILLER_25
  FROM
    RB_V_OFF_BS H
    INNER JOIN
    (
      SELECT DISTINCT
        DATA_1 AS MONTH_END_DATE
      FROM
        FORM_DATI
      WHERE
        COD_SCENARIO = ${A1}
        AND COD_PERIODO = ${B1}
        AND COD_PROSPETTO = 'OFF_BS'
    ) F
   ON
     H.MONTH_END_DATE = F.MONTH_END_DATE
  ) A
FULL OUTER JOIN
(
  SELECT
    ROW_NUMBER() OVER (PARTITION BY
      H.REPORTING_ENTITY,
      H.INSTRUMENT
      ORDER BY
        H.CALL_CODE,
        H.CALL_CODE_DESC,
        H.GL_KEY_CODE,
        H.GL_KEY_CODE_DESC,
        H.CONSOL_NODE,
        H.BUSINESS_UNIT,
        H.CURRENCY_CODE,
        H.FOREIGN_AMOUNT,
        H.CURRENCY_USQ,
        H.BASE_EQUIVALENT,
        H.ORIGINATION_DATE,
        H.MATURITY_DATE,
        H.REMAINING_MATURITY_DAYS,
        H.FRONTED_UNFUNDED_PARTICIPANTS,
        H.CUSTOMER_ID,
        H.CUSTOMER_NAME,
        H."DEPO_NON-DEPO",
        H.FOREIGN_DOMESTIC,
        H.CANCELLABLE_Y_N,
        H.MATURITY_BUCKETS,
        H.SECURITIZATION_EXPO,
        H.CREDIT_CONVERSION_FACTOR,
        H.CREDIT_EQUIVALENT_AMT,
        H.RISK_COUNTRY,
        H.RISK_COUNTRY_CODE,
        H.RISK_WEIGHTED_CATEGORY,
        H.RISK_WEIGHTED_ALLOCATION,
        H.UMD_1,
        H.UMD_2,
        H.UMD_3,
        H.SECURED_Y_N,
        H.GUARANTEED_Y_N,
        H.GOVT_GUARANTEED_PERCENTAGE ,
        H.QUALIFIED_CENTRAL_CPT_Y_N,
        H.ABCP_CONDUITS_AMT,
        H.SOVERIGN_DEFAULT_Y_N,
        H.CRC_RATING_OF_OECD_EXPOSURES,
        H.US_GAAP_RISK_RATING,
        H.IFRS_RISK_RATING,
        H.FACILITY_LIMIT_AMOUNT,
        H.FACILITY_USED_AMOUNT,
        H.SYNDICATED_RABOSHARE,
        H."SYNDICATED_RABOSHARE_%",
        H.SYNDICATED_PARTICIPANTS,
        H."SYNDICATED_PARTICIPANTS_%",
        H.SOURCE,
        H.UMD_4,
        H.UMD_5,
        H.UMD_6,
        H.TRADE_ID,
        H.REPORTABLE_Y_N,
        H.BU ,
        H.ACCOUNT,
        H.PRODUCT,
        H.OPERATING_UNIT,
        H.DEPTID,
        H.CUST_CLASS,
        H.AFFILIATE,
        H.CIF_TYPE,
        H.CUSTOMER_TYPE,
        H.LOAN_CALL_CODE,
        H.PRODUCT_GROUP,
        H.FACILITY_TYPE,
        H.FACILITY_TYPE_DESC,
        H.CALL_CODE_CODEBLOCK,
        H.CCF_CODEBLOCK,
        H.FILLER_1,
        H.FILLER_2,
        H.FILLER_3,
        H.FILLER_4,
        H.FILLER_5,
        H.FILLER_6,
        H.FILLER_7,
        H.FILLER_8,
        H.FILLER_9,
        H.FILLER_10,
        H.FILLER_11,
        H.FILLER_12,
        H.FILLER_13,
        H.FILLER_14,
        H.FILLER_15,
        H.FILLER_16,
        H.FILLER_17,
        H.FILLER_18,
        H.FILLER_19,
        H.FILLER_20,
        H.FILLER_21,
        H.FILLER_22,
        H.FILLER_23,
        H.FILLER_24,
        H.FILLER_25
    ) AS ROW_ID,
    H.MONTH_END_DATE,
    REPORTING_ENTITY,
    INSTRUMENT,
    CALL_CODE,
    CALL_CODE_DESC,
    GL_KEY_CODE,
    GL_KEY_CODE_DESC,
    CONSOL_NODE,
    BUSINESS_UNIT,
    CURRENCY_CODE,
    FOREIGN_AMOUNT,
    CURRENCY_USQ,
    BASE_EQUIVALENT,
    ORIGINATION_DATE,
    MATURITY_DATE,
    REMAINING_MATURITY_DAYS,
    FRONTED_UNFUNDED_PARTICIPANTS,
    CUSTOMER_ID,
    CUSTOMER_NAME,
    "DEPO_NON-DEPO",
    FOREIGN_DOMESTIC,
    CANCELLABLE_Y_N,
    MATURITY_BUCKETS,
    SECURITIZATION_EXPO,
    CREDIT_CONVERSION_FACTOR,
    CREDIT_EQUIVALENT_AMT,
    RISK_COUNTRY,
    RISK_COUNTRY_CODE,
    RISK_WEIGHTED_CATEGORY,
    RISK_WEIGHTED_ALLOCATION,
    UMD_1,
    UMD_2,
    UMD_3,
    SECURED_Y_N,
    GUARANTEED_Y_N,
    GOVT_GUARANTEED_PERCENTAGE ,
    QUALIFIED_CENTRAL_CPT_Y_N,
    ABCP_CONDUITS_AMT,
    SOVERIGN_DEFAULT_Y_N,
    CRC_RATING_OF_OECD_EXPOSURES,
    US_GAAP_RISK_RATING,
    IFRS_RISK_RATING,
    FACILITY_LIMIT_AMOUNT,
    FACILITY_USED_AMOUNT,
    SYNDICATED_RABOSHARE,
    "SYNDICATED_RABOSHARE_%",
    SYNDICATED_PARTICIPANTS,
    "SYNDICATED_PARTICIPANTS_%",
    SOURCE,
    UMD_4,
    UMD_5,
    UMD_6,
    TRADE_ID,
    REPORTABLE_Y_N,
    BU ,
    ACCOUNT,
    PRODUCT,
    OPERATING_UNIT,
    DEPTID,
    CUST_CLASS,
    AFFILIATE,
    CIF_TYPE,
    CUSTOMER_TYPE,
    LOAN_CALL_CODE,
    PRODUCT_GROUP,
    FACILITY_TYPE,
    FACILITY_TYPE_DESC,
    CALL_CODE_CODEBLOCK,
    CCF_CODEBLOCK,
    FILLER_1,
    FILLER_2,
    FILLER_3,
    FILLER_4,
    FILLER_5,
    FILLER_6,
    FILLER_7,
    FILLER_8,
    FILLER_9,
    FILLER_10,
    FILLER_11,
    FILLER_12,
    FILLER_13,
    FILLER_14,
    FILLER_15,
    FILLER_16,
    FILLER_17,
    FILLER_18,
    FILLER_19,
    FILLER_20,
    FILLER_21,
    FILLER_22,
    FILLER_23,
    FILLER_24,
    FILLER_25
  FROM
    RB_V_OFF_BS H
    INNER JOIN
    (
      SELECT DISTINCT
        DATA_1 AS MONTH_END_DATE
      FROM
        FORM_DATI
      WHERE
        COD_SCENARIO = ${A2}
        AND COD_PERIODO = ${B2}
        AND COD_PROSPETTO = 'OFF_BS'
    ) F
   ON
     H.MONTH_END_DATE = F.MONTH_END_DATE
) P
ON
  A.ROW_ID = P.ROW_ID
  AND A.REPORTING_ENTITY = P.REPORTING_ENTITY
  AND (A.INSTRUMENT = P.INSTRUMENT OR (A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NULL))