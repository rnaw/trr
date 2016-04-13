SELECT
	FD.COD_PROSPETTO AS COD_TAPE,
	CAST(DATA.RB_ROWID AS VARCHAR(255)) AS RB_ROWID,
	DATA.MONTH_END_DATE,
	DATA.REPORTING_ENTITY,
	DATA.INSTRUMENT,
	DATA.INTERCOMPANY,
	DATA.CONSOL_NODE,
	DATA.BUSINESS_UNIT,
	DATA.GL_KEY_CODE,
	DATA.GL_KEY_CODE_DESC,
	DATA.CALL_CODE,
	DATA.CALL_CODE_DESC,
	DATA.PRODUCT_GROUP_DESC,
	DATA.AMORTIZED_COST,
	DATA.FAIR_VALUE,
	DATA.PRICE,
	DATA.PRINCIPAL_GL_US_GAAP_BASE_EQ,
	DATA.DISCOUNT_GL_US_GAAP_BASE_EQ,
	DATA.PREMIUM_GL_US_GAAP_BASE_EQ,
	DATA.UNRLZED_PL_GL_US_GAAP_BASE_EQ,
	DATA.LTD_IMPAIRMENT_US_GAAP_BASE_EQ,
	DATA.SOURCE,
	DATA.IBF_ONLY_RAL_COLUMN_B_YN,
	DATA.CURRENCY_CODE,
	DATA.REGULATORY_RISK_RATINGS,
	DATA.LEVEL_FAIR_VALUE,
	DATA.ORIGINAL_PRICE,
	DATA.MATURITY_DATE,
	DATA.REMAINING_MATURITY,
	DATA.INT_RATE,
	DATA.FIXED_OR_VARIABLE,
	DATA.FLOATING_RATE,
	DATA.FIXED_RATE,
	DATA.INDEX_RATE_ADD,
	DATA.FLOAT_FREQ,
	DATA.MATURITY_BUCKETS,
	DATA.LAST_RATE_RESET_DATE,
	DATA.NEXT_RATE_RESET_DATE,
	DATA.DAY_COUNT_BASIS,
	DATA.PLEDGED_SECURITIES_YN,
	DATA.CMMP_TO_PURCHASE_SEC_YN,
	DATA.GUARANTOR,
	DATA.CUSTOMER_NAME,
	DATA.CUSTOMER_TYPE,
	DATA.CITY,
	DATA.OPERATING_STATE,
	DATA.COUNTRY_CODE,
	DATA.COUNTRY_DESC,
	DATA.FOREIGN_DOMESTIC,
	DATA.SECURITY_DESCRIPTION,
	DATA."S&P_RATING",
	DATA.MOODYS_RATING,
	DATA.CUSIP,
	DATA.ISIN,
	DATA.TRADE_ID,
	DATA.CUSTOMER_ID,
	DATA.RELATED_DEP_INST,
	DATA.BRANCH_SUBSIDIARY,
	DATA.VAL_DATE,
	DATA.TRADE_DATE,
	DATA.SETTLE_DATE,
	DATA.LAST_PRIN_PMT,
	DATA.UMD1,
	DATA.UMD2,
	DATA.UMD3,
	DATA.UMD4,
	DATA.UMD5,
	DATA.UMD6,
	DATA.UMD7,
	DATA.UMD8,
	DATA.UMD9,
	DATA.UMD10,
	DATA.SYMB_POOL,
	DATA.PORTFOLIO,
	DATA.ACCOUNT_CAMRA,
	DATA.PRODUCT_CAMRA,
	DATA.ACCOUNT,
	DATA.PRODUCT,
	DATA.OPERATING_UNIT,
	DATA.AFFILIATE,
	DATA.CUST_CLASS,
	DATA.DISCOUNT_CODEBLOCK,
	DATA.PREMIUM_CODEBLOCK,
	DATA.UNRLZED_CODEBLOCK,
	DATA.LTD_IMPAIRMENT_CODEBLOCK,
	DATA.FILLER_1,
	DATA.FILLER_2,
	DATA.FILLER_3,
	DATA.FILLER_4,
	DATA.FILLER_5,
	DATA.FILLER_6,
	DATA.FILLER_7,
	DATA.FILLER_8,
	DATA.FILLER_9,
	DATA.FILLER_10,
	DATA.FILLER_11,
	DATA.FILLER_12,
	DATA.FILLER_13,
	DATA.FILLER_14,
	DATA.FILLER_15,
	DATA.FILLER_16,
	DATA.FILLER_17,
	DATA.FILLER_18,
	DATA.FILLER_19,
	DATA.FILLER_20,
	DATA.FILLER_21,
	DATA.FILLER_22,
	DATA.FILLER_23,
	DATA.FILLER_24,
	DATA.FILLER_25,
	${CONCATENATE($Account.code, " (", PARENT($Account(HIERARCHY("RE"))).code, " - ", PARENT($Account(HIERARCHY("RE"))).desc, ": ", $Account.attribute4, " - ", $Account.attribute5, ")")} AS LINE_ITEM
