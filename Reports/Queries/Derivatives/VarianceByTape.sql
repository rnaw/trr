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
	COALESCE(A.ACCRUAL_VALUE,0) − COALESCE(P.ACCRUAL_VALUE, 0) AS ACCRUAL_VALUE,
	COALESCE(A.CLEAN_PRICE_VALUE,0) − COALESCE(P.CLEAN_PRICE_VALUE, 0) AS CLEAN_PRICE_VALUE,
	COALESCE(A.DIRTY_PRICE_VALUE,0) − COALESCE(P.DIRTY_PRICE_VALUE, 0) AS DIRTY_PRICE_VALUE,
	COALESCE(A.MANUAL_ADJUSTMENTS,0) − COALESCE(P.MANUAL_ADJUSTMENTS, 0) AS MANUAL_ADJUSTMENTS,
	COALESCE(A.CREDIT_ADJ,0) − COALESCE(P.CREDIT_ADJ, 0) AS CREDIT_ADJ,
	COALESCE(A.CREDIT_VALUATION_ADJUSTMENT,0) − COALESCE(P.CREDIT_VALUATION_ADJUSTMENT, 0) AS CREDIT_VALUATION_ADJUSTMENT,
	COALESCE(A.USQ_NOTIONAL,0) − COALESCE(P.USQ_NOTIONAL, 0) AS USQ_NOTIONAL,
	CASE
		WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.POSITIVE_NEGATIVE <> P.POSITIVE_NEGATIVE
			  OR A.POSITIVE_NEGATIVE IS NULL AND P.POSITIVE_NEGATIVE IS NOT NULL
			  OR A.POSITIVE_NEGATIVE IS NOT NULL AND P.POSITIVE_NEGATIVE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS POSITIVE_NEGATIVE,
	CASE
		WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.BUY_SELL_INDICATOR <> P.BUY_SELL_INDICATOR
			  OR A.BUY_SELL_INDICATOR IS NULL AND P.BUY_SELL_INDICATOR IS NOT NULL
			  OR A.BUY_SELL_INDICATOR IS NOT NULL AND P.BUY_SELL_INDICATOR IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS BUY_SELL_INDICATOR,
	COALESCE(A.MATURITY_PCT_WEIGHT,0) − COALESCE(P.MATURITY_PCT_WEIGHT, 0) AS MATURITY_PCT_WEIGHT,
	COALESCE(A.ADD_ON,0) − COALESCE(P.ADD_ON, 0) AS ADD_ON,
	COALESCE(A.REPLACEMENT_VALUE,0) − COALESCE(P.REPLACEMENT_VALUE, 0) AS REPLACEMENT_VALUE,
	COALESCE(A.CREDIT_EQUIVALENT,0) − COALESCE(P.CREDIT_EQUIVALENT, 0) AS CREDIT_EQUIVALENT,
	COALESCE(A.CPTY_WGHT,0) − COALESCE(P.CPTY_WGHT, 0) AS CPTY_WGHT,
	COALESCE(A.AMT_BOUGHT,0) − COALESCE(P.AMT_BOUGHT, 0) AS AMT_BOUGHT,
	COALESCE(A.AMT_SOLD,0) − COALESCE(P.AMT_SOLD, 0) AS AMT_SOLD,
	CASE
		WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.CCY_RECEIVE <> P.CCY_RECEIVE
			  OR A.CCY_RECEIVE IS NULL AND P.CCY_RECEIVE IS NOT NULL
			  OR A.CCY_RECEIVE IS NOT NULL AND P.CCY_RECEIVE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS CCY_RECEIVE,
	CASE
		WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.CCY_PAY <> P.CCY_PAY
			  OR A.CCY_PAY IS NULL AND P.CCY_PAY IS NOT NULL
			  OR A.CCY_PAY IS NOT NULL AND P.CCY_PAY IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS CCY_PAY,
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
	COALESCE(A.ACC_INT_REC_GL_US_GAAP_BASE_EQ,0) − COALESCE(P.ACC_INT_REC_GL_US_GAAP_BASE_EQ, 0) AS ACC_INT_REC_GL_US_GAAP_BASE_EQ,
	COALESCE(A.UNSET_TRADE_GL_US_GAAP_BASE_EQ,0) − COALESCE(P.UNSET_TRADE_GL_US_GAAP_BASE_EQ, 0) AS UNSET_TRADE_GL_US_GAAP_BASE_EQ,
	COALESCE(A.RECEIVABLES_ADVANCES_BASE_EQ,0) − COALESCE(P.RECEIVABLES_ADVANCES_BASE_EQ, 0) AS RECEIVABLES_ADVANCES_BASE_EQ,
	COALESCE(A.UNRLZED_PLG_GL_US_GAAP_BASE_EQ,0) − COALESCE(P.UNRLZED_PLG_GL_US_GAAP_BASE_EQ, 0) AS UNRLZED_PLG_GL_US_GAAP_BASE_EQ,
	COALESCE(A.UNREAL_PLG_CCY_SWAP_US_BASE_EQ,0) − COALESCE(P.UNREAL_PLG_CCY_SWAP_US_BASE_EQ, 0) AS UNREAL_PLG_CCY_SWAP_US_BASE_EQ,
	COALESCE(A.ACC_INT_PAY_GL_US_GAAP_BASE_EQ,0) − COALESCE(P.ACC_INT_PAY_GL_US_GAAP_BASE_EQ, 0) AS ACC_INT_PAY_GL_US_GAAP_BASE_EQ,
	COALESCE(A.ACC_FEE_PAY_GL_US_GAAP_BASE_EQ,0) − COALESCE(P.ACC_FEE_PAY_GL_US_GAAP_BASE_EQ, 0) AS ACC_FEE_PAY_GL_US_GAAP_BASE_EQ,
	COALESCE(A.UNSET_TRADE_PAYABLE_US_BASE_EQ,0) − COALESCE(P.UNSET_TRADE_PAYABLE_US_BASE_EQ, 0) AS UNSET_TRADE_PAYABLE_US_BASE_EQ,
	COALESCE(A.UNRLZED_PLL_GL_US_GAAP_BASE_EQ,0) − COALESCE(P.UNRLZED_PLL_GL_US_GAAP_BASE_EQ, 0) AS UNRLZED_PLL_GL_US_GAAP_BASE_EQ,
	COALESCE(A.UNREAL_PLL_CCY_SWAP_US_BASE_EQ,0) − COALESCE(P.UNREAL_PLL_CCY_SWAP_US_BASE_EQ, 0) AS UNREAL_PLL_CCY_SWAP_US_BASE_EQ,
	COALESCE(A.MARCA_PROVISION,0) − COALESCE(P.MARCA_PROVISION, 0) AS MARCA_PROVISION,
	COALESCE(A.NOTL_OPT_BUY_US_GAAP_BASE_EQ,0) − COALESCE(P.NOTL_OPT_BUY_US_GAAP_BASE_EQ, 0) AS NOTL_OPT_BUY_US_GAAP_BASE_EQ,
	COALESCE(A.NOTL_SWAP_BUY_US_GAAP_BASE_EQ,0) − COALESCE(P.NOTL_SWAP_BUY_US_GAAP_BASE_EQ, 0) AS NOTL_SWAP_BUY_US_GAAP_BASE_EQ,
	COALESCE(A.NOTL_OPT_GL_US_GAAP_BASE_EQ,0) − COALESCE(P.NOTL_OPT_GL_US_GAAP_BASE_EQ, 0) AS NOTL_OPT_GL_US_GAAP_BASE_EQ,
	COALESCE(A.NOTL_OPT_SOLD_US_GAAP_BASE_EQ,0) − COALESCE(P.NOTL_OPT_SOLD_US_GAAP_BASE_EQ, 0) AS NOTL_OPT_SOLD_US_GAAP_BASE_EQ,
	COALESCE(A.NOTL_SWAP_SOLD_US_GAAP_BASE_EQ,0) − COALESCE(P.NOTL_SWAP_SOLD_US_GAAP_BASE_EQ, 0) AS NOTL_SWAP_SOLD_US_GAAP_BASE_EQ,
	CASE
		WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.IBF_ONLY_RAL_COLUMN_B_YN <> P.IBF_ONLY_RAL_COLUMN_B_YN
			  OR A.IBF_ONLY_RAL_COLUMN_B_YN IS NULL AND P.IBF_ONLY_RAL_COLUMN_B_YN IS NOT NULL
			  OR A.IBF_ONLY_RAL_COLUMN_B_YN IS NOT NULL AND P.IBF_ONLY_RAL_COLUMN_B_YN IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS IBF_ONLY_RAL_COLUMN_B_YN,
	COALESCE(A.REGULATORY_RISK_RATINGS,0) − COALESCE(P.REGULATORY_RISK_RATINGS, 0) AS REGULATORY_RISK_RATINGS,
	CASE
		WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.LEVEL_FAIR_VALUE <> P.LEVEL_FAIR_VALUE
			  OR A.LEVEL_FAIR_VALUE IS NULL AND P.LEVEL_FAIR_VALUE IS NOT NULL
			  OR A.LEVEL_FAIR_VALUE IS NOT NULL AND P.LEVEL_FAIR_VALUE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS LEVEL_FAIR_VALUE,
	COALESCE(A.CRC_RATING,0) − COALESCE(P.CRC_RATING, 0) AS CRC_RATING,
	CASE
		WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.UMD3 <> P.UMD3
			  OR A.UMD3 IS NULL AND P.UMD3 IS NOT NULL
			  OR A.UMD3 IS NOT NULL AND P.UMD3 IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS UMD3,
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
		WHEN  A.REMAINING_MATURITY <> P.REMAINING_MATURITY
			  OR A.REMAINING_MATURITY IS NULL AND P.REMAINING_MATURITY IS NOT NULL
			  OR A.REMAINING_MATURITY IS NOT NULL AND P.REMAINING_MATURITY IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS REMAINING_MATURITY,
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
	COALESCE(A.ONE_YEAR_OR_LESS,0) − COALESCE(P.ONE_YEAR_OR_LESS, 0) AS ONE_YEAR_OR_LESS,
	COALESCE(A.ONE_TO_FIVE_YEARS,0) − COALESCE(P.ONE_TO_FIVE_YEARS, 0) AS ONE_TO_FIVE_YEARS,
	COALESCE(A.GREATER_THAN_FIVE_YEARS,0) − COALESCE(P.GREATER_THAN_FIVE_YEARS, 0) AS GREATER_THAN_FIVE_YEARS,
	CASE
		WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.ACCOUNTING_CLASSIFICATION <> P.ACCOUNTING_CLASSIFICATION
			  OR A.ACCOUNTING_CLASSIFICATION IS NULL AND P.ACCOUNTING_CLASSIFICATION IS NOT NULL
			  OR A.ACCOUNTING_CLASSIFICATION IS NOT NULL AND P.ACCOUNTING_CLASSIFICATION IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS ACCOUNTING_CLASSIFICATION,
	CASE
		WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.BA_CODE <> P.BA_CODE
			  OR A.BA_CODE IS NULL AND P.BA_CODE IS NOT NULL
			  OR A.BA_CODE IS NOT NULL AND P.BA_CODE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS BA_CODE,
	CASE
		WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.ENTITY_ENT_CODE <> P.ENTITY_ENT_CODE
			  OR A.ENTITY_ENT_CODE IS NULL AND P.ENTITY_ENT_CODE IS NOT NULL
			  OR A.ENTITY_ENT_CODE IS NOT NULL AND P.ENTITY_ENT_CODE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS ENTITY_ENT_CODE,
	CASE
		WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.UMD6 <> P.UMD6
			  OR A.UMD6 IS NULL AND P.UMD6 IS NOT NULL
			  OR A.UMD6 IS NOT NULL AND P.UMD6 IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS UMD6,
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
		WHEN  A.RELATED_DEP_INST <> P.RELATED_DEP_INST
			  OR A.RELATED_DEP_INST IS NULL AND P.RELATED_DEP_INST IS NOT NULL
			  OR A.RELATED_DEP_INST IS NOT NULL AND P.RELATED_DEP_INST IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS RELATED_DEP_INST,
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
		WHEN  A.CITY <> P.CITY
			  OR A.CITY IS NULL AND P.CITY IS NOT NULL
			  OR A.CITY IS NOT NULL AND P.CITY IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS CITY,
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
		WHEN  A.COUNTRY_CODE <> P.COUNTRY_CODE
			  OR A.COUNTRY_CODE IS NULL AND P.COUNTRY_CODE IS NOT NULL
			  OR A.COUNTRY_CODE IS NOT NULL AND P.COUNTRY_CODE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS COUNTRY_CODE,
	CASE
		WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.RELATION_ID <> P.RELATION_ID
			  OR A.RELATION_ID IS NULL AND P.RELATION_ID IS NOT NULL
			  OR A.RELATION_ID IS NOT NULL AND P.RELATION_ID IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS RELATION_ID,
	COALESCE(A.FX_RATE_REC,0) − COALESCE(P.FX_RATE_REC, 0) AS FX_RATE_REC,
	COALESCE(A.STRIKE_PRICE,0) − COALESCE(P.STRIKE_PRICE, 0) AS STRIKE_PRICE,
	COALESCE(A.RECEIVE_INTEREST_RATE,0) − COALESCE(P.RECEIVE_INTEREST_RATE, 0) AS RECEIVE_INTEREST_RATE,
	CASE
		WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.BRANCH_SUBSIDIARY <> P.BRANCH_SUBSIDIARY
			  OR A.BRANCH_SUBSIDIARY IS NULL AND P.BRANCH_SUBSIDIARY IS NOT NULL
			  OR A.BRANCH_SUBSIDIARY IS NOT NULL AND P.BRANCH_SUBSIDIARY IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS BRANCH_SUBSIDIARY,
	CASE
		WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.START_DATE <> P.START_DATE
			  OR A.START_DATE IS NULL AND P.START_DATE IS NOT NULL
			  OR A.START_DATE IS NOT NULL AND P.START_DATE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS START_DATE,
	CASE
		WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.SETTLE_DATE <> P.SETTLE_DATE
			  OR A.SETTLE_DATE IS NULL AND P.SETTLE_DATE IS NOT NULL
			  OR A.SETTLE_DATE IS NOT NULL AND P.SETTLE_DATE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS SETTLE_DATE,
	CASE
		WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.UMD10 <> P.UMD10
			  OR A.UMD10 IS NULL AND P.UMD10 IS NOT NULL
			  OR A.UMD10 IS NOT NULL AND P.UMD10 IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS UMD10,
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
		WHEN  A.UNREALIZED_CODEBLOCK <> P.UNREALIZED_CODEBLOCK
			  OR A.UNREALIZED_CODEBLOCK IS NULL AND P.UNREALIZED_CODEBLOCK IS NOT NULL
			  OR A.UNREALIZED_CODEBLOCK IS NOT NULL AND P.UNREALIZED_CODEBLOCK IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS UNREALIZED_CODEBLOCK,
	CASE
		WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.CALL_CODE_CONCAT <> P.CALL_CODE_CONCAT
			  OR A.CALL_CODE_CONCAT IS NULL AND P.CALL_CODE_CONCAT IS NOT NULL
			  OR A.CALL_CODE_CONCAT IS NOT NULL AND P.CALL_CODE_CONCAT IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS CALL_CODE_CONCAT,
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
	  END AS FILLER_1
