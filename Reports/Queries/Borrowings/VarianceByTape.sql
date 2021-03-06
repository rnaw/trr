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
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.CALL_CODE_DESC <> P.CALL_CODE_DESC
              OR A.CALL_CODE_DESC IS NULL AND P.CALL_CODE_DESC IS NOT NULL
              OR A.CALL_CODE_DESC IS NOT NULL AND P.CALL_CODE_DESC IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS CALL_CODE_DESC,
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
        WHEN  A.GL_KEY_CODE_DESC <> P.GL_KEY_CODE_DESC
              OR A.GL_KEY_CODE_DESC IS NULL AND P.GL_KEY_CODE_DESC IS NOT NULL
              OR A.GL_KEY_CODE_DESC IS NOT NULL AND P.GL_KEY_CODE_DESC IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS GL_KEY_CODE_DESC,
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
    COALESCE(A.FOREIGN_AMOUNT,0) - COALESCE(P.FOREIGN_AMOUNT, 0) AS FOREIGN_AMOUNT,
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
    COALESCE(A.BASE_EQUIVALENT,0) - COALESCE(P.BASE_EQUIVALENT, 0) AS BASE_EQUIVALENT,
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
    COALESCE(A.REMAINING_MATURITY_DAYS,0) - COALESCE(P.REMAINING_MATURITY_DAYS, 0) AS REMAINING_MATURITY_DAYS,
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
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.MATURITY_BUCKETS_2 <> P.MATURITY_BUCKETS_2
              OR A.MATURITY_BUCKETS_2 IS NULL AND P.MATURITY_BUCKETS_2 IS NOT NULL
              OR A.MATURITY_BUCKETS_2 IS NOT NULL AND P.MATURITY_BUCKETS_2 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS MATURITY_BUCKETS_2,
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
    COALESCE(A.PRINCIPAL_ORIG_CCY,0) - COALESCE(P.PRINCIPAL_ORIG_CCY, 0) AS PRINCIPAL_ORIG_CCY,
    COALESCE(A.DISCOUNT_GIVEN_ORIG_CCY,0) - COALESCE(P.DISCOUNT_GIVEN_ORIG_CCY, 0) AS DISCOUNT_GIVEN_ORIG_CCY,
    COALESCE(A.OVERDRAFT_CASH_ORIG_CCY,0) - COALESCE(P.OVERDRAFT_CASH_ORIG_CCY, 0) AS OVERDRAFT_CASH_ORIG_CCY,
    COALESCE(A.PRINCIPAL_BASE_EQ,0) - COALESCE(P.PRINCIPAL_BASE_EQ, 0) AS PRINCIPAL_BASE_EQ,
    COALESCE(A.DISCOUNT_GIVEN_BASE_EQ,0) - COALESCE(P.DISCOUNT_GIVEN_BASE_EQ, 0) AS DISCOUNT_GIVEN_BASE_EQ,
    COALESCE(A.OVERDRAFT_CASH_BASE_EQ,0) - COALESCE(P.OVERDRAFT_CASH_BASE_EQ, 0) AS OVERDRAFT_CASH_BASE_EQ,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.PROD_TYPE_DESC <> P.PROD_TYPE_DESC
              OR A.PROD_TYPE_DESC IS NULL AND P.PROD_TYPE_DESC IS NOT NULL
              OR A.PROD_TYPE_DESC IS NOT NULL AND P.PROD_TYPE_DESC IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS PROD_TYPE_DESC,
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
    COALESCE(A.UMD_1,0) - COALESCE(P.UMD_1, 0) AS UMD_1,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.SOURCE <> P.SOURCE
              OR A.SOURCE IS NULL AND P.SOURCE IS NOT NULL
              OR A.SOURCE IS NOT NULL AND P.SOURCE IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS SOURCE,
    COALESCE(A.UMD_2,0) - COALESCE(P.UMD_2, 0) AS UMD_2,
    COALESCE(A.UMD_3,0) - COALESCE(P.UMD_3, 0) AS UMD_3,
    COALESCE(A.UMD_4,0) - COALESCE(P.UMD_4, 0) AS UMD_4,
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
        WHEN  A.BU <> P.BU
              OR A.BU IS NULL AND P.BU IS NOT NULL
              OR A.BU IS NOT NULL AND P.BU IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS BU,
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
        WHEN  A.OPERATING_UNIT <> P.OPERATING_UNIT
              OR A.OPERATING_UNIT IS NULL AND P.OPERATING_UNIT IS NOT NULL
              OR A.OPERATING_UNIT IS NOT NULL AND P.OPERATING_UNIT IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS OPERATING_UNIT,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.DEPTID <> P.DEPTID
              OR A.DEPTID IS NULL AND P.DEPTID IS NOT NULL
              OR A.DEPTID IS NOT NULL AND P.DEPTID IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS DEPTID,
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
        WHEN  A.CIF_TYPE_DESCRIPTION <> P.CIF_TYPE_DESCRIPTION
              OR A.CIF_TYPE_DESCRIPTION IS NULL AND P.CIF_TYPE_DESCRIPTION IS NOT NULL
              OR A.CIF_TYPE_DESCRIPTION IS NOT NULL AND P.CIF_TYPE_DESCRIPTION IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS CIF_TYPE_DESCRIPTION,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.DISC_GIVEN_CALL_CODE_CODEBLOCK <> P.DISC_GIVEN_CALL_CODE_CODEBLOCK
              OR A.DISC_GIVEN_CALL_CODE_CODEBLOCK IS NULL AND P.DISC_GIVEN_CALL_CODE_CODEBLOCK IS NOT NULL
              OR A.DISC_GIVEN_CALL_CODE_CODEBLOCK IS NOT NULL AND P.DISC_GIVEN_CALL_CODE_CODEBLOCK IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS DISC_GIVEN_CALL_CODE_CODEBLOCK,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.OVRDRFT_CASH_CALL_CODE_CODEBLK <> P.OVRDRFT_CASH_CALL_CODE_CODEBLK
              OR A.OVRDRFT_CASH_CALL_CODE_CODEBLK IS NULL AND P.OVRDRFT_CASH_CALL_CODE_CODEBLK IS NOT NULL
              OR A.OVRDRFT_CASH_CALL_CODE_CODEBLK IS NOT NULL AND P.OVRDRFT_CASH_CALL_CODE_CODEBLK IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS OVRDRFT_CASH_CALL_CODE_CODEBLK,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_1 <> P.FILLER_1
              OR A.FILLER_1 IS NULL AND P.FILLER_1 IS NOT NULL
              OR A.FILLER_1 IS NOT NULL AND P.FILLER_1 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_1,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_2_ORIGINATION_DATE <> P.FILLER_2_ORIGINATION_DATE
              OR A.FILLER_2_ORIGINATION_DATE IS NULL AND P.FILLER_2_ORIGINATION_DATE IS NOT NULL
              OR A.FILLER_2_ORIGINATION_DATE IS NOT NULL AND P.FILLER_2_ORIGINATION_DATE IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_2_ORIGINATION_DATE,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_3_ORIGINAL_MATURITY <> P.FILLER_3_ORIGINAL_MATURITY
              OR A.FILLER_3_ORIGINAL_MATURITY IS NULL AND P.FILLER_3_ORIGINAL_MATURITY IS NOT NULL
              OR A.FILLER_3_ORIGINAL_MATURITY IS NOT NULL AND P.FILLER_3_ORIGINAL_MATURITY IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_3_ORIGINAL_MATURITY,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_4_CUSTOMER_NAME <> P.FILLER_4_CUSTOMER_NAME
              OR A.FILLER_4_CUSTOMER_NAME IS NULL AND P.FILLER_4_CUSTOMER_NAME IS NOT NULL
              OR A.FILLER_4_CUSTOMER_NAME IS NOT NULL AND P.FILLER_4_CUSTOMER_NAME IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_4_CUSTOMER_NAME,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_5_SECURED_BORROWINGS <> P.FILLER_5_SECURED_BORROWINGS
              OR A.FILLER_5_SECURED_BORROWINGS IS NULL AND P.FILLER_5_SECURED_BORROWINGS IS NOT NULL
              OR A.FILLER_5_SECURED_BORROWINGS IS NOT NULL AND P.FILLER_5_SECURED_BORROWINGS IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_5_SECURED_BORROWINGS,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_6_IBF_ONLY_COLUMN_YN <> P.FILLER_6_IBF_ONLY_COLUMN_YN
              OR A.FILLER_6_IBF_ONLY_COLUMN_YN IS NULL AND P.FILLER_6_IBF_ONLY_COLUMN_YN IS NOT NULL
              OR A.FILLER_6_IBF_ONLY_COLUMN_YN IS NOT NULL AND P.FILLER_6_IBF_ONLY_COLUMN_YN IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_6_IBF_ONLY_COLUMN_YN,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_7_RES_COUNTRY <> P.FILLER_7_RES_COUNTRY
              OR A.FILLER_7_RES_COUNTRY IS NULL AND P.FILLER_7_RES_COUNTRY IS NOT NULL
              OR A.FILLER_7_RES_COUNTRY IS NOT NULL AND P.FILLER_7_RES_COUNTRY IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_7_RES_COUNTRY,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_8_RISK_COUNTRY <> P.FILLER_8_RISK_COUNTRY
              OR A.FILLER_8_RISK_COUNTRY IS NULL AND P.FILLER_8_RISK_COUNTRY IS NOT NULL
              OR A.FILLER_8_RISK_COUNTRY IS NOT NULL AND P.FILLER_8_RISK_COUNTRY IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_8_RISK_COUNTRY,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_9 <> P.FILLER_9
              OR A.FILLER_9 IS NULL AND P.FILLER_9 IS NOT NULL
              OR A.FILLER_9 IS NOT NULL AND P.FILLER_9 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_9,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_10 <> P.FILLER_10
              OR A.FILLER_10 IS NULL AND P.FILLER_10 IS NOT NULL
              OR A.FILLER_10 IS NOT NULL AND P.FILLER_10 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_10,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_11 <> P.FILLER_11
              OR A.FILLER_11 IS NULL AND P.FILLER_11 IS NOT NULL
              OR A.FILLER_11 IS NOT NULL AND P.FILLER_11 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_11,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_12 <> P.FILLER_12
              OR A.FILLER_12 IS NULL AND P.FILLER_12 IS NOT NULL
              OR A.FILLER_12 IS NOT NULL AND P.FILLER_12 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_12,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_13 <> P.FILLER_13
              OR A.FILLER_13 IS NULL AND P.FILLER_13 IS NOT NULL
              OR A.FILLER_13 IS NOT NULL AND P.FILLER_13 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_13,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_14 <> P.FILLER_14
              OR A.FILLER_14 IS NULL AND P.FILLER_14 IS NOT NULL
              OR A.FILLER_14 IS NOT NULL AND P.FILLER_14 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_14,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_15 <> P.FILLER_15
              OR A.FILLER_15 IS NULL AND P.FILLER_15 IS NOT NULL
              OR A.FILLER_15 IS NOT NULL AND P.FILLER_15 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_15,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_16 <> P.FILLER_16
              OR A.FILLER_16 IS NULL AND P.FILLER_16 IS NOT NULL
              OR A.FILLER_16 IS NOT NULL AND P.FILLER_16 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_16,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_17 <> P.FILLER_17
              OR A.FILLER_17 IS NULL AND P.FILLER_17 IS NOT NULL
              OR A.FILLER_17 IS NOT NULL AND P.FILLER_17 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_17,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_18 <> P.FILLER_18
              OR A.FILLER_18 IS NULL AND P.FILLER_18 IS NOT NULL
              OR A.FILLER_18 IS NOT NULL AND P.FILLER_18 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_18,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_19 <> P.FILLER_19
              OR A.FILLER_19 IS NULL AND P.FILLER_19 IS NOT NULL
              OR A.FILLER_19 IS NOT NULL AND P.FILLER_19 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_19,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_20 <> P.FILLER_20
              OR A.FILLER_20 IS NULL AND P.FILLER_20 IS NOT NULL
              OR A.FILLER_20 IS NOT NULL AND P.FILLER_20 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_20,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_21 <> P.FILLER_21
              OR A.FILLER_21 IS NULL AND P.FILLER_21 IS NOT NULL
              OR A.FILLER_21 IS NOT NULL AND P.FILLER_21 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_21,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_22 <> P.FILLER_22
              OR A.FILLER_22 IS NULL AND P.FILLER_22 IS NOT NULL
              OR A.FILLER_22 IS NOT NULL AND P.FILLER_22 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_22,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_23 <> P.FILLER_23
              OR A.FILLER_23 IS NULL AND P.FILLER_23 IS NOT NULL
              OR A.FILLER_23 IS NOT NULL AND P.FILLER_23 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_23,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_24 <> P.FILLER_24
              OR A.FILLER_24 IS NULL AND P.FILLER_24 IS NOT NULL
              OR A.FILLER_24 IS NOT NULL AND P.FILLER_24 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_24,
    CASE
        WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
          THEN CAST('OLD' AS VARCHAR(8))
       WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
          THEN CAST('NEW' AS VARCHAR(8))
        WHEN  A.FILLER_25 <> P.FILLER_25
              OR A.FILLER_25 IS NULL AND P.FILLER_25 IS NOT NULL
              OR A.FILLER_25 IS NOT NULL AND P.FILLER_25 IS NULL
          THEN CAST('VARIANCE' AS VARCHAR(8))
        ELSE CAST('OK' AS VARCHAR(8))
      END AS FILLER_25
