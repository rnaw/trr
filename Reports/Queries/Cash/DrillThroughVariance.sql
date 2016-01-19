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
    WHEN  A.CURRENCY_CODE <> P.CURRENCY_CODE
          OR A.CURRENCY_CODE IS NULL AND P.CURRENCY_CODE IS NOT NULL
          OR A.CURRENCY_CODE IS NOT NULL AND P.CURRENCY_CODE IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS CURRENCY_CODE,
  CASE
   WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.CASH_ACCOUNT_NBR <> P.CASH_ACCOUNT_NBR
          OR A.CASH_ACCOUNT_NBR IS NULL AND P.CASH_ACCOUNT_NBR IS NOT NULL
          OR A.CASH_ACCOUNT_NBR IS NOT NULL AND P.CASH_ACCOUNT_NBR IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS CASH_ACCOUNT_NBR,
  CASE
   WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.ACCOUNT_NAME <> P.ACCOUNT_NAME
          OR A.ACCOUNT_NAME IS NULL AND P.ACCOUNT_NAME IS NOT NULL
          OR A.ACCOUNT_NAME IS NOT NULL AND P.ACCOUNT_NAME IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS ACCOUNT_NAME,
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
    WHEN  A.COUNTRY_DESC <> P.COUNTRY_DESC
          OR A.COUNTRY_DESC IS NULL AND P.COUNTRY_DESC IS NOT NULL
          OR A.COUNTRY_DESC IS NOT NULL AND P.COUNTRY_DESC IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS COUNTRY_DESC,
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
  COALESCE(A.BASE_EQUIVALENT, 0) - COALESCE(P.BASE_EQUIVALENT, 0) AS BASE_EQUIVALENT,
  CASE
   WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.HIGHLVL_PROD_CAT <> P.HIGHLVL_PROD_CAT
          OR A.HIGHLVL_PROD_CAT IS NULL AND P.HIGHLVL_PROD_CAT IS NOT NULL
          OR A.HIGHLVL_PROD_CAT IS NOT NULL AND P.HIGHLVL_PROD_CAT IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS HIGHLVL_PROD_CAT,
  CASE
   WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.IN_COLLECTION <> P.IN_COLLECTION
          OR A.IN_COLLECTION IS NULL AND P.IN_COLLECTION IS NOT NULL
          OR A.IN_COLLECTION IS NOT NULL AND P.IN_COLLECTION IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS IN_COLLECTION,
  CASE
   WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.CURR_AND_COIN <> P.CURR_AND_COIN
          OR A.CURR_AND_COIN IS NULL AND P.CURR_AND_COIN IS NOT NULL
          OR A.CURR_AND_COIN IS NOT NULL AND P.CURR_AND_COIN IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS CURR_AND_COIN,
  CASE
   WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.INTEREST_BEARING <> P.INTEREST_BEARING
          OR A.INTEREST_BEARING IS NULL AND P.INTEREST_BEARING IS NOT NULL
          OR A.INTEREST_BEARING IS NOT NULL AND P.INTEREST_BEARING IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS INTEREST_BEARING,
  CASE
   WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.FED_RESERVE <> P.FED_RESERVE
          OR A.FED_RESERVE IS NULL AND P.FED_RESERVE IS NOT NULL
          OR A.FED_RESERVE IS NOT NULL AND P.FED_RESERVE IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS FED_RESERVER,
  CASE
   WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.DEPOSIT_OR_NONDEP <> P.DEPOSIT_OR_NONDEP
          OR A.DEPOSIT_OR_NONDEP IS NULL AND P.DEPOSIT_OR_NONDEP IS NOT NULL
          OR A.DEPOSIT_OR_NONDEP IS NOT NULL AND P.DEPOSIT_OR_NONDEP IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS DEPOSIT_OR_NONDEP,
  CASE
   WHEN A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.INSTRUMENT IS NULL AND A.INSTRUMENT IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
    WHEN  A.CAPITAL_RISK_RATE <> P.CAPITAL_RISK_RATE
          OR A.CAPITAL_RISK_RATE IS NULL AND P.CAPITAL_RISK_RATE IS NOT NULL
          OR A.CAPITAL_RISK_RATE IS NOT NULL AND P.CAPITAL_RISK_RATE IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS CAPITAL_RISK_RATE,
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
    WHEN  A.PRODUCT_NAME <> P.PRODUCT_NAME
          OR A.PRODUCT_NAME IS NULL AND P.PRODUCT_NAME IS NOT NULL
          OR A.PRODUCT_NAME IS NOT NULL AND P.PRODUCT_NAME IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS PRODUCT_NAME,
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
  ${CONCATENATE($Account.code, " (", PARENT($Account(HIERARCHY("RE"))).code, " - ", PARENT($Account(HIERARCHY("RE"))).desc, ": ", $Account.attribute4, " - ", $Account.attribute5, ")")} AS LINE_ITEM
