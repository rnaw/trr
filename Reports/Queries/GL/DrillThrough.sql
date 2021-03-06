SELECT
	DATA.SOURCE AS COD_TAPE,
  DATA.COD_SCENARIO,
	DATA.COD_PERIODO,
	DATA.COD_AZIENDA AS BUSINESS_UNIT,
  DATA.COD_AZI_CTP AS AFFILIATE,
	DATA.COD_CONTO AS GL_KEY_CODE,
  DATA.COD_CATEGORIA AS CATEGORY,
	DATA.COD_DEST1 AS GL_ACCOUNT,
	CASE
		WHEN SUBSTR(DATA.COD_DEST2, 1, 3) = 'BLC'
			THEN SUBSTR(DATA.COD_DEST2, 5)
		ELSE RB_F_TGK_SANITIZE_CODE(NULL)
	END AS OPERATING_UNIT,
	CASE
		WHEN SUBSTR(DATA.COD_DEST2, 1, 3) = 'DPT'
			THEN SUBSTR(DATA.COD_DEST2, 5)
		ELSE RB_F_TGK_SANITIZE_CODE(NULL)
	END AS DEPTID,
	CASE
		WHEN SUBSTR(DATA.COD_DEST2_CTP, 1, 3) = 'BLC'
			THEN SUBSTR(DATA.COD_DEST2_CTP, 5)
		ELSE RB_F_TGK_SANITIZE_CODE(NULL)
	END AS AFFILIATE_OBU,
	CASE
		WHEN SUBSTR(DATA.COD_DEST2_CTP, 1, 3) = 'DPT'
			THEN SUBSTR(DATA.COD_DEST2_CTP, 5)
		ELSE RB_F_TGK_SANITIZE_CODE(NULL)
	END AS AFFILIATE_DEPTID,
	DATA.COD_DEST3 AS PRODUCT,
	DATA.COD_DEST4 AS CUSTOMER_CLASS,
	DATA.COD_DEST5 AS CALL_CODE,
  'NA' AS PROJECTID,
  DATA.COD_VALUTA AS BASE_CURRENCY,
	SUM(DATA.IMPORTO_1) AS BASE_EQUIVALENT,
	DATA.COD_VALUTA_ORIGINARIA AS CURRENCY_CD,
	SUM(DATA.IMPORTO_2) AS FOREIGN_EQUIVALENT,
	${CONCATENATE($Account.code, " (", PARENT($Account(HIERARCHY("RE"))).code, " - ", PARENT($Account(HIERARCHY("RE"))).desc, ": ", $Account.attribute4, " - ", $Account.attribute5, ")")} AS LINE_ITEM
FROM
  RB_DRILL_INSTRUMENT DRILL
  INNER JOIN
  RB_V_GL_AND_MANUAL_IC DATA
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
GROUP BY
  DATA.SOURCE,
  DATA.COD_SCENARIO,
	DATA.COD_PERIODO,
	DATA.COD_AZIENDA,
  DATA.COD_AZI_CTP,
	DATA.COD_CONTO,
  DATA.COD_CATEGORIA,
	DATA.COD_DEST1,
	CASE
		WHEN SUBSTR(DATA.COD_DEST2, 1, 3) = 'BLC'
			THEN SUBSTR(DATA.COD_DEST2, 5)
		ELSE RB_F_TGK_SANITIZE_CODE(NULL)
	END,
	CASE
		WHEN SUBSTR(DATA.COD_DEST2, 1, 3) = 'DPT'
			THEN SUBSTR(DATA.COD_DEST2, 5)
		ELSE RB_F_TGK_SANITIZE_CODE(NULL)
	END,
	CASE
		WHEN SUBSTR(DATA.COD_DEST2_CTP, 1, 3) = 'BLC'
			THEN SUBSTR(DATA.COD_DEST2_CTP, 5)
		ELSE RB_F_TGK_SANITIZE_CODE(NULL)
	END,
	CASE
		WHEN SUBSTR(DATA.COD_DEST2_CTP, 1, 3) = 'DPT'
			THEN SUBSTR(DATA.COD_DEST2_CTP, 5)
		ELSE RB_F_TGK_SANITIZE_CODE(NULL)
	END,
	DATA.COD_DEST3,
	DATA.COD_DEST4,
	DATA.COD_DEST5,
  DATA.NOTE,
  DATA.COD_VALUTA,
	DATA.COD_VALUTA_ORIGINARIA
UNION ALL
SELECT
  'ADJUSTMENTS' AS COD_TAPE,
  DATA.COD_SCENARIO,
  DATA.COD_PERIODO,
  DATA.COD_AZIENDA,
  DATA.COD_AZI_CTP,
  DATA.COD_CONTO,
  DATA.COD_CATEGORIA,
  DATA.COD_DEST1, 
  CASE
		WHEN SUBSTR(DATA.COD_DEST2, 1, 3) = 'BLC'
			THEN SUBSTR(DATA.COD_DEST2, 5)
		ELSE RB_F_TGK_SANITIZE_CODE(NULL)
	END AS OPERATING_UNIT,
	CASE
		WHEN SUBSTR(DATA.COD_DEST2, 1, 3) = 'DPT'
			THEN SUBSTR(DATA.COD_DEST2, 5)
		ELSE RB_F_TGK_SANITIZE_CODE(NULL)
	END AS DEPTID,
	CASE
		WHEN SUBSTR(DATA.COD_DEST2_CTP, 1, 3) = 'BLC'
			THEN SUBSTR(DATA.COD_DEST2_CTP, 5)
		ELSE RB_F_TGK_SANITIZE_CODE(NULL)
	END AS AFFILIATE_OBU,
	CASE
		WHEN SUBSTR(DATA.COD_DEST2_CTP, 1, 3) = 'DPT'
			THEN SUBSTR(DATA.COD_DEST2_CTP, 5)
		ELSE RB_F_TGK_SANITIZE_CODE(NULL)
	END AS AFFILIATE_DEPTID,
  DATA.COD_DEST3,
  DATA.COD_DEST4,
  DATA.COD_DEST5,
  DATA.NOTE,
  DATA.COD_VALUTA,
  DATA.IMPORTO2 * 1000 AS IMPORTO,
  DATA.COD_VALUTA2 AS COD_VALUTA_ORIGINARIA,
  DATA.IMPORTO2 * 1000 AS IMPORTO_VALUTA_ORIGINARIA,
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