SELECT
	DATA.COD_PROSPETTO AS COD_TAPE,
	CAST(DATA.IMPORTO_2 AS VARCHAR2(255)) AS RB_ROWID,
	DATA.DATA_1 AS MONTH_END_DATE,
	DATA.TESTO_14 AS REPORTING_ENTITY,
	DATA.TESTO_15 AS INSTRUMENT,
	CAST(DATA.TESTO_16 AS VARCHAR2(1000)) AS SOURCE,
	DATA.TESTO_11 AS FED_RESERVE,
	DATA.TESTO_12 AS DEPOSIT_OR_NONDEP,
	DATA.IMPORTO_1 AS CAPITAL_RISK_RATE,
	DATA.TESTO_17 AS INTERCOMPANY,
	DATA.TESTO_18 AS CALL_CODE,
	DATA.TESTO_19 AS CURRENCY_CODE,
	DATA.IMPORTO_3 AS FOREIGN_AMOUNT,
	DATA.IMPORTO_4 AS BASE_EQUIVALENT,
	DATA.TESTO_20 AS CASH_ACCT_NBR,
	DATA.TESTO_21 AS CASH_ACCOUNT_NAME,
	DATA.TESTO_22 AS CUSTOMER_ID,
	DATA.TESTO_23 AS CUSTOMER_NAME,
	DATA.TESTO_24 AS CUSTOMER_TYPE,
	DATA.TESTO_25 AS BRANCH_AGENCY_002,
	DATA.TESTO_26 AS HOLDING_COM_Y9C,
	DATA.TESTO_27 AS FOREIGN_DOMESTIC,
	DATA.TESTO_28 AS COUNTRY_DESC,
	DATA.TESTO_29 AS CONSOL_NODE,
	DATA.TESTO_30 AS LEGAL_ENTITY,
	DATA.TESTO_31 AS PRIMARY_GL_NBR,
	DATA.TESTO_32 AS GL_KEY_CODE,
	DATA.TESTO_33 AS GL_AMNT_IFRS,
	DATA.TESTO_34 AS GL_AMNT_USGAAP,
	DATA.IMPORTO_5 AS ACCRUED_INTEREST,
	DATA.TESTO_35 AS HIGHLVL_PROD_CAT,
	DATA.TESTO_36 AS IN_COLLECTION,
	DATA.TESTO_37 AS CURR_AND_COIN,
	DATA.TESTO_38 AS INTEREST_BEARING,
	DATA.TESTO_39 AS FOREIGN,
	DATA.TESTO_40 AS DOMESTIC,
	DATA.TESTO_41 AS OTHER_CASH,
	DATA.TESTO_42 AS PRODUCT_TYPE,
	DATA.TESTO_43 AS CUSTOMER_TYPE_PX,
	DATA.TESTO_44 AS CUST_RELATION_PX,
	DATA.TESTO_45 AS CUST_RELATION_GL,
	DATA.TESTO_46 AS CUSTOMER_TYPE_GL,
	DATA.TESTO_47 AS COUNTRY_CODE,
	DATA.TESTO_48 AS CONSOL_BU_NODE,
	DATA.TESTO_49 AS BUS_UNIT_NAME,
	DATA.TESTO_50 AS BUSINESS_UNIT,
	DATA.TESTO_1 AS ACCOUNT,
	DATA.TESTO_2 AS ACCOUNT_NAME,
	DATA.TESTO_3 AS PRODUCT,
	DATA.TESTO_4 AS PRODUCT_NAME,
	DATA.TESTO_5 AS OPERATING_UNIT,
	DATA.TESTO_6 AS DEPTID,
	DATA.TESTO_7 AS AFFILIATE,
	DATA.TESTO_8 AS AFFILIATE_NAME,
	DATA.TESTO_9 AS AFFL_CONSOL_NODE,
	DATA.TESTO_10 AS CUST_CLASS,
	${CONCATENATE($Account.code, " (", PARENT($Account(HIERARCHY("RE"))).code, " - ", PARENT($Account(HIERARCHY("RE"))).desc, ": ", $Account.attribute4, " - ", $Account.attribute5, ")")} AS LINE_ITEM
FROM
  RB_DRILL_INSTRUMENT DRILL
  INNER JOIN
  FORM_DATI DATA
  ON
    DRILL.OID_FORM_DATI = DATA.OID_FORM_DATI
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
  AND DATA.COD_PROSPETTO = 'CASH'
UNION ALL
SELECT
	'ADJUSTMENTS' AS COD_TAPE,
	DATA.NUM_RETTIFICA AS RB_ROWID,
	SP.DATA_FINE AS MONTH_END_DATE,
	NULL AS REPORTING_ENTITY,
	NULL AS INSTRUMENT,
	A.NOTE AS SOURCE,
	NULL AS FED_RESERVE,
	NULL AS DEPOSIT_OR_NONDEP,
	NULL AS CAPITAL_RISK_RATE,
	NULL AS INTERCOMPANY,
	NULL AS CALL_CODE,
	DATA.COD_VALUTA2 AS CURRENCY_CODE,
	DATA.IMPORTO2 * 1000 AS FOREIGN_AMOUNT,
	DATA.IMPORTO2 * 1000 AS BASE_EQUIVALENT,
	NULL AS CASH_ACCT_NBR,
	NULL AS CASH_ACCOUNT_NAME,
	NULL AS CUSTOMER_ID,
	NULL AS CUSTOMER_NAME,
	NULL AS CUSTOMER_TYPE,
	NULL AS BRANCH_AGENCY_002,
	NULL AS HOLDING_COM_Y9C,
	NULL AS FOREIGN_DOMESTIC,
	NULL AS COUNTRY_DESC,
	NULL AS CONSOL_NODE,
	NULL AS LEGAL_ENTITY,
	NULL AS PRIMARY_GL_NBR,
	NULL AS GL_KEY_CODE,
	NULL AS GL_AMNT_IFRS,
	NULL AS GL_AMNT_USGAAP,
	NULL AS ACCRUED_INTEREST,
	NULL AS HIGHLVL_PROD_CAT,
	NULL AS IN_COLLECTION,
	NULL AS CURR_AND_COIN,
	NULL AS INTEREST_BEARING,
	NULL AS FOREIGN,
	NULL AS DOMESTIC,
	NULL AS OTHER_CASH,
	NULL AS PRODUCT_TYPE,
	NULL AS CUSTOMER_TYPE_PX,
	NULL AS CUST_RELATION_PX,
	NULL AS CUST_RELATION_GL,
	NULL AS CUSTOMER_TYPE_GL,
	NULL AS COUNTRY_CODE,
	NULL AS CONSOL_BU_NODE,
	NULL AS BUS_UNIT_NAME,
	DATA.COD_AZIENDA AS BUSINESS_UNIT,
	NULL AS ACCOUNT,
	NULL AS ACCOUNT_NAME,
	DATA.COD_DEST3 AS PRODUCT,
	NULL AS PRODUCT_NAME,
	DATA.COD_DEST2 AS OPERATING_UNIT,
	DATA.COD_DEST2 AS DEPTID,
	DATA.COD_AZI_CTP AS AFFILIATE,
	NULL AS AFFILIATE_NAME,
	NULL AS AFFL_CONSOL_NODE,
	DATA.COD_DEST4 AS CUST_CLASS,
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