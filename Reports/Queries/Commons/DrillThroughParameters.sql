SELECT DISTINCT
      CASE 
			WHEN DATA.COD_PROSPETTO = 'GL' THEN 'GL_DT'
            WHEN DATA.COD_PROSPETTO = 'CASH' THEN 'CASH_DT'
            WHEN DATA.COD_PROSPETTO = 'LOAN' THEN 'LOAN_DT'
			WHEN DATA.COD_PROSPETTO = 'SECURITIES' THEN 'SECURITIES_DT'
			WHEN DATA.COD_PROSPETTO = 'OFF_BS' THEN 'OBS_DT'
			WHEN DATA.COD_PROSPETTO = 'DERIVATIVES' THEN 'DER_DT'
			WHEN DATA.COD_PROSPETTO = 'BORROWINGS' THEN 'BOR_DT'
            ELSE DATA.COD_PROSPETTO || '_DT'
      END AS REPORT_CODE,
      ${"$SCE_P=(" + IF(CONCATENATE($Scenario.code) = "", "NA", CONCATENATE($Scenario.code)) + ");" +
      "$PER_P=(" + IF(CONCATENATE($Period.code) = "", "NA", CONCATENATE($Period.code)) + ");" +
      "$AZI_P=(" + IF(CONCATENATE($Entity.code) = "", "NA", CONCATENATE($Entity.code)) + ");" +
      "$VOC_RE_P=(" + IF(CONCATENATE($Account.code) = "", "NA", CONCATENATE($Account.code)) + ");" +
      "$DEST1_P=(" + IF(CONCATENATE($Cust_Dim1.code) = "", "NA", CONCATENATE($Cust_Dim1.code)) + ");" +
      "$DEST2_P=(" + IF(CONCATENATE($Cust_Dim2.code) = "", "NA", CONCATENATE($Cust_Dim2.code)) + ");" +
      "$DEST3_P=(" + IF(CONCATENATE($Cust_Dim3.code) = "", "NA", CONCATENATE($Cust_Dim3.code)) + ");" +
      "$DEST4_P=(" + IF(CONCATENATE($Cust_Dim4.code) = "", "NA", CONCATENATE($Cust_Dim4.code)) + ");" +
      "$DEST5_P=(" + IF(CONCATENATE($Cust_Dim5.code) = "", "NA", CONCATENATE($Cust_Dim5.code)) + ");" +
      "$CAT_P=(" + IF(CONCATENATE($Category.code) = "", "NA", CONCATENATE($Category.code)) + ");" +
      "$ACP_P=(" + IF(CONCATENATE($ICEntity.code) = "", "NA", CONCATENATE($ICEntity.code)) + ");" +
      "$DCP_P=(" + IF(CONCATENATE($ICCust_Dim.code) = "", "NA", CONCATENATE($ICCust_Dim.code)) + ");" +
      "$VAL_P=(" + IF(CONCATENATE($Currency.code) = "", "XXX", CONCATENATE($Currency.code)) + ");" +
      "$LUNPER_P=(" + IF(CONCATENATE($PeriodLength.code) = "", "LUN_0", CONCATENATE($PeriodLength.code)) + ");" +
      "$TIP_P=(" + IF(CONCATENATE($AmountType.code) = "", "TIP_O", CONCATENATE($AmountType.code)) + ");" +
      "$CAUS_P=(" + IF(CONCATENATE($Causal.code) = "", "$EB", CONCATENATE($Causal.code)) + ")"} AS PROMPT_FILTERS
      FROM
            RB_DRILL_INSTRUMENT DRILL
      INNER JOIN
            FORM_DATI DATA
      ON
            DRILL.OID_FORM_DATI = DATA.OID_FORM_DATI
	  INNER JOIN
			CONTO C
	  ON
			DRILL.COD_CONTO = C.COD_CONTO
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
			AND NVL(C.ATTRIBUTO2, 'Y') = 'Y'
