SELECT
	FD.COD_PROSPETTO AS COD_TAPE,
	CAST(DATA.RB_ROWID AS VARCHAR2(255)) AS RB_ROWID,
	DATA."MONTH_END_DATE",
	DATA."REPORTING_ENTITY",
	DATA."INTERCOMPANY",
	DATA."CONSOL_NODE",
	DATA."BUSINESS_UNIT",
	DATA."GL_KEY_CODE",
	DATA."GL_KEY_CODE_DESC",
	DATA."CALL_CODE",
	DATA."CALL_CODE_DESC",
	DATA."LOAN_NUMBER",
	DATA."INSTRUMENT_ID",
	DATA."CONVERTED_INSTRUMENT_ID",
	DATA."CALL_CODE_LOOKUP",
	DATA."CURRENT_OREO_ASSET_NUMBER",
	DATA."ENTITY_CHANGE",
	DATA."DUPLICATE_LOAN_ON_ONE_PROPERTY",
	DATA."FORECLOSURE_INDICATOR_DESCRPTN",
	DATA."OREO_NEW_OREO_EVENT",
	DATA."OREO_COST_CENTER",
	DATA."OREO_INDICATOR",
	DATA."OREO_NET_LIDQUIDATION_PROCEEDS",
	DATA."OREO_NET_LIDQUIDATION_AMT",
	DATA."OREO_SALE_DATE",
	DATA."OREO_OFFSET_TO_CHARGE_OFF",
	DATA."OREO_OPER_EXP_CLOSING_STMT",
	DATA."OREO_VALUATION_ADJUSTMENT",
	DATA."OREO_FINAL_SALE",
	DATA."OREO_EVENT_DATE",
	DATA."OREO_APPRAISAL_VALUE",
	DATA."OREO_APPRAISAL_DATE",
	DATA."OREO_CURRENT_BAL_ACCUMULATOR",
	DATA."OREO_LOSS_ON_SALE",
	DATA."OREO_PROJCTED_LIQUIDATION_DATE",
	DATA."OREO_LOAN_PRIN_BAL_PRPTY_REV",
	DATA."OREO_BEG_BAL_AT_CURRENT_YEAR",
	DATA."OREO_NOTES",
	DATA."OREO_COMPANY",
	DATA."FORECLOSURE_START_DATE",
	DATA."FORECLOSURE_SALE_DATE",
	DATA."LOSS_SHARE_VALUE",
	DATA."MATURITY_DATE",
	DATA."MATURITY_BUCKETS",
	DATA."LOSS_SHARING_AGREEMENT_YN",
	DATA."SPV_YN",
	DATA."ABCP_CONDUITS_YN",
	DATA."VIE_YN",
	DATA."REGULATORY_RISK_RATINGS",
	DATA."LEVEL_FAIR_VALUE",
	DATA."ACCOUNT",
	DATA."PRODUCT",
	DATA."OPERATING_UNIT",
	DATA."AFFILIATE",
	DATA."CUST_CLASS",
	DATA."UMD1",
	DATA."UMD2",
	DATA."UMD3",
	DATA."UMD4",
	DATA."UMD5",
	DATA."FILLER_1",
	DATA."FILLER_2",
	DATA."FILLER_3",
	DATA."FILLER_4",
	DATA."FILLER_5",
	DATA."FILLER_6",
	DATA."FILLER_7",
	DATA."FILLER_8",
	DATA."FILLER_9",
	DATA."FILLER_10",
	DATA."FILLER_11",
	DATA."FILLER_12",
	DATA."FILLER_13",
	DATA."FILLER_14",
	DATA."FILLER_15",
	DATA."FILLER_16",
	DATA."FILLER_17",
	DATA."FILLER_18",
	DATA."FILLER_19",
	DATA."FILLER_20",
	DATA."FILLER_21",
	DATA."FILLER_22",
	DATA."FILLER_23",
	DATA."FILLER_24",
	DATA."FILLER_25",
	${CONCATENATE($Account.code, " (", PARENT($Account(HIERARCHY("RE"))).code, " - ", PARENT($Account(HIERARCHY("RE"))).desc, ": ", $Account.attribute4, " - ", $Account.attribute5, ")")} AS LINE_ITEM
FROM
  RB_DRILL_INSTRUMENT DRILL
  INNER JOIN
  FORM_DATI FD
  ON
    DRILL.OID_FORM_DATI = FD.OID_FORM_DATI
  INNER JOIN
  RB_V_OREO DATA
  ON
	FD.DATA_1 = DATA.MONTH_END_DATE
	AND FD.TESTO_1 = DATA.REPORTING_ENTITY
	AND CAST(FD.IMPORTO_14 AS VARCHAR2(255)) = CAST(DATA.RB_ROWID AS VARCHAR2(255))
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
UNION ALL
SELECT
	'ADJUSTMENTS' AS COD_TAPE,
	DATA.NUM_RETTIFICA AS RB_ROWID,
	SP.DATA_FINE AS MONTH_END_DATE,
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
	CASE
		WHEN NVL(C.ATTRIBUTO1, 'OCBA') = 'OCBA'
			THEN DATA.IMPORTO2 * 1000
		ELSE NULL
	END AS "OREO_CURRENT_BAL_ACCUMULATOR",
	NULL AS "OREO_LOSS_ON_SALE",
	NULL AS "OREO_PROJCTED_LIQUIDATION_DATE",
	NULL AS "OREO_LOAN_PRIN_BAL_PRPTY_REV",
	NULL AS "OREO_BEG_BAL_AT_CURRENT_YEAR",
	NULL AS "OREO_NOTES",
	NULL AS "OREO_COMPANY",
	NULL AS "FORECLOSURE_START_DATE",
	NULL AS "FORECLOSURE_SALE_DATE",
	CASE
		WHEN NVL(C.ATTRIBUTO1, 'OCBA') = 'OCBA'
			THEN DATA.IMPORTO2 * 1000
		ELSE NULL
	END AS "LOSS_SHARE_VALUE",
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
	NULL AS "FILLER_25",
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