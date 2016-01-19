SELECT
  COALESCE(A.INSTRUMENT_ID, P.INSTRUMENT_ID) AS INSTRUMENT,
	COALESCE(A.REPORTING_ENTITY, P.REPORTING_ENTITY) AS REPORTING_ENTITY,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.INTERCOMPANY <> P.INTERCOMPANY
			  OR A.INTERCOMPANY IS NULL AND P.INTERCOMPANY IS NOT NULL
			  OR A.INTERCOMPANY IS NOT NULL AND P.INTERCOMPANY IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS INTERCOMPANY,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.CONSOL_NODE <> P.CONSOL_NODE
			  OR A.CONSOL_NODE IS NULL AND P.CONSOL_NODE IS NOT NULL
			  OR A.CONSOL_NODE IS NOT NULL AND P.CONSOL_NODE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS CONSOL_NODE,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.BUSINESS_UNIT <> P.BUSINESS_UNIT
			  OR A.BUSINESS_UNIT IS NULL AND P.BUSINESS_UNIT IS NOT NULL
			  OR A.BUSINESS_UNIT IS NOT NULL AND P.BUSINESS_UNIT IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS BUSINESS_UNIT,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.GL_KEY_CODE <> P.GL_KEY_CODE
			  OR A.GL_KEY_CODE IS NULL AND P.GL_KEY_CODE IS NOT NULL
			  OR A.GL_KEY_CODE IS NOT NULL AND P.GL_KEY_CODE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS GL_KEY_CODE,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.GL_KEY_CODE_DESC <> P.GL_KEY_CODE_DESC
			  OR A.GL_KEY_CODE_DESC IS NULL AND P.GL_KEY_CODE_DESC IS NOT NULL
			  OR A.GL_KEY_CODE_DESC IS NOT NULL AND P.GL_KEY_CODE_DESC IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS GL_KEY_CODE_DESC,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.CALL_CODE <> P.CALL_CODE
			  OR A.CALL_CODE IS NULL AND P.CALL_CODE IS NOT NULL
			  OR A.CALL_CODE IS NOT NULL AND P.CALL_CODE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS CALL_CODE,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.CALL_CODE_DESC <> P.CALL_CODE_DESC
			  OR A.CALL_CODE_DESC IS NULL AND P.CALL_CODE_DESC IS NOT NULL
			  OR A.CALL_CODE_DESC IS NOT NULL AND P.CALL_CODE_DESC IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS CALL_CODE_DESC,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.LOAN_NUMBER <> P.LOAN_NUMBER
			  OR A.LOAN_NUMBER IS NULL AND P.LOAN_NUMBER IS NOT NULL
			  OR A.LOAN_NUMBER IS NOT NULL AND P.LOAN_NUMBER IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS LOAN_NUMBER,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.INSTRUMENT_ID <> P.INSTRUMENT_ID
			  OR A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
			  OR A.INSTRUMENT_ID IS NOT NULL AND P.INSTRUMENT_ID IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS INSTRUMENT_ID,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.CONVERTED_INSTRUMENT_ID <> P.CONVERTED_INSTRUMENT_ID
			  OR A.CONVERTED_INSTRUMENT_ID IS NULL AND P.CONVERTED_INSTRUMENT_ID IS NOT NULL
			  OR A.CONVERTED_INSTRUMENT_ID IS NOT NULL AND P.CONVERTED_INSTRUMENT_ID IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS CONVERTED_INSTRUMENT_ID,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.CALL_CODE_LOOKUP <> P.CALL_CODE_LOOKUP
			  OR A.CALL_CODE_LOOKUP IS NULL AND P.CALL_CODE_LOOKUP IS NOT NULL
			  OR A.CALL_CODE_LOOKUP IS NOT NULL AND P.CALL_CODE_LOOKUP IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS CALL_CODE_LOOKUP,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.CURRENT_OREO_ASSET_NUMBER <> P.CURRENT_OREO_ASSET_NUMBER
			  OR A.CURRENT_OREO_ASSET_NUMBER IS NULL AND P.CURRENT_OREO_ASSET_NUMBER IS NOT NULL
			  OR A.CURRENT_OREO_ASSET_NUMBER IS NOT NULL AND P.CURRENT_OREO_ASSET_NUMBER IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS CURRENT_OREO_ASSET_NUMBER,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.ENTITY_CHANGE <> P.ENTITY_CHANGE
			  OR A.ENTITY_CHANGE IS NULL AND P.ENTITY_CHANGE IS NOT NULL
			  OR A.ENTITY_CHANGE IS NOT NULL AND P.ENTITY_CHANGE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS ENTITY_CHANGE,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.DUPLICATE_LOAN_ON_ONE_PROPERTY <> P.DUPLICATE_LOAN_ON_ONE_PROPERTY
			  OR A.DUPLICATE_LOAN_ON_ONE_PROPERTY IS NULL AND P.DUPLICATE_LOAN_ON_ONE_PROPERTY IS NOT NULL
			  OR A.DUPLICATE_LOAN_ON_ONE_PROPERTY IS NOT NULL AND P.DUPLICATE_LOAN_ON_ONE_PROPERTY IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS DUPLICATE_LOAN_ON_ONE_PROPERTY,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.FORECLOSURE_INDICATOR_DESCRPTN <> P.FORECLOSURE_INDICATOR_DESCRPTN
			  OR A.FORECLOSURE_INDICATOR_DESCRPTN IS NULL AND P.FORECLOSURE_INDICATOR_DESCRPTN IS NOT NULL
			  OR A.FORECLOSURE_INDICATOR_DESCRPTN IS NOT NULL AND P.FORECLOSURE_INDICATOR_DESCRPTN IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS FORECLOSURE_INDICATOR_DESCRPTN,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.OREO_NEW_OREO_EVENT <> P.OREO_NEW_OREO_EVENT
			  OR A.OREO_NEW_OREO_EVENT IS NULL AND P.OREO_NEW_OREO_EVENT IS NOT NULL
			  OR A.OREO_NEW_OREO_EVENT IS NOT NULL AND P.OREO_NEW_OREO_EVENT IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS OREO_NEW_OREO_EVENT,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.OREO_COST_CENTER <> P.OREO_COST_CENTER
			  OR A.OREO_COST_CENTER IS NULL AND P.OREO_COST_CENTER IS NOT NULL
			  OR A.OREO_COST_CENTER IS NOT NULL AND P.OREO_COST_CENTER IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS OREO_COST_CENTER,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.OREO_INDICATOR <> P.OREO_INDICATOR
			  OR A.OREO_INDICATOR IS NULL AND P.OREO_INDICATOR IS NOT NULL
			  OR A.OREO_INDICATOR IS NOT NULL AND P.OREO_INDICATOR IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS OREO_INDICATOR,
	COALESCE(A.OREO_NET_LIDQUIDATION_PROCEEDS,0) - COALESCE(P.OREO_NET_LIDQUIDATION_PROCEEDS, 0) AS OREO_NET_LIDQUIDATION_PROCEEDS,
	COALESCE(A.OREO_NET_LIDQUIDATION_AMT,0) - COALESCE(P.OREO_NET_LIDQUIDATION_AMT, 0) AS OREO_NET_LIDQUIDATION_AMT,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.OREO_SALE_DATE <> P.OREO_SALE_DATE
			  OR A.OREO_SALE_DATE IS NULL AND P.OREO_SALE_DATE IS NOT NULL
			  OR A.OREO_SALE_DATE IS NOT NULL AND P.OREO_SALE_DATE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS OREO_SALE_DATE,
	COALESCE(A.OREO_OFFSET_TO_CHARGE_OFF,0) - COALESCE(P.OREO_OFFSET_TO_CHARGE_OFF, 0) AS OREO_OFFSET_TO_CHARGE_OFF,
	COALESCE(A.OREO_OPER_EXP_CLOSING_STMT,0) - COALESCE(P.OREO_OPER_EXP_CLOSING_STMT, 0) AS OREO_OPER_EXP_CLOSING_STMT,
	COALESCE(A.OREO_VALUATION_ADJUSTMENT,0) - COALESCE(P.OREO_VALUATION_ADJUSTMENT, 0) AS OREO_VALUATION_ADJUSTMENT,
	COALESCE(A.OREO_FINAL_SALE,0) - COALESCE(P.OREO_FINAL_SALE, 0) AS OREO_FINAL_SALE,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.OREO_EVENT_DATE <> P.OREO_EVENT_DATE
			  OR A.OREO_EVENT_DATE IS NULL AND P.OREO_EVENT_DATE IS NOT NULL
			  OR A.OREO_EVENT_DATE IS NOT NULL AND P.OREO_EVENT_DATE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS OREO_EVENT_DATE,
	COALESCE(A.OREO_APPRAISAL_VALUE,0) - COALESCE(P.OREO_APPRAISAL_VALUE, 0) AS OREO_APPRAISAL_VALUE,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.OREO_APPRAISAL_DATE <> P.OREO_APPRAISAL_DATE
			  OR A.OREO_APPRAISAL_DATE IS NULL AND P.OREO_APPRAISAL_DATE IS NOT NULL
			  OR A.OREO_APPRAISAL_DATE IS NOT NULL AND P.OREO_APPRAISAL_DATE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS OREO_APPRAISAL_DATE,
	COALESCE(A.OREO_CURRENT_BAL_ACCUMULATOR,0) - COALESCE(P.OREO_CURRENT_BAL_ACCUMULATOR, 0) AS OREO_CURRENT_BAL_ACCUMULATOR,
	COALESCE(A.OREO_LOSS_ON_SALE,0) - COALESCE(P.OREO_LOSS_ON_SALE, 0) AS OREO_LOSS_ON_SALE,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.OREO_PROJCTED_LIQUIDATION_DATE <> P.OREO_PROJCTED_LIQUIDATION_DATE
			  OR A.OREO_PROJCTED_LIQUIDATION_DATE IS NULL AND P.OREO_PROJCTED_LIQUIDATION_DATE IS NOT NULL
			  OR A.OREO_PROJCTED_LIQUIDATION_DATE IS NOT NULL AND P.OREO_PROJCTED_LIQUIDATION_DATE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS OREO_PROJCTED_LIQUIDATION_DATE,
	COALESCE(A.OREO_LOAN_PRIN_BAL_PRPTY_REV,0) - COALESCE(P.OREO_LOAN_PRIN_BAL_PRPTY_REV, 0) AS OREO_LOAN_PRIN_BAL_PRPTY_REV,
	COALESCE(A.OREO_BEG_BAL_AT_CURRENT_YEAR,0) - COALESCE(P.OREO_BEG_BAL_AT_CURRENT_YEAR, 0) AS OREO_BEG_BAL_AT_CURRENT_YEAR,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.OREO_NOTES <> P.OREO_NOTES
			  OR A.OREO_NOTES IS NULL AND P.OREO_NOTES IS NOT NULL
			  OR A.OREO_NOTES IS NOT NULL AND P.OREO_NOTES IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS OREO_NOTES,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.OREO_COMPANY <> P.OREO_COMPANY
			  OR A.OREO_COMPANY IS NULL AND P.OREO_COMPANY IS NOT NULL
			  OR A.OREO_COMPANY IS NOT NULL AND P.OREO_COMPANY IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS OREO_COMPANY,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.FORECLOSURE_START_DATE <> P.FORECLOSURE_START_DATE
			  OR A.FORECLOSURE_START_DATE IS NULL AND P.FORECLOSURE_START_DATE IS NOT NULL
			  OR A.FORECLOSURE_START_DATE IS NOT NULL AND P.FORECLOSURE_START_DATE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS FORECLOSURE_START_DATE,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.FORECLOSURE_SALE_DATE <> P.FORECLOSURE_SALE_DATE
			  OR A.FORECLOSURE_SALE_DATE IS NULL AND P.FORECLOSURE_SALE_DATE IS NOT NULL
			  OR A.FORECLOSURE_SALE_DATE IS NOT NULL AND P.FORECLOSURE_SALE_DATE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS FORECLOSURE_SALE_DATE,
	COALESCE(A.LOSS_SHARE_VALUE,0) - COALESCE(P.LOSS_SHARE_VALUE, 0) AS LOSS_SHARE_VALUE,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.MATURITY_DATE <> P.MATURITY_DATE
			  OR A.MATURITY_DATE IS NULL AND P.MATURITY_DATE IS NOT NULL
			  OR A.MATURITY_DATE IS NOT NULL AND P.MATURITY_DATE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS MATURITY_DATE,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.MATURITY_BUCKETS <> P.MATURITY_BUCKETS
			  OR A.MATURITY_BUCKETS IS NULL AND P.MATURITY_BUCKETS IS NOT NULL
			  OR A.MATURITY_BUCKETS IS NOT NULL AND P.MATURITY_BUCKETS IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS MATURITY_BUCKETS,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.LOSS_SHARING_AGREEMENT_YN <> P.LOSS_SHARING_AGREEMENT_YN
			  OR A.LOSS_SHARING_AGREEMENT_YN IS NULL AND P.LOSS_SHARING_AGREEMENT_YN IS NOT NULL
			  OR A.LOSS_SHARING_AGREEMENT_YN IS NOT NULL AND P.LOSS_SHARING_AGREEMENT_YN IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS LOSS_SHARING_AGREEMENT_YN,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.SPV_YN <> P.SPV_YN
			  OR A.SPV_YN IS NULL AND P.SPV_YN IS NOT NULL
			  OR A.SPV_YN IS NOT NULL AND P.SPV_YN IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS SPV_YN,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.ABCP_CONDUITS_YN <> P.ABCP_CONDUITS_YN
			  OR A.ABCP_CONDUITS_YN IS NULL AND P.ABCP_CONDUITS_YN IS NOT NULL
			  OR A.ABCP_CONDUITS_YN IS NOT NULL AND P.ABCP_CONDUITS_YN IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS ABCP_CONDUITS_YN,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.VIE_YN <> P.VIE_YN
			  OR A.VIE_YN IS NULL AND P.VIE_YN IS NOT NULL
			  OR A.VIE_YN IS NOT NULL AND P.VIE_YN IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS VIE_YN,
	COALESCE(A.REGULATORY_RISK_RATINGS,0) - COALESCE(P.REGULATORY_RISK_RATINGS, 0) AS REGULATORY_RISK_RATINGS,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.LEVEL_FAIR_VALUE <> P.LEVEL_FAIR_VALUE
			  OR A.LEVEL_FAIR_VALUE IS NULL AND P.LEVEL_FAIR_VALUE IS NOT NULL
			  OR A.LEVEL_FAIR_VALUE IS NOT NULL AND P.LEVEL_FAIR_VALUE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS LEVEL_FAIR_VALUE,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.ACCOUNT <> P.ACCOUNT
			  OR A.ACCOUNT IS NULL AND P.ACCOUNT IS NOT NULL
			  OR A.ACCOUNT IS NOT NULL AND P.ACCOUNT IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS ACCOUNT,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.PRODUCT <> P.PRODUCT
			  OR A.PRODUCT IS NULL AND P.PRODUCT IS NOT NULL
			  OR A.PRODUCT IS NOT NULL AND P.PRODUCT IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS PRODUCT,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.OPERATING_UNIT <> P.OPERATING_UNIT
			  OR A.OPERATING_UNIT IS NULL AND P.OPERATING_UNIT IS NOT NULL
			  OR A.OPERATING_UNIT IS NOT NULL AND P.OPERATING_UNIT IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS OPERATING_UNIT,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.AFFILIATE <> P.AFFILIATE
			  OR A.AFFILIATE IS NULL AND P.AFFILIATE IS NOT NULL
			  OR A.AFFILIATE IS NOT NULL AND P.AFFILIATE IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS AFFILIATE,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.CUST_CLASS <> P.CUST_CLASS
			  OR A.CUST_CLASS IS NULL AND P.CUST_CLASS IS NOT NULL
			  OR A.CUST_CLASS IS NOT NULL AND P.CUST_CLASS IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS CUST_CLASS,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.UMD4 <> P.UMD4
			  OR A.UMD4 IS NULL AND P.UMD4 IS NOT NULL
			  OR A.UMD4 IS NOT NULL AND P.UMD4 IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS UMD4,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.UMD5 <> P.UMD5
			  OR A.UMD5 IS NULL AND P.UMD5 IS NOT NULL
			  OR A.UMD5 IS NOT NULL AND P.UMD5 IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS UMD5,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.FILLER_1 <> P.FILLER_1
			  OR A.FILLER_1 IS NULL AND P.FILLER_1 IS NOT NULL
			  OR A.FILLER_1 IS NOT NULL AND P.FILLER_1 IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS FILLER_1,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.FILLER_2 <> P.FILLER_2
			  OR A.FILLER_2 IS NULL AND P.FILLER_2 IS NOT NULL
			  OR A.FILLER_2 IS NOT NULL AND P.FILLER_2 IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS FILLER_2,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.FILLER_3 <> P.FILLER_3
			  OR A.FILLER_3 IS NULL AND P.FILLER_3 IS NOT NULL
			  OR A.FILLER_3 IS NOT NULL AND P.FILLER_3 IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS FILLER_3,
	CASE
		WHEN A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('OLD' AS VARCHAR(8))
	   WHEN P.INSTRUMENT_ID IS NULL AND A.INSTRUMENT_ID IS NOT NULL
		  THEN CAST('NEW' AS VARCHAR(8))
		WHEN  A.FILLER_4 <> P.FILLER_4
			  OR A.FILLER_4 IS NULL AND P.FILLER_4 IS NOT NULL
			  OR A.FILLER_4 IS NOT NULL AND P.FILLER_4 IS NULL
		  THEN CAST('VARIANCE' AS VARCHAR(8))
		ELSE CAST('OK' AS VARCHAR(8))
	  END AS FILLER_4,
  ${CONCATENATE($Account.code, " (", PARENT($Account(HIERARCHY("RE"))).code, " - ", PARENT($Account(HIERARCHY("RE"))).desc, ": ", $Account.attribute4, " - ", $Account.attribute5, ")")} AS LINE_ITEM