UNION ALL
SELECT DISTINCT
      CASE
			WHEN DATA.COD_PROSPETTO = 'GL' THEN 'GL_DT_VAR'
            WHEN DATA.COD_PROSPETTO = 'CASH' THEN 'CASH_DT_VAR'
            WHEN DATA.COD_PROSPETTO = 'LOAN' THEN 'LOAN_DT_VAR'
			WHEN DATA.COD_PROSPETTO = 'SECURITIES' THEN 'SEC_DT_VAR'
			WHEN DATA.COD_PROSPETTO = 'OFF_BS' THEN 'OBS_DT_VAR'
			WHEN DATA.COD_PROSPETTO = 'DERIVATIVES' THEN 'DER_DT_VAR'
			WHEN DATA.COD_PROSPETTO = 'BORROWINGS' THEN 'BOR_DT_VAR'
            ELSE DATA.COD_PROSPETTO || '_DT_VAR'
      END AS REPORT_CODE,
      ${"PS=(" + IF(CONCATENATE(Parameter("PS").$Scenario.code) = "", "NA", CONCATENATE(Parameter("PS").$Scenario.code)) + ");" +
      "PP=(" + IF(CONCATENATE(Parameter("QTRLY_PERIODS").$Period.code) = "", "NA", CONCATENATE(Parameter("QTRLY_PERIODS").$Period.code)) + ");" +
      "PS2=(" + IF(CONCATENATE(Parameter("PS2").$Scenario.code) = "", "NA", CONCATENATE(Parameter("PS2").$Scenario.code)) + ");" +
      "PP2=(" + IF(CONCATENATE(Parameter("QTRLY_PERIODS2").$Period.code) = "", "NA", CONCATENATE(Parameter("QTRLY_PERIODS2").$Period.code)) + ");" +
      "$AZI_P=(" + IF(CONCATENATE($Entity.code) = "", "NA", CONCATENATE($Entity.code)) + ");" +
      "$VOC_RE_P=(" + IF(CONCATENATE($Account.code) = "", "NA", CONCATENATE($Account.code)) + ");" +
      "$DEST1_P=(" + IF(CONCATENATE($Cust_Dim1.code) = "", "NA", CONCATENATE($Cust_Dim1.code)) + ");" +
      "$DEST2_P=(" + IF(CONCATENATE($Cust_Dim2.code) = "", "NA", CONCATENATE($Cust_Dim2.code)) + ");" +
      "$DEST3_P=(" + IF(CONCATENATE($Cust_Dim3.code) = "", "NA", CONCATENATE($Cust_Dim3.code)) + ");" +
      "$DEST4_P=(" + IF(CONCATENATE($Cust_Dim4.code) = "", "NA", CONCATENATE($Cust_Dim4.code)) + ");" +
      "$DEST5_P=(" + IF(CONCATENATE($Cust_Dim5.code) = "", "NA", CONCATENATE($Cust_Dim5.code)) + ");" +
      "$CAT_P=(" + IF(CONCATENATE($Category.code) = "", "NA", CONCATENATE($Category.code)) + ");" +
      "$ACP_P=(" + IF(CONCATENATE($ICEntity.code) = "", "NA", CONCATENATE($ICEntity.code)) + ");" +
      "$DCP_P=(" + IF(CONCATENATE($ICCust_Dim.code) = "", "NA", CONCATENATE($ICCust_Dim.code)) + ");" +
      "$VAL_P=(" + IF(CONCATENATE($Currency.code) = "", "XXX", CONCATENATE($Currency.code)) + ");" +
      "$LUNPER_P=(" + IF(CONCATENATE($PeriodLength.code) = "", "LUN_0", CONCATENATE($PeriodLength.code)) + ");" +
      "$TIP_P=(" + IF(CONCATENATE($AmountType.code) = "", "TIP_O", CONCATENATE($AmountType.code)) + ");" +
      "$CAUS_P=(" + IF(CONCATENATE($Causal.code) = "", "$EB", CONCATENATE($Causal.code)) + ")"} AS PROMPT_FILTERS
      FROM
            RB_DRILL_INSTRUMENT DRILL
      INNER JOIN
            FORM_DATI DATA
      ON
            DRILL.OID_FORM_DATI = DATA.OID_FORM_DATI
	  INNER JOIN
			CONTO C
	  ON
			DRILL.COD_CONTO = C.COD_CONTO
      WHERE
            (SELECT COUNT(*) FROM PERIODO WHERE COD_PERIODO IN (${$Period.code})) = 0
            AND (
                  DRILL.COD_SCENARIO IN (${CONCATENATE(Parameter("PS").$Scenario.code)})
                  OR DRILL.COD_SCENARIO IN (${CONCATENATE(Parameter("PS2").$Scenario.code)})
            )
            AND (
                  DRILL.COD_PERIODO IN (${CONCATENATE(Parameter("QTRLY_PERIODS").$Period.code)})
                  OR DRILL.COD_PERIODO IN (${CONCATENATE(Parameter("QTRLY_PERIODS").$Period.code)})
            )
            AND DRILL.COD_AZIENDA IN (${$Entity.code})
            AND DRILL.COD_CONTO IN (${$Account.code})
            AND DRILL.COD_DEST1 IN (${$Cust_Dim1.code})
            AND DRILL.COD_DEST2 IN (${$Cust_Dim2.code})
            AND DRILL.COD_DEST3 IN (${$Cust_Dim3.code})
            AND DRILL.COD_DEST4 IN (${$Cust_Dim4.code})
            AND DRILL.COD_DEST5 IN (${$Cust_Dim5.code})
            AND DRILL.COD_CATEGORIA IN (${$Category.code})
			AND NVL(C.ATTRIBUTO2, 'Y') = 'Y'			