FROM
  RB_DRILL_INSTRUMENT DRILL
  INNER JOIN
  FORM_DATI FD
  ON
    DRILL.OID_FORM_DATI = FD.OID_FORM_DATI
  INNER JOIN
  RB_HST_SECURITY DATA
  ON
	FD.DATA_1 = DATA.MONTH_END_DATE
	AND FD.TESTO_1 = DATA.REPORTING_ENTITY
	AND FD.TESTO_49 = CAST(DATA.RB_ROWID AS VARCHAR(255))
WHERE
  DRILL.COD_SCENARIO IN (${$Scenario.code})
  AND DRILL.COD_PERIODO IN (${$Period.code})
  AND DRILL.COD_AZIENDA IN (${$Entity.code})
  AND DRILL.COD_CONTO IN (${$Account.code})
  AND DRILL.COD_DEST1 IN (${$Cust_Dim1.code})
  AND DRILL.COD_DEST2 IN (${$Cust_Dim2.code})
  AND DRILL.COD_DEST3 IN (${$Cust_Dim3.code})
  AND DRILL.COD_DEST4 IN (${$Cust_Dim4.code})
  AND DRILL.COD_DEST5 IN (${$Cust_Dim5.code})
  AND DRILL.COD_CATEGORIA IN (${$Category.code})
  AND FD.COD_PROSPETTO = 'SECURITIES'