FROM
(
  SELECT
    CAST(ROW_NUMBER() OVER (PARTITION BY
      H.REPORTING_ENTITY,
      H.INSTRUMENT_ID
      ORDER BY
		H."INTERCOMPANY",
		H."CONSOL_NODE",
		H."BUSINESS_UNIT",
		H."GL_KEY_CODE",
		H."GL_KEY_CODE_DESC",
		H."CALL_CODE",
		H."CALL_CODE_DESC",
		H."LOAN_NUMBER",
		H."CONVERTED_INSTRUMENT_ID",
		H."CALL_CODE_LOOKUP",
		H."CURRENT_OREO_ASSET_NUMBER",
		H."ENTITY_CHANGE",
		H."DUPLICATE_LOAN_ON_ONE_PROPERTY",
		H."FORECLOSURE_INDICATOR_DESCRPTN",
		H."OREO_NEW_OREO_EVENT",
		H."OREO_COST_CENTER",
		H."OREO_INDICATOR",
		H."OREO_NET_LIDQUIDATION_PROCEEDS",
		H."OREO_NET_LIDQUIDATION_AMT",
		H."OREO_SALE_DATE",
		H."OREO_OFFSET_TO_CHARGE_OFF",
		H."OREO_OPER_EXP_CLOSING_STMT",
		H."OREO_VALUATION_ADJUSTMENT",
		H."OREO_FINAL_SALE",
		H."OREO_EVENT_DATE",
		H."OREO_APPRAISAL_VALUE",
		H."OREO_APPRAISAL_DATE",
		H."OREO_CURRENT_BAL_ACCUMULATOR",
		H."OREO_LOSS_ON_SALE",
		H."OREO_PROJCTED_LIQUIDATION_DATE",
		H."OREO_LOAN_PRIN_BAL_PRPTY_REV",
		H."OREO_BEG_BAL_AT_CURRENT_YEAR",
		H."OREO_NOTES",
		H."OREO_COMPANY",
		H."FORECLOSURE_START_DATE",
		H."FORECLOSURE_SALE_DATE",
		H."LOSS_SHARE_VALUE",
		H."MATURITY_DATE",
		H."MATURITY_BUCKETS",
		H."LOSS_SHARING_AGREEMENT_YN",
		H."SPV_YN",
		H."ABCP_CONDUITS_YN",
		H."VIE_YN",
		H."REGULATORY_RISK_RATINGS",
		H."LEVEL_FAIR_VALUE",
		H."ACCOUNT",
		H."PRODUCT",
		H."OPERATING_UNIT",
		H."AFFILIATE",
		H."CUST_CLASS",
		H."UMD1",
		H."UMD2",
		H."UMD3",
		H."UMD4",
		H."UMD5",
		H."FILLER_1",
		H."FILLER_2",
		H."FILLER_3",
		H."FILLER_4",
		H."FILLER_5",
		H."FILLER_6",
		H."FILLER_7",
		H."FILLER_8",
		H."FILLER_9",
		H."FILLER_10",
		H."FILLER_11",
		H."FILLER_12",
		H."FILLER_13",
		H."FILLER_14",
		H."FILLER_15",
		H."FILLER_16",
		H."FILLER_17",
		H."FILLER_18",
		H."FILLER_19",
		H."FILLER_20",
		H."FILLER_21",
		H."FILLER_22",
		H."FILLER_23",
		H."FILLER_24",
		H."FILLER_25"
    ) AS VARCHAR(255)) AS ROW_ID,
	REPORTING_ENTITY,
	INSTRUMENT_ID,
	"INTERCOMPANY",
	"CONSOL_NODE",
	"BUSINESS_UNIT",
	"GL_KEY_CODE",
	"GL_KEY_CODE_DESC",
	"CALL_CODE",
	"CALL_CODE_DESC",
	"LOAN_NUMBER",
	"CONVERTED_INSTRUMENT_ID",
	"CALL_CODE_LOOKUP",
	"CURRENT_OREO_ASSET_NUMBER",
	"ENTITY_CHANGE",
	"DUPLICATE_LOAN_ON_ONE_PROPERTY",
	"FORECLOSURE_INDICATOR_DESCRPTN",
	"OREO_NEW_OREO_EVENT",
	"OREO_COST_CENTER",
	"OREO_INDICATOR",
	"OREO_NET_LIDQUIDATION_PROCEEDS",
	"OREO_NET_LIDQUIDATION_AMT",
	"OREO_SALE_DATE",
	"OREO_OFFSET_TO_CHARGE_OFF",
	"OREO_OPER_EXP_CLOSING_STMT",
	"OREO_VALUATION_ADJUSTMENT",
	"OREO_FINAL_SALE",
	"OREO_EVENT_DATE",
	"OREO_APPRAISAL_VALUE",
	"OREO_APPRAISAL_DATE",
	"OREO_CURRENT_BAL_ACCUMULATOR",
	"OREO_LOSS_ON_SALE",
	"OREO_PROJCTED_LIQUIDATION_DATE",
	"OREO_LOAN_PRIN_BAL_PRPTY_REV",
	"OREO_BEG_BAL_AT_CURRENT_YEAR",
	"OREO_NOTES",
	"OREO_COMPANY",
	"FORECLOSURE_START_DATE",
	"FORECLOSURE_SALE_DATE",
	"LOSS_SHARE_VALUE",
	"MATURITY_DATE",
	"MATURITY_BUCKETS",
	"LOSS_SHARING_AGREEMENT_YN",
	"SPV_YN",
	"ABCP_CONDUITS_YN",
	"VIE_YN",
	"REGULATORY_RISK_RATINGS",
	"LEVEL_FAIR_VALUE",
	"ACCOUNT",
	"PRODUCT",
	"OPERATING_UNIT",
	"AFFILIATE",
	"CUST_CLASS",
	"UMD1",
	"UMD2",
	"UMD3",
	"UMD4",
	"UMD5",
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
	"FILLER_25"
  FROM
	  RB_DRILL_INSTRUMENT DRILL
    INNER JOIN
	  FORM_DATI DATA
	  ON
      DRILL.OID_FORM_DATI = DATA.OID_FORM_DATI
    INNER JOIN
    RB_V_OREO H
    ON
      CAST(DATA.IMPORTO_14 AS VARCHAR2(255)) = H.RB_ROWID
      AND DATA.TESTO_1 = H.REPORTING_ENTITY
      AND DATA.DATA_1 = H.MONTH_END_DATE
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
	UNION ALL
  SELECT
    DATA.COD_CONTO || DATA.COD_AZIENDA AS ROW_ID,
    NULL AS "REPORTING_ENTITY",
	NULL AS "INTERCOMPANY",
	NULL AS "CONSOL_NODE",
	DATA.COD_AZIENDA AS "BUSINESS_UNIT",
	NULL AS "GL_KEY_CODE",
	NULL AS "GL_KEY_CODE_DESC",
	NULL AS "CALL_CODE",
	NULL AS "CALL_CODE_DESC",
	NULL AS "LOAN_NUMBER",
	NULL AS "INSTRUMENT_ID",
	NULL AS "CONVERTED_INSTRUMENT_ID",
	NULL AS "CALL_CODE_LOOKUP",
	NULL AS "CURRENT_OREO_ASSET_NUMBER",
	NULL AS "ENTITY_CHANGE",
	NULL AS "DUPLICATE_LOAN_ON_ONE_PROPERTY",
	NULL AS "FORECLOSURE_INDICATOR_DESCRPTN",
	NULL AS "OREO_NEW_OREO_EVENT",
	NULL AS "OREO_COST_CENTER",
	NULL AS "OREO_INDICATOR",
	NULL AS "OREO_NET_LIDQUIDATION_PROCEEDS",
	NULL AS "OREO_NET_LIDQUIDATION_AMT",
	NULL AS "OREO_SALE_DATE",
	NULL AS "OREO_OFFSET_TO_CHARGE_OFF",
	NULL AS "OREO_OPER_EXP_CLOSING_STMT",
	NULL AS "OREO_VALUATION_ADJUSTMENT",
	NULL AS "OREO_FINAL_SALE",
	NULL AS "OREO_EVENT_DATE",
	NULL AS "OREO_APPRAISAL_VALUE",
	NULL AS "OREO_APPRAISAL_DATE",
	SUM(CASE
		WHEN NVL(C.ATTRIBUTO1, 'OCBA') = 'OCBA'
			THEN DATA.IMPORTO2 * 1000
		ELSE NULL
	END) AS "OREO_CURRENT_BAL_ACCUMULATOR",
	NULL AS "OREO_LOSS_ON_SALE",
	NULL AS "OREO_PROJCTED_LIQUIDATION_DATE",
	NULL AS "OREO_LOAN_PRIN_BAL_PRPTY_REV",
	NULL AS "OREO_BEG_BAL_AT_CURRENT_YEAR",
	NULL AS "OREO_NOTES",
	NULL AS "OREO_COMPANY",
	NULL AS "FORECLOSURE_START_DATE",
	NULL AS "FORECLOSURE_SALE_DATE",
	SUM(CASE
		WHEN NVL(C.ATTRIBUTO1, 'OCBA') = 'OCBA'
			THEN DATA.IMPORTO2 * 1000
		ELSE NULL
	END) AS "LOSS_SHARE_VALUE",
	NULL AS "MATURITY_DATE",
	NULL AS "MATURITY_BUCKETS",
	NULL AS "LOSS_SHARING_AGREEMENT_YN",
	NULL AS "SPV_YN",
	NULL AS "ABCP_CONDUITS_YN",
	NULL AS "VIE_YN",
	NULL AS "REGULATORY_RISK_RATINGS",
	NULL AS "LEVEL_FAIR_VALUE",
	DATA.COD_DEST1 AS ACCOUNT,
	DATA.COD_DEST3 AS "PRODUCT",
	CASE
		WHEN SUBSTR(DATA.COD_DEST2, 1, 4) = 'BLC_'
			THEN SUBSTR(DATA.COD_DEST2, 5)
		ELSE NULL
	END AS "OPERATING_UNIT",
	DATA.COD_AZI_CTP AS "AFFILIATE",
	DATA.COD_DEST4 AS "CUST_CLASS",
	NULL AS "UMD1",
	NULL AS "UMD2",
	NULL AS "UMD3",
	NULL AS "UMD4",
	NULL AS "UMD5",
	NULL AS "FILLER_1",
	NULL AS "FILLER_2",
	NULL AS "FILLER_3",
	NULL AS "FILLER_4",
	NULL AS "FILLER_5",
	NULL AS "FILLER_6",
	NULL AS "FILLER_7",
	NULL AS "FILLER_8",
	NULL AS "FILLER_9",
	NULL AS "FILLER_10",
	NULL AS "FILLER_11",
	NULL AS "FILLER_12",
	NULL AS "FILLER_13",
	NULL AS "FILLER_14",
	NULL AS "FILLER_15",
	NULL AS "FILLER_16",
	NULL AS "FILLER_17",
	NULL AS "FILLER_18",
	NULL AS "FILLER_19",
	NULL AS "FILLER_20",
	NULL AS "FILLER_21",
	NULL AS "FILLER_22",
	NULL AS "FILLER_23",
	NULL AS "FILLER_24",
	NULL AS "FILLER_25"
  FROM
	DATI_RETT_RIGA DATA
	LEFT OUTER JOIN
	DATI_RETT A
	ON
		DATA.COD_SCENARIO = A.COD_SCENARIO
		AND DATA.COD_PERIODO = A.COD_PERIODO
		AND DATA.NUM_RETTIFICA = A.NUM_RETTIFICA
	LEFT OUTER JOIN
	CONTO C
	ON
		DATA.COD_CONTO = C.COD_CONTO
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
    DATA.COD_AZIENDA,
    DATA.COD_DEST3,
    DATA.COD_DEST2,
	DATA.COD_DEST1,
    DATA.COD_AZI_CTP,
    DATA.COD_DEST4
) A
FULL OUTER JOIN
(
  SELECT
    CAST(ROW_NUMBER() OVER (PARTITION BY
      H.REPORTING_ENTITY,
      H.INSTRUMENT_ID
      ORDER BY
		H."INTERCOMPANY",
		H."CONSOL_NODE",
		H."BUSINESS_UNIT",
		H."GL_KEY_CODE",
		H."GL_KEY_CODE_DESC",
		H."CALL_CODE",
		H."CALL_CODE_DESC",
		H."LOAN_NUMBER",
		H."CONVERTED_INSTRUMENT_ID",
		H."CALL_CODE_LOOKUP",
		H."CURRENT_OREO_ASSET_NUMBER",
		H."ENTITY_CHANGE",
		H."DUPLICATE_LOAN_ON_ONE_PROPERTY",
		H."FORECLOSURE_INDICATOR_DESCRPTN",
		H."OREO_NEW_OREO_EVENT",
		H."OREO_COST_CENTER",
		H."OREO_INDICATOR",
		H."OREO_NET_LIDQUIDATION_PROCEEDS",
		H."OREO_NET_LIDQUIDATION_AMT",
		H."OREO_SALE_DATE",
		H."OREO_OFFSET_TO_CHARGE_OFF",
		H."OREO_OPER_EXP_CLOSING_STMT",
		H."OREO_VALUATION_ADJUSTMENT",
		H."OREO_FINAL_SALE",
		H."OREO_EVENT_DATE",
		H."OREO_APPRAISAL_VALUE",
		H."OREO_APPRAISAL_DATE",
		H."OREO_CURRENT_BAL_ACCUMULATOR",
		H."OREO_LOSS_ON_SALE",
		H."OREO_PROJCTED_LIQUIDATION_DATE",
		H."OREO_LOAN_PRIN_BAL_PRPTY_REV",
		H."OREO_BEG_BAL_AT_CURRENT_YEAR",
		H."OREO_NOTES",
		H."OREO_COMPANY",
		H."FORECLOSURE_START_DATE",
		H."FORECLOSURE_SALE_DATE",
		H."LOSS_SHARE_VALUE",
		H."MATURITY_DATE",
		H."MATURITY_BUCKETS",
		H."LOSS_SHARING_AGREEMENT_YN",
		H."SPV_YN",
		H."ABCP_CONDUITS_YN",
		H."VIE_YN",
		H."REGULATORY_RISK_RATINGS",
		H."LEVEL_FAIR_VALUE",
		H."ACCOUNT",
		H."PRODUCT",
		H."OPERATING_UNIT",
		H."AFFILIATE",
		H."CUST_CLASS",
		H."UMD1",
		H."UMD2",
		H."UMD3",
		H."UMD4",
		H."UMD5",
		H."FILLER_1",
		H."FILLER_2",
		H."FILLER_3",
		H."FILLER_4",
		H."FILLER_5",
		H."FILLER_6",
		H."FILLER_7",
		H."FILLER_8",
		H."FILLER_9",
		H."FILLER_10",
		H."FILLER_11",
		H."FILLER_12",
		H."FILLER_13",
		H."FILLER_14",
		H."FILLER_15",
		H."FILLER_16",
		H."FILLER_17",
		H."FILLER_18",
		H."FILLER_19",
		H."FILLER_20",
		H."FILLER_21",
		H."FILLER_22",
		H."FILLER_23",
		H."FILLER_24",
		H."FILLER_25"
    ) AS VARCHAR(255)) AS ROW_ID,
	REPORTING_ENTITY,
	INSTRUMENT_ID,
	"INTERCOMPANY",
	"CONSOL_NODE",
	"BUSINESS_UNIT",
	"GL_KEY_CODE",
	"GL_KEY_CODE_DESC",
	"CALL_CODE",
	"CALL_CODE_DESC",
	"LOAN_NUMBER",
	"CONVERTED_INSTRUMENT_ID",
	"CALL_CODE_LOOKUP",
	"CURRENT_OREO_ASSET_NUMBER",
	"ENTITY_CHANGE",
	"DUPLICATE_LOAN_ON_ONE_PROPERTY",
	"FORECLOSURE_INDICATOR_DESCRPTN",
	"OREO_NEW_OREO_EVENT",
	"OREO_COST_CENTER",
	"OREO_INDICATOR",
	"OREO_NET_LIDQUIDATION_PROCEEDS",
	"OREO_NET_LIDQUIDATION_AMT",
	"OREO_SALE_DATE",
	"OREO_OFFSET_TO_CHARGE_OFF",
	"OREO_OPER_EXP_CLOSING_STMT",
	"OREO_VALUATION_ADJUSTMENT",
	"OREO_FINAL_SALE",
	"OREO_EVENT_DATE",
	"OREO_APPRAISAL_VALUE",
	"OREO_APPRAISAL_DATE",
	"OREO_CURRENT_BAL_ACCUMULATOR",
	"OREO_LOSS_ON_SALE",
	"OREO_PROJCTED_LIQUIDATION_DATE",
	"OREO_LOAN_PRIN_BAL_PRPTY_REV",
	"OREO_BEG_BAL_AT_CURRENT_YEAR",
	"OREO_NOTES",
	"OREO_COMPANY",
	"FORECLOSURE_START_DATE",
	"FORECLOSURE_SALE_DATE",
	"LOSS_SHARE_VALUE",
	"MATURITY_DATE",
	"MATURITY_BUCKETS",
	"LOSS_SHARING_AGREEMENT_YN",
	"SPV_YN",
	"ABCP_CONDUITS_YN",
	"VIE_YN",
	"REGULATORY_RISK_RATINGS",
	"LEVEL_FAIR_VALUE",
	"ACCOUNT",
	"PRODUCT",
	"OPERATING_UNIT",
	"AFFILIATE",
	"CUST_CLASS",
	"UMD1",
	"UMD2",
	"UMD3",
	"UMD4",
	"UMD5",
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
	"FILLER_25"
  FROM
	  RB_DRILL_INSTRUMENT DRILL
    INNER JOIN
	  FORM_DATI DATA
	  ON
      DRILL.OID_FORM_DATI = DATA.OID_FORM_DATI
    INNER JOIN
    RB_V_OREO H
    ON
      CAST(DATA.IMPORTO_14 AS VARCHAR2(255)) = H.RB_ROWID
      AND DATA.TESTO_1 = H.REPORTING_ENTITY
      AND DATA.DATA_1 = H.MONTH_END_DATE
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
	UNION ALL
  SELECT
    DATA.COD_CONTO || DATA.COD_AZIENDA AS ROW_ID,
    NULL AS "REPORTING_ENTITY",
	NULL AS "INTERCOMPANY",
	NULL AS "CONSOL_NODE",
	DATA.COD_AZIENDA AS "BUSINESS_UNIT",
	NULL AS "GL_KEY_CODE",
	NULL AS "GL_KEY_CODE_DESC",
	NULL AS "CALL_CODE",
	NULL AS "CALL_CODE_DESC",
	NULL AS "LOAN_NUMBER",
	NULL AS "INSTRUMENT_ID",
	NULL AS "CONVERTED_INSTRUMENT_ID",
	NULL AS "CALL_CODE_LOOKUP",
	NULL AS "CURRENT_OREO_ASSET_NUMBER",
	NULL AS "ENTITY_CHANGE",
	NULL AS "DUPLICATE_LOAN_ON_ONE_PROPERTY",
	NULL AS "FORECLOSURE_INDICATOR_DESCRPTN",
	NULL AS "OREO_NEW_OREO_EVENT",
	NULL AS "OREO_COST_CENTER",
	NULL AS "OREO_INDICATOR",
	NULL AS "OREO_NET_LIDQUIDATION_PROCEEDS",
	NULL AS "OREO_NET_LIDQUIDATION_AMT",
	NULL AS "OREO_SALE_DATE",
	NULL AS "OREO_OFFSET_TO_CHARGE_OFF",
	NULL AS "OREO_OPER_EXP_CLOSING_STMT",
	NULL AS "OREO_VALUATION_ADJUSTMENT",
	NULL AS "OREO_FINAL_SALE",
	NULL AS "OREO_EVENT_DATE",
	NULL AS "OREO_APPRAISAL_VALUE",
	NULL AS "OREO_APPRAISAL_DATE",
	SUM(CASE
		WHEN NVL(C.ATTRIBUTO1, 'OCBA') = 'OCBA'
			THEN DATA.IMPORTO2 * 1000
		ELSE NULL
	END) AS "OREO_CURRENT_BAL_ACCUMULATOR",
	NULL AS "OREO_LOSS_ON_SALE",
	NULL AS "OREO_PROJCTED_LIQUIDATION_DATE",
	NULL AS "OREO_LOAN_PRIN_BAL_PRPTY_REV",
	NULL AS "OREO_BEG_BAL_AT_CURRENT_YEAR",
	NULL AS "OREO_NOTES",
	NULL AS "OREO_COMPANY",
	NULL AS "FORECLOSURE_START_DATE",
	NULL AS "FORECLOSURE_SALE_DATE",
	SUM(CASE
		WHEN NVL(C.ATTRIBUTO1, 'OCBA') = 'OCBA'
			THEN DATA.IMPORTO2 * 1000
		ELSE NULL
	END) AS "LOSS_SHARE_VALUE",
	NULL AS "MATURITY_DATE",
	NULL AS "MATURITY_BUCKETS",
	NULL AS "LOSS_SHARING_AGREEMENT_YN",
	NULL AS "SPV_YN",
	NULL AS "ABCP_CONDUITS_YN",
	NULL AS "VIE_YN",
	NULL AS "REGULATORY_RISK_RATINGS",
	NULL AS "LEVEL_FAIR_VALUE",
	DATA.COD_DEST1 AS ACCOUNT,
	DATA.COD_DEST3 AS "PRODUCT",
	CASE
		WHEN SUBSTR(DATA.COD_DEST2, 1, 4) = 'BLC_'
			THEN SUBSTR(DATA.COD_DEST2, 5)
		ELSE NULL
	END AS "OPERATING_UNIT",
	DATA.COD_AZI_CTP AS "AFFILIATE",
	DATA.COD_DEST4 AS "CUST_CLASS",
	NULL AS "UMD1",
	NULL AS "UMD2",
	NULL AS "UMD3",
	NULL AS "UMD4",
	NULL AS "UMD5",
	NULL AS "FILLER_1",
	NULL AS "FILLER_2",
	NULL AS "FILLER_3",
	NULL AS "FILLER_4",
	NULL AS "FILLER_5",
	NULL AS "FILLER_6",
	NULL AS "FILLER_7",
	NULL AS "FILLER_8",
	NULL AS "FILLER_9",
	NULL AS "FILLER_10",
	NULL AS "FILLER_11",
	NULL AS "FILLER_12",
	NULL AS "FILLER_13",
	NULL AS "FILLER_14",
	NULL AS "FILLER_15",
	NULL AS "FILLER_16",
	NULL AS "FILLER_17",
	NULL AS "FILLER_18",
	NULL AS "FILLER_19",
	NULL AS "FILLER_20",
	NULL AS "FILLER_21",
	NULL AS "FILLER_22",
	NULL AS "FILLER_23",
	NULL AS "FILLER_24",
	NULL AS "FILLER_25"
  FROM
	DATI_RETT_RIGA DATA
	LEFT OUTER JOIN
	DATI_RETT A
	ON
		DATA.COD_SCENARIO = A.COD_SCENARIO
		AND DATA.COD_PERIODO = A.COD_PERIODO
		AND DATA.NUM_RETTIFICA = A.NUM_RETTIFICA
	LEFT OUTER JOIN
	CONTO C
	ON
		DATA.COD_CONTO = C.COD_CONTO
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
    DATA.COD_AZIENDA,
    DATA.COD_DEST3,
    DATA.COD_DEST2,
	DATA.COD_DEST1,
    DATA.COD_AZI_CTP,
    DATA.COD_DEST4
  ) P
ON
  A.ROW_ID = P.ROW_ID
  AND A.REPORTING_ENTITY = P.REPORTING_ENTITY
  AND (A.INSTRUMENT_ID = P.INSTRUMENT_ID OR (A.INSTRUMENT_ID IS NULL AND P.INSTRUMENT_ID IS NULL))