UNION ALL
SELECT DISTINCT
      'GL_DT' AS REPORT_CODE,
      ${"$SCE_P=(" + IF(CONCATENATE($Scenario.code) = "", "NA", CONCATENATE($Scenario.code)) + ");" +
      "$PER_P=(" + IF(CONCATENATE($Period.code) = "", "NA", CONCATENATE($Period.code)) + ");" +
      "$AZI_P=(" + IF(CONCATENATE($Entity.code) = "", "NA", CONCATENATE($Entity.code)) + ");" +
      "$VOC_RE_P=(" + IF(CONCATENATE($Account.code) = "", "NA", CONCATENATE($Account.code)) + ");" +
      "$DEST1_P=(" + IF(CONCATENATE($Cust_Dim1.code) = "", "NA", CONCATENATE($Cust_Dim1.code)) + ");" +
      "$DEST2_P=(" + IF(CONCATENATE($Cust_Dim2.code) = "", "NA", CONCATENATE($Cust_Dim2.code)) + ");" +
      "$DEST3_P=(" + IF(CONCATENATE($Cust_Dim3.code) = "", "NA", CONCATENATE($Cust_Dim3.code)) + ");" +
      "$DEST4_P=(" + IF(CONCATENATE($Cust_Dim4.code) = "", "NA", CONCATENATE($Cust_Dim4.code)) + ");" +
      "$DEST5_P=(" + IF(CONCATENATE($Cust_Dim5.code) = "", "NA", CONCATENATE($Cust_Dim5.code)) + ");" +
      "$CAT_P=(" + IF(CONCATENATE($Category.code) = "", "NA", CONCATENATE($Category.code)) + ");" +
      "$ACP_P=(" + IF(CONCATENATE($ICEntity.code) = "", "NA", CONCATENATE($ICEntity.code)) + ");" +
      "$DCP_P=(" + IF(CONCATENATE($ICCust_Dim.code) = "", "NA", CONCATENATE($ICCust_Dim.code)) + ");" +
      "$VAL_P=(" + IF(CONCATENATE($Currency.code) = "", "XXX", CONCATENATE($Currency.code)) + ");" +
      "$LUNPER_P=(" + IF(CONCATENATE($PeriodLength.code) = "", "LUN_0", CONCATENATE($PeriodLength.code)) + ");" +
      "$TIP_P=(" + IF(CONCATENATE($AmountType.code) = "", "TIP_O", CONCATENATE($AmountType.code)) + ");" +
      "$CAUS_P=(" + IF(CONCATENATE($Causal.code) = "", "$EB", CONCATENATE($Causal.code)) + ")"} AS PROMPT_FILTERS
      FROM
            DATI_RETT_RIGA DRILL
	  INNER JOIN
			CONTO C
	  ON
			DRILL.COD_CONTO = C.COD_CONTO
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
			AND NVL(C.ATTRIBUTO2, 'Y') = 'Y'
UNION ALL
SELECT DISTINCT
      'NOT_DRILLABLE' AS REPORT_CODE,
      ${"$SCE_P=(" + IF(CONCATENATE($Scenario.code) = "", "NA", CONCATENATE($Scenario.code)) + ");" +
      "$PER_P=(" + IF(CONCATENATE($Period.code) = "", "NA", CONCATENATE($Period.code)) + ");" +
      "$AZI_P=(" + IF(CONCATENATE($Entity.code) = "", "NA", CONCATENATE($Entity.code)) + ");" +
      "$VOC_RE_P=(" + IF(CONCATENATE($Account.code) = "", "NA", CONCATENATE($Account.code)) + ");" +
      "$DEST1_P=(" + IF(CONCATENATE($Cust_Dim1.code) = "", "NA", CONCATENATE($Cust_Dim1.code)) + ");" +
      "$DEST2_P=(" + IF(CONCATENATE($Cust_Dim2.code) = "", "NA", CONCATENATE($Cust_Dim2.code)) + ");" +
      "$DEST3_P=(" + IF(CONCATENATE($Cust_Dim3.code) = "", "NA", CONCATENATE($Cust_Dim3.code)) + ");" +
      "$DEST4_P=(" + IF(CONCATENATE($Cust_Dim4.code) = "", "NA", CONCATENATE($Cust_Dim4.code)) + ");" +
      "$DEST5_P=(" + IF(CONCATENATE($Cust_Dim5.code) = "", "NA", CONCATENATE($Cust_Dim5.code)) + ");" +
      "$CAT_P=(" + IF(CONCATENATE($Category.code) = "", "NA", CONCATENATE($Category.code)) + ");" +
      "$ACP_P=(" + IF(CONCATENATE($ICEntity.code) = "", "NA", CONCATENATE($ICEntity.code)) + ");" +
      "$DCP_P=(" + IF(CONCATENATE($ICCust_Dim.code) = "", "NA", CONCATENATE($ICCust_Dim.code)) + ");" +
      "$VAL_P=(" + IF(CONCATENATE($Currency.code) = "", "XXX", CONCATENATE($Currency.code)) + ");" +
      "$LUNPER_P=(" + IF(CONCATENATE($PeriodLength.code) = "", "LUN_0", CONCATENATE($PeriodLength.code)) + ");" +
      "$TIP_P=(" + IF(CONCATENATE($AmountType.code) = "", "TIP_O", CONCATENATE($AmountType.code)) + ");" +
      "$CAUS_P=(" + IF(CONCATENATE($Causal.code) = "", "$EB", CONCATENATE($Causal.code)) + ")"} AS PROMPT_FILTERS
FROM
	DUAL
WHERE
	EXISTS (SELECT 1 FROM CONTO WHERE COD_CONTO = ${$Account.code} AND NVL(ATTRIBUTO2, 'Y') = 'N')