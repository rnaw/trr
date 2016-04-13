SELECT
    H.RB_ROWID,
    H.MONTH_END_DATE,
    REPORTING_ENTITY,
    INSTRUMENT,
    INTERCOMPANY,
    CONSOL_NODE,
    H.BUSINESS_UNIT,
    GL_KEY_CODE,
    GL_KEY_CODE_DESC,
    CALL_CODE,
    CALL_CODE_DESC,
    PRODUCT_GROUP_DESC,
    AMORTIZED_COST,
    FAIR_VALUE,
    PRICE,
    PRINCIPAL_GL_US_GAAP_BASE_EQ,
    DISCOUNT_GL_US_GAAP_BASE_EQ,
    PREMIUM_GL_US_GAAP_BASE_EQ,
    UNRLZED_PL_GL_US_GAAP_BASE_EQ,
    LTD_IMPAIRMENT_US_GAAP_BASE_EQ,
    SOURCE,
    IBF_ONLY_RAL_COLUMN_B_YN,
    CURRENCY_CODE,
    REGULATORY_RISK_RATINGS,
    LEVEL_FAIR_VALUE,
    ORIGINAL_PRICE,
    MATURITY_DATE,
    REMAINING_MATURITY,
    INT_RATE,
    FIXED_OR_VARIABLE,
    FLOATING_RATE,
    FIXED_RATE,
    INDEX_RATE_ADD,
    FLOAT_FREQ,
    MATURITY_BUCKETS,
    LAST_RATE_RESET_DATE,
    NEXT_RATE_RESET_DATE,
    DAY_COUNT_BASIS,
    PLEDGED_SECURITIES_YN,
    CMMP_TO_PURCHASE_SEC_YN,
    GUARANTOR,
    CUSTOMER_NAME,
    CUSTOMER_TYPE,
    CITY,
    OPERATING_STATE,
    COUNTRY_CODE,
    COUNTRY_DESC,
    FOREIGN_DOMESTIC,
    SECURITY_DESCRIPTION,
    "S&P_RATING",
    MOODYS_RATING,
    CUSIP,
    ISIN,
    TRADE_ID,
    CUSTOMER_ID,
    RELATED_DEP_INST,
    BRANCH_SUBSIDIARY,
    VAL_DATE,
    TRADE_DATE,
    SETTLE_DATE,
    LAST_PRIN_PMT,
    UMD1,
    UMD2,
    UMD3,
    UMD4,
    UMD5,
    UMD6,
    UMD7,
    UMD8,
    UMD9,
    UMD10,
    SYMB_POOL,
    PORTFOLIO,
    ACCOUNT_CAMRA,
    PRODUCT_CAMRA,
    ACCOUNT,
    PRODUCT,
    OPERATING_UNIT,
    AFFILIATE,
    CUST_CLASS,
    DISCOUNT_CODEBLOCK,
    PREMIUM_CODEBLOCK,
    UNRLZED_CODEBLOCK,
    LTD_IMPAIRMENT_CODEBLOCK,
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
    RB_HST_SECURITY H
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
        AND COD_PROSPETTO = 'SECURITIES'
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