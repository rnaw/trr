SELECT
	"RB_ROWID",
	H."MONTH_END_DATE",
	"REPORTING_ENTITY",
	"INTERCOMPANY",
	"CONSOL_NODE",
	"BUSINESS_UNIT",
	"GL_KEY_CODE",
	"GL_KEY_CODE_DESC",
	"CALL_CODE",
	"CALL_CODE_DESC",
	"LOAN_NUMBER",
	"INSTRUMENT_ID",
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
	RB_V_OREO H
	INNER JOIN
	(
		SELECT DISTINCT
			DATA_1 AS MONTH_END_DATE
		FROM
			FORM_DATI
		WHERE
			COD_SCENARIO = ${A1}
			AND COD_PERIODO = ${B1}
			AND COD_PROSPETTO = 'OREO'
	) F
	ON
		H.MONTH_END_DATE = F.MONTH_END_DATE