UNION ALL
SELECT
	'ADJUSTMENTS' AS COD_TAPE,
	DATA.NUM_RETTIFICA AS RB_ROWID,
	SP.DATA_FINE AS MONTH_END_DATE,
	NULL AS REPORTING_ENTITY,
	NULL AS INSTRUMENT,
	NULL AS INTERCOMPANY,
	NULL AS CONSOL_NODE,
	DATA.COD_AZIENDA AS BUSINESS_UNIT,
	NULL AS GL_KEY_CODE,
	NULL AS GL_KEY_CODE_DESC,
	NULL AS CALL_CODE,
	NULL AS CALL_CODE_DESC,
	NULL AS PRODUCT_GROUP_DESC,
	CASE
        WHEN COALESCE(C.ATTRIBUTO1, 'PGUBE') IN ('AC', 'FV_AC')
            THEN DATA.IMPORTO2 * 1000
        ELSE NULL
  END AS AMORTIZED_COST,
	CASE
        WHEN COALESCE(C.ATTRIBUTO1, 'PGUBE') IN ('FV', 'FV_AC')
            THEN DATA.IMPORTO2 * 1000
        ELSE NULL
  END AS FAIR_VALUE,
	NULL AS PRICE,
	CASE
        WHEN COALESCE(C.ATTRIBUTO1, 'PGUBE') = 'PGUBE'
            THEN DATA.IMPORTO2 * 1000
        ELSE NULL
  END AS PRINCIPAL_GL_US_GAAP_BASE_EQ,
	NULL AS DISCOUNT_GL_US_GAAP_BASE_EQ,
	NULL AS PREMIUM_GL_US_GAAP_BASE_EQ,
	CASE
        WHEN COALESCE(C.ATTRIBUTO1, 'PGUBE') = 'UNRZ'
            THEN DATA.IMPORTO2 * 1000
        ELSE NULL
  END AS UNRLZED_PL_GL_US_GAAP_BASE_EQ,
	NULL AS LTD_IMPAIRMENT_US_GAAP_BASE_EQ,
	A.NOTE AS SOURCE,
	NULL AS IBF_ONLY_RAL_COLUMN_B_YN,
	NULL AS CURRENCY_CODE,
	NULL AS REGULATORY_RISK_RATINGS,
	NULL AS LEVEL_FAIR_VALUE,
	NULL AS ORIGINAL_PRICE,
	NULL AS MATURITY_DATE,
	NULL AS REMAINING_MATURITY,
	NULL AS INT_RATE,
	NULL AS FIXED_OR_VARIABLE,
	NULL AS FLOATING_RATE,
	NULL AS FIXED_RATE,
	NULL AS INDEX_RATE_ADD,
	NULL AS FLOAT_FREQ,
	NULL AS MATURITY_BUCKETS,
	NULL AS LAST_RATE_RESET_DATE,
	NULL AS NEXT_RATE_RESET_DATE,
	NULL AS DAY_COUNT_BASIS,
	NULL AS PLEDGED_SECURITIES_YN,
	NULL AS CMMP_TO_PURCHASE_SEC_YN,
	NULL AS GUARANTOR,
	NULL AS CUSTOMER_NAME,
	NULL AS CUSTOMER_TYPE,
	NULL AS CITY,
	NULL AS OPERATING_STATE,
	NULL AS COUNTRY_CODE,
	NULL AS COUNTRY_DESC,
	NULL AS FOREIGN_DOMESTIC,
	NULL AS SECURITY_DESCRIPTION,
	NULL AS "S&P_RATING",
	NULL AS MOODYS_RATING,
	NULL AS CUSIP,
	NULL AS ISIN,
	NULL AS TRADE_ID,
	NULL AS CUSTOMER_ID,
	NULL AS RELATED_DEP_INST,
	NULL AS BRANCH_SUBSIDIARY,
	NULL AS VAL_DATE,
	NULL AS TRADE_DATE,
	NULL AS SETTLE_DATE,
	NULL AS LAST_PRIN_PMT,
	NULL AS UMD1,
	NULL AS UMD2,
	NULL AS UMD3,
	NULL AS UMD4,
	NULL AS UMD5,
	NULL AS UMD6,
	NULL AS UMD7,
	NULL AS UMD8,
	NULL AS UMD9,
	NULL AS UMD10,
	NULL AS SYMB_POOL,
	NULL AS PORTFOLIO,
	NULL AS ACCOUNT_CAMRA,
	NULL AS PRODUCT_CAMRA,
	NULL AS ACCOUNT,
	DATA.COD_DEST3 AS PRODUCT,
	DATA.COD_DEST2 AS OPERATING_UNIT,
	DATA.COD_AZI_CTP AS AFFILIATE,
	DATA.COD_DEST4 AS CUST_CLASS,
	NULL AS DISCOUNT_CODEBLOCK,
	NULL AS PREMIUM_CODEBLOCK,
	NULL AS UNRLZED_CODEBLOCK,
	NULL AS LTD_IMPAIRMENT_CODEBLOCK,
	NULL AS FILLER_1,
	NULL AS FILLER_2,
	NULL AS FILLER_3,
	NULL AS FILLER_4,
	NULL AS FILLER_5,
	NULL AS FILLER_6,
	NULL AS FILLER_7,
	NULL AS FILLER_8,
	NULL AS FILLER_9,
	NULL AS FILLER_10,
	NULL AS FILLER_11,
	NULL AS FILLER_12,
	NULL AS FILLER_13,
	NULL AS FILLER_14,
	NULL AS FILLER_15,
	NULL AS FILLER_16,
	NULL AS FILLER_17,
	NULL AS FILLER_18,
	NULL AS FILLER_19,
	NULL AS FILLER_20,
	NULL AS FILLER_21,
	NULL AS FILLER_22,
	NULL AS FILLER_23,
	NULL AS FILLER_24,
	NULL AS FILLER_25,
	${CONCATENATE($Account.code, " (", PARENT($Account(HIERARCHY("RE"))).code, " - ", PARENT($Account(HIERARCHY("RE"))).desc, ": ", $Account.attribute4, " - ", $Account.attribute5, ")")} AS LINE_ITEM
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
  LEFT OUTER JOIN
	CONTO C
	ON
		DATA.COD_CONTO = C.COD_CONTO
WHERE
  DATA.COD_SCENARIO IN (${$Scenario.code}) 
  AND DATA.COD_PERIODO IN (${$Period.code})
  AND DATA.COD_AZIENDA IN (${$Entity.code})
  AND DATA.COD_CONTO IN (${$Account.code})
  AND DATA.COD_DEST1 IN (${$Cust_Dim1.code})
  AND DATA.COD_DEST2 IN (${$Cust_Dim2.code})
  AND DATA.COD_DEST3 IN (${$Cust_Dim3.code})
  AND DATA.COD_DEST4 IN (${$Cust_Dim4.code})
  AND DATA.COD_DEST5 IN (${$Cust_Dim5.code})
  AND DATA.COD_CATEGORIA IN (${$Category.code})