FROM
(
  SELECT
    ROW_NUMBER() OVER (PARTITION BY
      H.REPORTING_ENTITY,
      H.INSTRUMENT
      ORDER BY
        H.INTERCOMPANY,
		H.CONSOL_NODE,
		H.BUSINESS_UNIT,
		H.GL_KEY_CODE,
		H.GL_KEY_CODE_DESC,
		H.CALL_CODE,
		H.CALL_CODE_DESC,
		H.ACCRUAL_VALUE,
		H.CLEAN_PRICE_VALUE,
		H.DIRTY_PRICE_VALUE,
		H.MANUAL_ADJUSTMENTS,
		H.CREDIT_ADJ,
		H.CREDIT_VALUATION_ADJUSTMENT,
		H.USQ_NOTIONAL,
		H.POSITIVE_NEGATIVE,
		H.BUY_SELL_INDICATOR,
		H.MATURITY_PCT_WEIGHT,
		H.ADD_ON,
		H.REPLACEMENT_VALUE,
		H.CREDIT_EQUIVALENT,
		H.CPTY_WGHT,
		H.AMT_BOUGHT,
		H.AMT_SOLD,
		H.CCY_RECEIVE,
		H.CCY_PAY,
		H.SOURCE,
		H.ACC_INT_REC_GL_US_GAAP_BASE_EQ,
		H.UNSET_TRADE_GL_US_GAAP_BASE_EQ,
		H.RECEIVABLES_ADVANCES_BASE_EQ,
		H.UNRLZED_PLG_GL_US_GAAP_BASE_EQ,
		H.UNREAL_PLG_CCY_SWAP_US_BASE_EQ,
		H.ACC_INT_PAY_GL_US_GAAP_BASE_EQ,
		H.ACC_FEE_PAY_GL_US_GAAP_BASE_EQ,
		H.UNSET_TRADE_PAYABLE_US_BASE_EQ,
		H.UNRLZED_PLL_GL_US_GAAP_BASE_EQ,
		H.UNREAL_PLL_CCY_SWAP_US_BASE_EQ,
		H.MARCA_PROVISION,
		H.NOTL_OPT_BUY_US_GAAP_BASE_EQ,
		H.NOTL_SWAP_BUY_US_GAAP_BASE_EQ,
		H.NOTL_OPT_GL_US_GAAP_BASE_EQ,
		H.NOTL_OPT_SOLD_US_GAAP_BASE_EQ,
		H.NOTL_SWAP_SOLD_US_GAAP_BASE_EQ,
		H.IBF_ONLY_RAL_COLUMN_B_YN,
		H.REGULATORY_RISK_RATINGS,
		H.LEVEL_FAIR_VALUE,
		H.CRC_RATING,
		H.UMD3,
		H.MATURITY_DATE,
		H.REMAINING_MATURITY,
		H.MATURITY_BUCKETS,
		H.ONE_YEAR_OR_LESS,
		H.ONE_TO_FIVE_YEARS,
		H.GREATER_THAN_FIVE_YEARS,
		H.ACCOUNTING_CLASSIFICATION,
		H.BA_CODE,
		H.ENTITY_ENT_CODE,
		H.UMD6,
		H.TRADE_ID,
		H.CUSTOMER_ID,
		H.RELATED_DEP_INST,
		H.CUSTOMER_NAME,
		H.CUSTOMER_TYPE,
		H.CITY,
		H.OPERATING_STATE,
		H.FOREIGN_DOMESTIC,
		H.COUNTRY_CODE,
		H.RELATION_ID,
		H.FX_RATE_REC,
		H.STRIKE_PRICE,
		H.FIXED_OR_VARIABLE,
		H.BRANCH_SUBSIDIARY,
		H.START_DATE,
		H.SETTLE_DATE,
		H.UMD10,
		H.ACCOUNT,
		H.PRODUCT,
		H.OPERATING_UNIT,
		H.AFFILIATE,
		H.CUST_CLASS,
		H.UNREALIZED_CODEBLOCK,
		H.CALL_CODE_CONCAT,
		H.FILLER_1
    ) AS ROW_ID,
	REPORTING_ENTITY,
	INSTRUMENT,
	INTERCOMPANY,
	CONSOL_NODE,
	BUSINESS_UNIT,
	GL_KEY_CODE,
	GL_KEY_CODE_DESC,
	CALL_CODE,
	CALL_CODE_DESC,
	ACCRUAL_VALUE,
	CLEAN_PRICE_VALUE,
	DIRTY_PRICE_VALUE,
	MANUAL_ADJUSTMENTS,
	CREDIT_ADJ,
	CREDIT_VALUATION_ADJUSTMENT,
	USQ_NOTIONAL,
	POSITIVE_NEGATIVE,
	BUY_SELL_INDICATOR,
	MATURITY_PCT_WEIGHT,
	ADD_ON,
	REPLACEMENT_VALUE,
	CREDIT_EQUIVALENT,
	CPTY_WGHT,
	AMT_BOUGHT,
	AMT_SOLD,
	CCY_RECEIVE,
	CCY_PAY,
	SOURCE,
	ACC_INT_REC_GL_US_GAAP_BASE_EQ,
	UNSET_TRADE_GL_US_GAAP_BASE_EQ,
	RECEIVABLES_ADVANCES_BASE_EQ,
	UNRLZED_PLG_GL_US_GAAP_BASE_EQ,
	UNREAL_PLG_CCY_SWAP_US_BASE_EQ,
	ACC_INT_PAY_GL_US_GAAP_BASE_EQ,
	ACC_FEE_PAY_GL_US_GAAP_BASE_EQ,
	UNSET_TRADE_PAYABLE_US_BASE_EQ,
	UNRLZED_PLL_GL_US_GAAP_BASE_EQ,
	UNREAL_PLL_CCY_SWAP_US_BASE_EQ,
	MARCA_PROVISION,
	NOTL_OPT_BUY_US_GAAP_BASE_EQ,
	NOTL_SWAP_BUY_US_GAAP_BASE_EQ,
	NOTL_OPT_GL_US_GAAP_BASE_EQ,
	NOTL_OPT_SOLD_US_GAAP_BASE_EQ,
	NOTL_SWAP_SOLD_US_GAAP_BASE_EQ,
	IBF_ONLY_RAL_COLUMN_B_YN,
	REGULATORY_RISK_RATINGS,
	LEVEL_FAIR_VALUE,
	CRC_RATING,
	UMD1,
	UMD2,
	UMD3,
	MATURITY_DATE,
	REMAINING_MATURITY,
	MATURITY_BUCKETS,
	ONE_YEAR_OR_LESS,
	ONE_TO_FIVE_YEARS,
	GREATER_THAN_FIVE_YEARS,
	ACCOUNTING_CLASSIFICATION,
	BA_CODE,
	ENTITY_ENT_CODE,
	COUNTERPARTY_ENT_CODE,
	COVERED_MARKET_RISK_RULE,
	AFFIRMED_REG_RPT_CAP_GUARANTEE,
	SECURITY_DESCRIPTION,
	INVESTMENT_GRADE,
	SUBINVESTMENT_GRADE,
	UMD4,
	UMD5,
	UMD6,
	TRADE_ID,
	CUSTOMER_ID,
	RELATED_DEP_INST,
	CUSTOMER_NAME,
	CUSTOMER_TYPE,
	CITY,
	OPERATING_STATE,
	FOREIGN_DOMESTIC,
	COUNTRY_CODE,
	COUNTRY_DESC,
	RELATION_ID,
	FX_RATE_REC,
	FX_RATE_PAY,
	STRIKE_PRICE,
	FIXED_OR_VARIABLE,
	RECEIVE_INTEREST_RATE,
	PAY_INTEREST_RATE,
	INDEX_RATE_ADD,
	FLOAT_FREQ,
	LAST_RATE_RESET_DATE,
	NEXT_RATE_RESET_DATE,
	BRANCH_SUBSIDIARY,
	START_DATE,
	TRADE_DATE,
	SETTLE_DATE,
	UMD7,
	UMD8,
	UMD9,
	UMD10,
	ACCOUNT,
	PRODUCT,
	OPERATING_UNIT,
	AFFILIATE,
	CUST_CLASS,
	CODEBLOCK,
	ACCRUAL_CODEBLOCK,
	UNREALIZED_CODEBLOCK,
	CALL_CODE_CONCAT,
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
    RB_V_DERIVATIVES H
    INNER JOIN
    (
      SELECT DISTINCT
        DATA_1 AS MONTH_END_DATE
      FROM
        FORM_DATI
      WHERE
        COD_SCENARIO = ${A1}
        AND COD_PERIODO = ${B1}
        AND COD_PROSPETTO = 'DERIVATIVES'
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
        H.INTERCOMPANY,
		H.CONSOL_NODE,
		H.BUSINESS_UNIT,
		H.GL_KEY_CODE,
		H.GL_KEY_CODE_DESC,
		H.CALL_CODE,
		H.CALL_CODE_DESC,
		H.ACCRUAL_VALUE,
		H.CLEAN_PRICE_VALUE,
		H.DIRTY_PRICE_VALUE,
		H.MANUAL_ADJUSTMENTS,
		H.CREDIT_ADJ,
		H.CREDIT_VALUATION_ADJUSTMENT,
		H.USQ_NOTIONAL,
		H.POSITIVE_NEGATIVE,
		H.BUY_SELL_INDICATOR,
		H.MATURITY_PCT_WEIGHT,
		H.ADD_ON,
		H.REPLACEMENT_VALUE,
		H.CREDIT_EQUIVALENT,
		H.CPTY_WGHT,
		H.AMT_BOUGHT,
		H.AMT_SOLD,
		H.CCY_RECEIVE,
		H.CCY_PAY,
		H.SOURCE,
		H.ACC_INT_REC_GL_US_GAAP_BASE_EQ,
		H.UNSET_TRADE_GL_US_GAAP_BASE_EQ,
		H.RECEIVABLES_ADVANCES_BASE_EQ,
		H.UNRLZED_PLG_GL_US_GAAP_BASE_EQ,
		H.UNREAL_PLG_CCY_SWAP_US_BASE_EQ,
		H.ACC_INT_PAY_GL_US_GAAP_BASE_EQ,
		H.ACC_FEE_PAY_GL_US_GAAP_BASE_EQ,
		H.UNSET_TRADE_PAYABLE_US_BASE_EQ,
		H.UNRLZED_PLL_GL_US_GAAP_BASE_EQ,
		H.UNREAL_PLL_CCY_SWAP_US_BASE_EQ,
		H.MARCA_PROVISION,
		H.NOTL_OPT_BUY_US_GAAP_BASE_EQ,
		H.NOTL_SWAP_BUY_US_GAAP_BASE_EQ,
		H.NOTL_OPT_GL_US_GAAP_BASE_EQ,
		H.NOTL_OPT_SOLD_US_GAAP_BASE_EQ,
		H.NOTL_SWAP_SOLD_US_GAAP_BASE_EQ,
		H.IBF_ONLY_RAL_COLUMN_B_YN,
		H.REGULATORY_RISK_RATINGS,
		H.LEVEL_FAIR_VALUE,
		H.CRC_RATING,
		H.UMD3,
		H.MATURITY_DATE,
		H.REMAINING_MATURITY,
		H.MATURITY_BUCKETS,
		H.ONE_YEAR_OR_LESS,
		H.ONE_TO_FIVE_YEARS,
		H.GREATER_THAN_FIVE_YEARS,
		H.ACCOUNTING_CLASSIFICATION,
		H.BA_CODE,
		H.ENTITY_ENT_CODE,
		H.UMD6,
		H.TRADE_ID,
		H.CUSTOMER_ID,
		H.RELATED_DEP_INST,
		H.CUSTOMER_NAME,
		H.CUSTOMER_TYPE,
		H.CITY,
		H.OPERATING_STATE,
		H.FOREIGN_DOMESTIC,
		H.COUNTRY_CODE,
		H.RELATION_ID,
		H.FX_RATE_REC,
		H.STRIKE_PRICE,
		H.FIXED_OR_VARIABLE,
		H.BRANCH_SUBSIDIARY,
		H.START_DATE,
		H.SETTLE_DATE,
		H.UMD10,
		H.ACCOUNT,
		H.PRODUCT,
		H.OPERATING_UNIT,
		H.AFFILIATE,
		H.CUST_CLASS,
		H.UNREALIZED_CODEBLOCK,
		H.CALL_CODE_CONCAT,
		H.FILLER_1
    ) AS ROW_ID,
	REPORTING_ENTITY,
	INSTRUMENT,
	INTERCOMPANY,
	CONSOL_NODE,
	BUSINESS_UNIT,
	GL_KEY_CODE,
	GL_KEY_CODE_DESC,
	CALL_CODE,
	CALL_CODE_DESC,
	ACCRUAL_VALUE,
	CLEAN_PRICE_VALUE,
	DIRTY_PRICE_VALUE,
	MANUAL_ADJUSTMENTS,
	CREDIT_ADJ,
	CREDIT_VALUATION_ADJUSTMENT,
	USQ_NOTIONAL,
	POSITIVE_NEGATIVE,
	BUY_SELL_INDICATOR,
	MATURITY_PCT_WEIGHT,
	ADD_ON,
	REPLACEMENT_VALUE,
	CREDIT_EQUIVALENT,
	CPTY_WGHT,
	AMT_BOUGHT,
	AMT_SOLD,
	CCY_RECEIVE,
	CCY_PAY,
	SOURCE,
	ACC_INT_REC_GL_US_GAAP_BASE_EQ,
	UNSET_TRADE_GL_US_GAAP_BASE_EQ,
	RECEIVABLES_ADVANCES_BASE_EQ,
	UNRLZED_PLG_GL_US_GAAP_BASE_EQ,
	UNREAL_PLG_CCY_SWAP_US_BASE_EQ,
	ACC_INT_PAY_GL_US_GAAP_BASE_EQ,
	ACC_FEE_PAY_GL_US_GAAP_BASE_EQ,
	UNSET_TRADE_PAYABLE_US_BASE_EQ,
	UNRLZED_PLL_GL_US_GAAP_BASE_EQ,
	UNREAL_PLL_CCY_SWAP_US_BASE_EQ,
	MARCA_PROVISION,
	NOTL_OPT_BUY_US_GAAP_BASE_EQ,
	NOTL_SWAP_BUY_US_GAAP_BASE_EQ,
	NOTL_OPT_GL_US_GAAP_BASE_EQ,
	NOTL_OPT_SOLD_US_GAAP_BASE_EQ,
	NOTL_SWAP_SOLD_US_GAAP_BASE_EQ,
	IBF_ONLY_RAL_COLUMN_B_YN,
	REGULATORY_RISK_RATINGS,
	LEVEL_FAIR_VALUE,
	CRC_RATING,
	UMD1,
	UMD2,
	UMD3,
	MATURITY_DATE,
	REMAINING_MATURITY,
	MATURITY_BUCKETS,
	ONE_YEAR_OR_LESS,
	ONE_TO_FIVE_YEARS,
	GREATER_THAN_FIVE_YEARS,
	ACCOUNTING_CLASSIFICATION,
	BA_CODE,
	ENTITY_ENT_CODE,
	COUNTERPARTY_ENT_CODE,
	COVERED_MARKET_RISK_RULE,
	AFFIRMED_REG_RPT_CAP_GUARANTEE,
	SECURITY_DESCRIPTION,
	INVESTMENT_GRADE,
	SUBINVESTMENT_GRADE,
	UMD4,
	UMD5,
	UMD6,
	TRADE_ID,
	CUSTOMER_ID,
	RELATED_DEP_INST,
	CUSTOMER_NAME,
	CUSTOMER_TYPE,
	CITY,
	OPERATING_STATE,
	FOREIGN_DOMESTIC,
	COUNTRY_CODE,
	COUNTRY_DESC,
	RELATION_ID,
	FX_RATE_REC,
	FX_RATE_PAY,
	STRIKE_PRICE,
	FIXED_OR_VARIABLE,
	RECEIVE_INTEREST_RATE,
	PAY_INTEREST_RATE,
	INDEX_RATE_ADD,
	FLOAT_FREQ,
	LAST_RATE_RESET_DATE,
	NEXT_RATE_RESET_DATE,
	BRANCH_SUBSIDIARY,
	START_DATE,
	TRADE_DATE,
	SETTLE_DATE,
	UMD7,
	UMD8,
	UMD9,
	UMD10,
	ACCOUNT,
	PRODUCT,
	OPERATING_UNIT,
	AFFILIATE,
	CUST_CLASS,
	CODEBLOCK,
	ACCRUAL_CODEBLOCK,
	UNREALIZED_CODEBLOCK,
	CALL_CODE_CONCAT,
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
    RB_V_DERIVATIVES H
    INNER JOIN
    (
      SELECT DISTINCT
        DATA_1 AS MONTH_END_DATE
      FROM
        FORM_DATI
      WHERE
        COD_SCENARIO = ${A2}
        AND COD_PERIODO = ${B2}
        AND COD_PROSPETTO = 'DERIVATIVES'
    ) F
   ON
     H.MONTH_END_DATE = F.MONTH_END_DATE
) P
ON
  A.ROW_ID = P.ROW_ID
  AND A.REPORTING_ENTITY = P.REPORTING_ENTITY
  AND (A.INSTRUMENT = P.INSTRUMENT OR (A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NULL))