FROM
(
  SELECT
    CAST(ROW_NUMBER() OVER (PARTITION BY
      DATA.TESTO_14,
      DATA.TESTO_15
      ORDER BY
        DATA.TESTO_18,
        DATA.TESTO_19,
        DATA.TESTO_20,
        DATA.TESTO_2,
        DATA.TESTO_22,
        DATA.TESTO_23,
        DATA.TESTO_24,
        DATA.TESTO_27,
        DATA.TESTO_28,
        DATA.TESTO_49,
        DATA.TESTO_32,
        DATA.IMPORTO_4,
        DATA.TESTO_35,
        DATA.TESTO_36,
        DATA.TESTO_37,
        DATA.TESTO_38,
        DATA.TESTO_11,
        DATA.TESTO_12,
        DATA.IMPORTO_1,
        DATA.TESTO_3,
        DATA.TESTO_4,
        DATA.TESTO_5,
        DATA.TESTO_7,
        DATA.TESTO_10
    ) AS VARCHAR2(255)) AS ROW_ID,
    DATA.TESTO_14 AS REPORTING_ENTITY,
    DATA.TESTO_15 AS INSTRUMENT,
    DATA.TESTO_18 AS CALL_CODE,
    DATA.TESTO_19 AS CURRENCY_CODE,
    DATA.TESTO_20 AS CASH_ACCOUNT_NBR,
    DATA.TESTO_2 AS ACCOUNT_NAME,
    DATA.TESTO_22 AS CUSTOMER_ID,
    DATA.TESTO_23 AS CUSTOMER_NAME,
    DATA.TESTO_24 AS CUSTOMER_TYPE,
    DATA.TESTO_27 AS FOREIGN_DOMESTIC,
    DATA.TESTO_28 AS COUNTRY_DESC,
    DATA.TESTO_49 AS BUSINESS_UNIT,
    DATA.TESTO_32 AS GL_KEY_CODE,
    DATA.IMPORTO_4 AS BASE_EQUIVALENT,
    DATA.TESTO_35 AS HIGHLVL_PROD_CAT,
    DATA.TESTO_36 AS IN_COLLECTION,
    DATA.TESTO_37 AS CURR_AND_COIN,
    DATA.TESTO_38 AS INTEREST_BEARING,
    DATA.TESTO_11 AS FED_RESERVE,
    DATA.TESTO_12 AS DEPOSIT_OR_NONDEP,
    DATA.IMPORTO_1 AS CAPITAL_RISK_RATE,
    DATA.TESTO_3 AS PRODUCT,
    DATA.TESTO_4 AS PRODUCT_NAME,
    DATA.TESTO_5 AS OPERATING_UNIT,
    DATA.TESTO_7 AS AFFILIATE,
    DATA.TESTO_10 AS CUST_CLASS
  FROM
	  RB_DRILL_INSTRUMENT DRILL
  INNER JOIN
	  FORM_DATI DATA
	  ON
		DRILL.OID_FORM_DATI = DATA.OID_FORM_DATI
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
	'ADJUSTMENT' AS REPORTING_ENTITY,
    ' ' AS INSTRUMENT,
    NULL AS CALL_CODE,
    DATA.COD_VALUTA2 AS CURRENCY_CODE,
    NULL AS CASH_ACCOUNT_NBR,
    NULL AS ACCOUNT_NAME,
    NULL AS CUSTOMER_ID,
    NULL AS CUSTOMER_NAME,
    NULL AS CUSTOMER_TYPE,
    NULL AS FOREIGN_DOMESTIC,
    NULL AS COUNTRY_DESC,
    DATA.COD_AZIENDA AS BUSINESS_UNIT,
    NULL AS GL_KEY_CODE,
    SUM(DATA.IMPORTO2) * 1000 AS BASE_EQUIVALENT,
    NULL AS HIGHLVL_PROD_CAT,
    NULL AS IN_COLLECTION,
    NULL AS CURR_AND_COIN,
    NULL AS INTEREST_BEARING,
    NULL AS FED_RESERVE,
    NULL AS DEPOSIT_OR_NONDEP,
    NULL AS CAPITAL_RISK_RATE,
    DATA.COD_DEST3 AS PRODUCT,
    NULL AS PRODUCT_NAME,
    DATA.COD_DEST2 AS OPERATING_UNIT,
    DATA.COD_AZI_CTP AS AFFILIATE,
    DATA.COD_DEST4 AS CUST_CLASS
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
    DATA.COD_VALUTA2,
    DATA.COD_AZIENDA,
    DATA.COD_DEST3,
    DATA.COD_DEST2,
    DATA.COD_AZI_CTP,
    DATA.COD_DEST4
) A
FULL OUTER JOIN
(
  SELECT
    CAST(ROW_NUMBER() OVER (PARTITION BY
      DATA.TESTO_14,
      DATA.TESTO_15
      ORDER BY
        DATA.TESTO_18,
        DATA.TESTO_19,
        DATA.TESTO_20,
        DATA.TESTO_2,
        DATA.TESTO_22,
        DATA.TESTO_23,
        DATA.TESTO_24,
        DATA.TESTO_27,
        DATA.TESTO_28,
        DATA.TESTO_49,
        DATA.TESTO_32,
        DATA.IMPORTO_4,
        DATA.TESTO_35,
        DATA.TESTO_36,
        DATA.TESTO_37,
        DATA.TESTO_38,
        DATA.TESTO_11,
        DATA.TESTO_12,
        DATA.IMPORTO_1,
        DATA.TESTO_3,
        DATA.TESTO_4,
        DATA.TESTO_5,
        DATA.TESTO_7,
        DATA.TESTO_10
    ) AS VARCHAR2(255)) AS ROW_ID,
    DATA.TESTO_14 AS REPORTING_ENTITY,
    DATA.TESTO_15 AS INSTRUMENT,
    DATA.TESTO_18 AS CALL_CODE,
    DATA.TESTO_19 AS CURRENCY_CODE,
    DATA.TESTO_20 AS CASH_ACCOUNT_NBR,
    DATA.TESTO_2 AS ACCOUNT_NAME,
    DATA.TESTO_22 AS CUSTOMER_ID,
    DATA.TESTO_23 AS CUSTOMER_NAME,
    DATA.TESTO_24 AS CUSTOMER_TYPE,
    DATA.TESTO_27 AS FOREIGN_DOMESTIC,
    DATA.TESTO_28 AS COUNTRY_DESC,
    DATA.TESTO_49 AS BUSINESS_UNIT,
    DATA.TESTO_32 AS GL_KEY_CODE,
    DATA.IMPORTO_4 AS BASE_EQUIVALENT,
    DATA.TESTO_35 AS HIGHLVL_PROD_CAT,
    DATA.TESTO_36 AS IN_COLLECTION,
    DATA.TESTO_37 AS CURR_AND_COIN,
    DATA.TESTO_38 AS INTEREST_BEARING,
    DATA.TESTO_11 AS FED_RESERVE,
    DATA.TESTO_12 AS DEPOSIT_OR_NONDEP,
    DATA.IMPORTO_1 AS CAPITAL_RISK_RATE,
    DATA.TESTO_3 AS PRODUCT,
    DATA.TESTO_4 AS PRODUCT_NAME,
    DATA.TESTO_5 AS OPERATING_UNIT,
    DATA.TESTO_7 AS AFFILIATE,
    DATA.TESTO_10 AS CUST_CLASS
  FROM
	  RB_DRILL_INSTRUMENT DRILL
  INNER JOIN
	  FORM_DATI DATA
	  ON
		DRILL.OID_FORM_DATI = DATA.OID_FORM_DATI
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
	'ADJUSTMENT' AS REPORTING_ENTITY,
    ' ' AS INSTRUMENT,
    NULL AS CALL_CODE,
    DATA.COD_VALUTA2 AS CURRENCY_CODE,
    NULL AS CASH_ACCOUNT_NBR,
    NULL AS ACCOUNT_NAME,
    NULL AS CUSTOMER_ID,
    NULL AS CUSTOMER_NAME,
    NULL AS CUSTOMER_TYPE,
    NULL AS FOREIGN_DOMESTIC,
    NULL AS COUNTRY_DESC,
    DATA.COD_AZIENDA AS BUSINESS_UNIT,
    NULL AS GL_KEY_CODE,
    SUM(DATA.IMPORTO2) * 1000 AS BASE_EQUIVALENT,
    NULL AS HIGHLVL_PROD_CAT,
    NULL AS IN_COLLECTION,
    NULL AS CURR_AND_COIN,
    NULL AS INTEREST_BEARING,
    NULL AS FED_RESERVE,
    NULL AS DEPOSIT_OR_NONDEP,
    NULL AS CAPITAL_RISK_RATE,
    DATA.COD_DEST3 AS PRODUCT,
    NULL AS PRODUCT_NAME,
    DATA.COD_DEST2 AS OPERATING_UNIT,
    DATA.COD_AZI_CTP AS AFFILIATE,
    DATA.COD_DEST4 AS CUST_CLASS
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
    DATA.COD_VALUTA2,
    DATA.COD_AZIENDA,
    DATA.COD_DEST3,
    DATA.COD_DEST2,
    DATA.COD_AZI_CTP,
    DATA.COD_DEST4
  ) P
ON
  A.ROW_ID = P.ROW_ID
  AND A.REPORTING_ENTITY = P.REPORTING_ENTITY
  AND (A.INSTRUMENT = P.INSTRUMENT OR (A.INSTRUMENT IS NULL AND P.INSTRUMENT IS NULL))