FROM
(
  SELECT
    ROW_NUMBER() OVER (PARTITION BY
      H.REPORTING_ENTITY,
      H.INSTRUMENT
      ORDER BY
        H.INTERCOMPANY,
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
        H.MATURITY_DATE,
        H.REMAINING_MATURITY_DAYS,
        H.MATURITY_BUCKETS,
        H.MATURITY_BUCKETS_2,
        H.CUSTOMER_ID,
        H."DEPO_NON-DEPO",
        H.FOREIGN_DOMESTIC,
        H.PRINCIPAL_ORIG_CCY,
        H.DISCOUNT_GIVEN_ORIG_CCY,
        H.OVERDRAFT_CASH_ORIG_CCY,
        H.PRINCIPAL_BASE_EQ,
        H.DISCOUNT_GIVEN_BASE_EQ,
        H.OVERDRAFT_CASH_BASE_EQ,
        H.PROD_TYPE_DESC,
        H.CUSTOMER_TYPE,
        H.UMD_1,
        H.SOURCE,
        H.UMD_2,
        H.UMD_3,
        H.UMD_4,
        H.TRADE_ID,
        H.REPORTABLE_Y_N,
        H.BU,
        H.ACCOUNT,
        H.PRODUCT,
        H.OPERATING_UNIT,
        H.DEPTID,
        H.CUST_CLASS,
        H.AFFILIATE,
        H.CIF_TYPE,
        H.CIF_TYPE_DESCRIPTION,
        H.DISC_GIVEN_CALL_CODE_CODEBLOCK,
        H.OVRDRFT_CASH_CALL_CODE_CODEBLK,
        H.FILLER_1,
        H.FILLER_2_ORIGINATION_DATE,
        H.FILLER_3_ORIGINAL_MATURITY,
        H.FILLER_4_CUSTOMER_NAME,
        H.FILLER_5_SECURED_BORROWINGS,
        H.FILLER_6_IBF_ONLY_COLUMN_YN,
        H.FILLER_7_RES_COUNTRY,
        H.FILLER_8_RISK_COUNTRY,
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
    REPORTING_ENTITY,
    INSTRUMENT,
    INTERCOMPANY,
    CALL_CODE,
    CALL_CODE_DESC,
    GL_KEY_CODE,
    GL_KEY_CODE_DESC,
    CONSOL_NODE,
    H.BUSINESS_UNIT,
    CURRENCY_CODE,
    FOREIGN_AMOUNT,
    CURRENCY_USQ,
    BASE_EQUIVALENT,
    MATURITY_DATE,
    REMAINING_MATURITY_DAYS,
    MATURITY_BUCKETS,
    MATURITY_BUCKETS_2,
    CUSTOMER_ID,
    "DEPO_NON-DEPO",
    FOREIGN_DOMESTIC,
    PRINCIPAL_ORIG_CCY,
    DISCOUNT_GIVEN_ORIG_CCY,
    OVERDRAFT_CASH_ORIG_CCY,
    PRINCIPAL_BASE_EQ,
    DISCOUNT_GIVEN_BASE_EQ,
    OVERDRAFT_CASH_BASE_EQ,
    PROD_TYPE_DESC,
    CUSTOMER_TYPE,
    UMD_1,
    SOURCE,
    UMD_2,
    UMD_3,
    UMD_4,
    TRADE_ID,
    REPORTABLE_Y_N,
    BU,
    ACCOUNT,
    PRODUCT,
    OPERATING_UNIT,
    DEPTID,
    CUST_CLASS,
    AFFILIATE,
    CIF_TYPE,
    CIF_TYPE_DESCRIPTION,
    DISC_GIVEN_CALL_CODE_CODEBLOCK,
    OVRDRFT_CASH_CALL_CODE_CODEBLK,
    FILLER_1,
    FILLER_2_ORIGINATION_DATE,
    FILLER_3_ORIGINAL_MATURITY,
    FILLER_4_CUSTOMER_NAME,
    FILLER_5_SECURED_BORROWINGS,
    FILLER_6_IBF_ONLY_COLUMN_YN,
    FILLER_7_RES_COUNTRY,
    FILLER_8_RISK_COUNTRY,
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
    RB_V_BORROWINGS H
    INNER JOIN
    (
      SELECT DISTINCT
        DATA_1 AS MONTH_END_DATE,
        COD_AZIENDA AS BUSINESS_UNIT
      FROM
        FORM_DATI
      WHERE
        COD_SCENARIO = ${A1}
        AND COD_PERIODO = ${B1}
        AND COD_PROSPETTO = 'BORROWINGS'
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
    ) F
   ON
     H.MONTH_END_DATE = F.MONTH_END_DATE
     AND RB_F_TGK_SANITIZE_CODE(H.BUSINESS_UNIT) = F.BUSINESS_UNIT
  ) A
FULL OUTER JOIN
(
  SELECT
    ROW_NUMBER() OVER (PARTITION BY
      H.REPORTING_ENTITY,
      H.INSTRUMENT
      ORDER BY
        H.INTERCOMPANY,
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
        H.MATURITY_DATE,
        H.REMAINING_MATURITY_DAYS,
        H.MATURITY_BUCKETS,
        H.MATURITY_BUCKETS_2,
        H.CUSTOMER_ID,
        H."DEPO_NON-DEPO",
        H.FOREIGN_DOMESTIC,
        H.PRINCIPAL_ORIG_CCY,
        H.DISCOUNT_GIVEN_ORIG_CCY,
        H.OVERDRAFT_CASH_ORIG_CCY,
        H.PRINCIPAL_BASE_EQ,
        H.DISCOUNT_GIVEN_BASE_EQ,
        H.OVERDRAFT_CASH_BASE_EQ,
        H.PROD_TYPE_DESC,
        H.CUSTOMER_TYPE,
        H.UMD_1,
        H.SOURCE,
        H.UMD_2,
        H.UMD_3,
        H.UMD_4,
        H.TRADE_ID,
        H.REPORTABLE_Y_N,
        H.BU,
        H.ACCOUNT,
        H.PRODUCT,
        H.OPERATING_UNIT,
        H.DEPTID,
        H.CUST_CLASS,
        H.AFFILIATE,
        H.CIF_TYPE,
        H.CIF_TYPE_DESCRIPTION,
        H.DISC_GIVEN_CALL_CODE_CODEBLOCK,
        H.OVRDRFT_CASH_CALL_CODE_CODEBLK,
        H.FILLER_1,
        H.FILLER_2_ORIGINATION_DATE,
        H.FILLER_3_ORIGINAL_MATURITY,
        H.FILLER_4_CUSTOMER_NAME,
        H.FILLER_5_SECURED_BORROWINGS,
        H.FILLER_6_IBF_ONLY_COLUMN_YN,
        H.FILLER_7_RES_COUNTRY,
        H.FILLER_8_RISK_COUNTRY,
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
    REPORTING_ENTITY,
    INSTRUMENT,
    INTERCOMPANY,
    CALL_CODE,
    CALL_CODE_DESC,
    GL_KEY_CODE,
    GL_KEY_CODE_DESC,
    CONSOL_NODE,
    H.BUSINESS_UNIT,
    CURRENCY_CODE,
    FOREIGN_AMOUNT,
    CURRENCY_USQ,
    BASE_EQUIVALENT,
    MATURITY_DATE,
    REMAINING_MATURITY_DAYS,
    MATURITY_BUCKETS,
    MATURITY_BUCKETS_2,
    CUSTOMER_ID,
    "DEPO_NON-DEPO",
    FOREIGN_DOMESTIC,
    PRINCIPAL_ORIG_CCY,
    DISCOUNT_GIVEN_ORIG_CCY,
    OVERDRAFT_CASH_ORIG_CCY,
    PRINCIPAL_BASE_EQ,
    DISCOUNT_GIVEN_BASE_EQ,
    OVERDRAFT_CASH_BASE_EQ,
    PROD_TYPE_DESC,
    CUSTOMER_TYPE,
    UMD_1,
    SOURCE,
    UMD_2,
    UMD_3,
    UMD_4,
    TRADE_ID,
    REPORTABLE_Y_N,
    BU,
    ACCOUNT,
    PRODUCT,
    OPERATING_UNIT,
    DEPTID,
    CUST_CLASS,
    AFFILIATE,
    CIF_TYPE,
    CIF_TYPE_DESCRIPTION,
    DISC_GIVEN_CALL_CODE_CODEBLOCK,
    OVRDRFT_CASH_CALL_CODE_CODEBLK,
    FILLER_1,
    FILLER_2_ORIGINATION_DATE,
    FILLER_3_ORIGINAL_MATURITY,
    FILLER_4_CUSTOMER_NAME,
    FILLER_5_SECURED_BORROWINGS,
    FILLER_6_IBF_ONLY_COLUMN_YN,
    FILLER_7_RES_COUNTRY,
    FILLER_8_RISK_COUNTRY,
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
    RB_V_BORROWINGS H
    INNER JOIN
    (
      SELECT DISTINCT
        DATA_1 AS MONTH_END_DATE,
        COD_AZIENDA AS BUSINESS_UNIT
      FROM
        FORM_DATI
      WHERE
        COD_SCENARIO = ${A2}
        AND COD_PERIODO = ${B2}
        AND COD_PROSPETTO = 'BORROWINGS'
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
    ) F
   ON
     H.MONTH_END_DATE = F.MONTH_END_DATE
     AND RB_F_TGK_SANITIZE_CODE(H.BUSINESS_UNIT) = F.BUSINESS_UNIT
  ) P
ON
  A.ROW_ID = P.ROW_ID
  AND A.REPORTING_ENTITY = P.REPORTING_ENTITY
  AND (A.INSTRUMENT = P.INSTRUMENT OR (A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NULL))