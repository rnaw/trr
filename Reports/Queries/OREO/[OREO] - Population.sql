SELECT 
    A.COD_SCENARIO,
    A.COD_PERIODO,
    CGG.DESC_CONTO_ELEGER0 AS DESC_CONTO_ELEGER00,
    C.ATTRIBUTO5 AS FED_CALL_CODE,
    CG.DESC_CONTO_ELEGER0,
    A.DATA_SOURCE,
    A."RB_ROWID",
    A."MONTH_END_DATE",
    A."REPORTING_ENTITY",
    A."INTERCOMPANY",
    A."CONSOL_NODE",
    A."BUSINESS_UNIT",
    A."GL_KEY_CODE",
    A."GL_KEY_CODE_DESC",
    A."CALL_CODE",
    A."CALL_CODE_DESC",
    A."LOAN_NUMBER",
    A."INSTRUMENT_ID",
    A."CONVERTED_INSTRUMENT_ID",
    A."CALL_CODE_LOOKUP",
    A."CURRENT_OREO_ASSET_NUMBER",
    A."ENTITY_CHANGE",
    A."DUPLICATE_LOAN_ON_ONE_PROPERTY",
    A."FORECLOSURE_INDICATOR_DESCRPTN",
    A."OREO_NEW_OREO_EVENT",
    A."OREO_COST_CENTER",
    A."OREO_INDICATOR",
    A."OREO_NET_LIDQUIDATION_PROCEEDS",
    A."OREO_NET_LIDQUIDATION_AMT",
    A."OREO_SALE_DATE",
    A."OREO_OFFSET_TO_CHARGE_OFF",
    A."OREO_OPER_EXP_CLOSING_STMT",
    A."OREO_VALUATION_ADJUSTMENT",
    A."OREO_FINAL_SALE",
    A."OREO_EVENT_DATE",
    A."OREO_APPRAISAL_VALUE",
    A."OREO_APPRAISAL_DATE",
    A."OREO_CURRENT_BAL_ACCUMULATOR",
    A."OREO_LOSS_ON_SALE",
    A."OREO_PROJCTED_LIQUIDATION_DATE",
    A."OREO_LOAN_PRIN_BAL_PRPTY_REV",
    A."OREO_BEG_BAL_AT_CURRENT_YEAR",
    A."OREO_NOTES",
    A."OREO_COMPANY",
    A."FORECLOSURE_START_DATE",
    A."FORECLOSURE_SALE_DATE",
    A."LOSS_SHARE_VALUE",
    A."MATURITY_DATE",
    A."MATURITY_BUCKETS",
    A."LOSS_SHARING_AGREEMENT_YN",
    A."SPV_YN",
    A."ABCP_CONDUITS_YN",
    A."VIE_YN",
    A."REGULATORY_RISK_RATINGS",
    A."LEVEL_FAIR_VALUE",
    A."ACCOUNT",
    A."PRODUCT",
    A."OPERATING_UNIT",
    A."AFFILIATE",
    A."CUST_CLASS",
    A."UMD1",
    A."UMD2",
    A."UMD3",
    A."UMD4",
    A."UMD5",
    A."FILLER_1",
    A."FILLER_2",
    A."FILLER_3",
    A."FILLER_4",
    A."FILLER_5",
    A."FILLER_6",
    A."FILLER_7",
    A."FILLER_8",
    A."FILLER_9",
    A."FILLER_10",
    A."FILLER_11",
    A."FILLER_12",
    A."FILLER_13",
    A."FILLER_14",
    A."FILLER_15",
    A."FILLER_16",
    A."FILLER_17",
    A."FILLER_18",
    A."FILLER_19",
    A."FILLER_20",
    A."FILLER_21",
    A."FILLER_22",
    A."FILLER_23",
    A."FILLER_24",
    A."FILLER_25"
FROM 
    (
        SELECT
            'ADJUSTMENTS' AS DATA_SOURCE,
            D.COD_CONTO AS COD_CONTO_REP,
            D.COD_SCENARIO,
            D.COD_PERIODO,
            D.NUM_RETTIFICA AS RB_ROWID,
            SCEN.DATA_FINE AS MONTH_END_DATE,
            NULL AS "REPORTING_ENTITY",
            NULL AS "INTERCOMPANY",
            NULL AS "CONSOL_NODE",
            D.COD_AZIENDA AS "BUSINESS_UNIT",
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
                    THEN D.IMPORTO2 * 1000
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
                    THEN D.IMPORTO2 * 1000
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
            D.COD_DEST1 AS ACCOUNT,
            D.COD_DEST3 AS "PRODUCT",
            CASE
                WHEN SUBSTR(D.COD_DEST2, 1, 4) = 'BLC_'
                    THEN SUBSTR(D.COD_DEST2, 5)
                ELSE NULL
            END AS "OPERATING_UNIT",
            D.COD_AZI_CTP AS "AFFILIATE",
            D.COD_DEST4 AS "CUST_CLASS",
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
            DATI_RETT_RIGA D
            INNER JOIN
            (
                SELECT DISTINCT
                    DRILL.COD_SCENARIO,
                    DRILL.COD_PERIODO,
                    DRILL.COD_CONTO
                FROM
                    RB_DRILL_INSTRUMENT DRILL
                    INNER JOIN
                    FORM_DATI FD
                    ON
                        DRILL.OID_FORM_DATI = FD.OID_FORM_DATI
                WHERE
                    FD.COD_PROSPETTO = 'OREO'
                    AND DRILL.COD_AZIENDA IN (${$Entity.code})
            ) DRILL
            ON
                D.COD_SCENARIO = DRILL.COD_SCENARIO
                AND D.COD_PERIODO = DRILL.COD_PERIODO
                AND D.COD_CONTO = DRILL.COD_CONTO
            LEFT OUTER JOIN
            DEST3 D3
            ON
                D.COD_DEST3 = D3.COD_DEST3
            LEFT OUTER JOIN
            AZIENDA A
            ON
                D.COD_AZIENDA = A.COD_AZIENDA
            LEFT OUTER JOIN
            AZIENDA ACTP
            ON
                D.COD_AZI_CTP = ACTP.COD_AZIENDA
            LEFT OUTER JOIN
            SCENARIO_PERIODO SCEN
            ON
                D.COD_SCENARIO = SCEN.COD_SCENARIO
            AND D.COD_PERIODO = SCEN.COD_PERIODO
            LEFT OUTER JOIN
            CONTO C
            ON
                D.COD_CONTO = C.COD_CONTO
        WHERE
            D.COD_SCENARIO IN (${$Scenario.code})
            AND D.COD_PERIODO IN (${$Period.code})
            AND D.COD_AZIENDA IN (${$Entity.code})
            AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 3) = ${A1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 4) = ${B1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 7) IS NULL
            AND D.COD_CATEGORIA IN ('ADJ_REP_R', 'ADJ_REP_NR')
        UNION ALL
        SELECT
            'ORIGINAL' AS DATA_SOURCE,
            A.COD_CONTO AS COD_CONTO_REP,
            B.COD_SCENARIO,
            B.COD_PERIODO,
            CAST(B.IMPORTO_14 AS VARCHAR(255)) AS RB_ROWID,
            OREO."MONTH_END_DATE",
            OREO."REPORTING_ENTITY",
            OREO."INTERCOMPANY",
            OREO."CONSOL_NODE",
            OREO."BUSINESS_UNIT",
            OREO."GL_KEY_CODE",
            OREO."GL_KEY_CODE_DESC",
            OREO."CALL_CODE",
            OREO."CALL_CODE_DESC",
            OREO."LOAN_NUMBER",
            OREO."INSTRUMENT_ID",
            OREO."CONVERTED_INSTRUMENT_ID",
            OREO."CALL_CODE_LOOKUP",
            OREO."CURRENT_OREO_ASSET_NUMBER",
            OREO."ENTITY_CHANGE",
            OREO."DUPLICATE_LOAN_ON_ONE_PROPERTY",
            OREO."FORECLOSURE_INDICATOR_DESCRPTN",
            OREO."OREO_NEW_OREO_EVENT",
            OREO."OREO_COST_CENTER",
            OREO."OREO_INDICATOR",
            OREO."OREO_NET_LIDQUIDATION_PROCEEDS",
            OREO."OREO_NET_LIDQUIDATION_AMT",
            OREO."OREO_SALE_DATE",
            OREO."OREO_OFFSET_TO_CHARGE_OFF",
            OREO."OREO_OPER_EXP_CLOSING_STMT",
            OREO."OREO_VALUATION_ADJUSTMENT",
            OREO."OREO_FINAL_SALE",
            OREO."OREO_EVENT_DATE",
            OREO."OREO_APPRAISAL_VALUE",
            OREO."OREO_APPRAISAL_DATE",
            OREO."OREO_CURRENT_BAL_ACCUMULATOR",
            OREO."OREO_LOSS_ON_SALE",
            OREO."OREO_PROJCTED_LIQUIDATION_DATE",
            OREO."OREO_LOAN_PRIN_BAL_PRPTY_REV",
            OREO."OREO_BEG_BAL_AT_CURRENT_YEAR",
            OREO."OREO_NOTES",
            OREO."OREO_COMPANY",
            OREO."FORECLOSURE_START_DATE",
            OREO."FORECLOSURE_SALE_DATE",
            OREO."LOSS_SHARE_VALUE",
            OREO."MATURITY_DATE",
            OREO."MATURITY_BUCKETS",
            OREO."LOSS_SHARING_AGREEMENT_YN",
            OREO."SPV_YN",
            OREO."ABCP_CONDUITS_YN",
            OREO."VIE_YN",
            OREO."REGULATORY_RISK_RATINGS",
            OREO."LEVEL_FAIR_VALUE",
            OREO."ACCOUNT",
            OREO."PRODUCT",
            OREO."OPERATING_UNIT",
            OREO."AFFILIATE",
            OREO."CUST_CLASS",
            OREO."UMD1",
            OREO."UMD2",
            OREO."UMD3",
            OREO."UMD4",
            OREO."UMD5",
            OREO."FILLER_1",
            OREO."FILLER_2",
            OREO."FILLER_3",
            OREO."FILLER_4",
            OREO."FILLER_5",
            OREO."FILLER_6",
            OREO."FILLER_7",
            OREO."FILLER_8",
            OREO."FILLER_9",
            OREO."FILLER_10",
            OREO."FILLER_11",
            OREO."FILLER_12",
            OREO."FILLER_13",
            OREO."FILLER_14",
            OREO."FILLER_15",
            OREO."FILLER_16",
            OREO."FILLER_17",
            OREO."FILLER_18",
            OREO."FILLER_19",
            OREO."FILLER_20",
            OREO."FILLER_21",
            OREO."FILLER_22",
            OREO."FILLER_23",
            OREO."FILLER_24",
            OREO."FILLER_25"
        FROM
            RB_DRILL_INSTRUMENT A
            INNER JOIN
            FORM_DATI B
            ON
                A.OID_FORM_DATI = B.OID_FORM_DATI
            INNER JOIN
            (
                SELECT DISTINCT
                    COD_SCENARIO,
                    COD_PERIODO,
                    COD_CONTO
                FROM
                    DATI_SALDI_LORDI
                WHERE
                    COD_CATEGORIA = 'ORI_REP'
                    AND PROVENIENZA LIKE REPLACE(CASE WHEN ${B1} = 'RAL' THEN 'MAP_REP_' || ${A1} || '_' || SUBSTR(${B1},1,2) || '_%' ELSE 'MAP_REP_' || ${A1} || '_' || ${B1} || '_%' END, '-', '_')
                    AND COD_AZIENDA IN (${$Entity.code})
            ) C
            ON
                A.COD_SCENARIO = C.COD_SCENARIO
                AND A.COD_PERIODO = C.COD_PERIODO
                AND A.COD_CONTO = C.COD_CONTO
            INNER JOIN
            RB_V_OREO OREO
            ON
              B.DATA_1 = OREO.MONTH_END_DATE
              AND B.TESTO_1 = OREO.REPORTING_ENTITY
              AND B.IMPORTO_14 = OREO.RB_ROWID
        WHERE
            A.COD_SCENARIO IN (${$Scenario.code})
            AND A.COD_PERIODO IN (${$Period.code})
            AND A.COD_AZIENDA IN (${$Entity.code})
            AND A.PROVENIENZA LIKE REPLACE(CASE WHEN ${B1} = 'RAL' THEN 'MAP_REP_' || ${A1} || '_' || SUBSTR(${B1},1,2) || '_%' ELSE 'MAP_REP_' || ${A1} || '_' || ${B1} || '_%' END, '-', '_')
            AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 3) = ${A1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 4) = ${B1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 7) IS NULL
            AND A.COD_CATEGORIA IN ('ORI_REP')
            AND B.COD_PROSPETTO = 'OREO'
      UNION ALL
      SELECT
            'ROUNDING' AS DATA_SOURCE,
            D.COD_CONTO AS COD_CONTO_REP,
            D.COD_SCENARIO,
            D.COD_PERIODO,
            NULL AS RB_ROWID,
            SCEN.DATA_FINE AS MONTH_END_DATE,
            NULL AS "REPORTING_ENTITY",
            NULL AS "INTERCOMPANY",
            NULL AS "CONSOL_NODE",
            D.COD_AZIENDA AS "BUSINESS_UNIT",
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
                    THEN D.IMPORTO * 1000
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
                    THEN D.IMPORTO * 1000
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
            D.COD_DEST1 AS ACCOUNT,
            D.COD_DEST3 AS "PRODUCT",
            CASE
                WHEN SUBSTR(D.COD_DEST2, 1, 4) = 'BLC_'
                    THEN SUBSTR(D.COD_DEST2, 5)
                ELSE NULL
            END AS "OPERATING_UNIT",
            NULL AS "AFFILIATE",
            D.COD_DEST4 AS "CUST_CLASS",
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
            DATI_SALDI_LORDI D
            INNER JOIN
            (
                SELECT DISTINCT
                    DRILL.COD_SCENARIO,
                    DRILL.COD_PERIODO,
                    DRILL.COD_CONTO
                FROM
                    RB_DRILL_INSTRUMENT DRILL
                    INNER JOIN
                    FORM_DATI FD
                    ON
                        DRILL.OID_FORM_DATI = FD.OID_FORM_DATI
                WHERE
                    FD.COD_PROSPETTO = 'OREO'
          AND DRILL.COD_AZIENDA IN (${$Entity.code})
            ) DRILL
            ON
                D.COD_SCENARIO = DRILL.COD_SCENARIO
                AND D.COD_PERIODO = DRILL.COD_PERIODO
                AND D.COD_CONTO = DRILL.COD_CONTO
            LEFT OUTER JOIN
            DEST3 D3
            ON
                D.COD_DEST3 = D3.COD_DEST3
            LEFT OUTER JOIN
            AZIENDA A
            ON
                D.COD_AZIENDA = A.COD_AZIENDA
            LEFT OUTER JOIN
            SCENARIO_PERIODO SCEN
            ON
                D.COD_SCENARIO = SCEN.COD_SCENARIO
                AND D.COD_PERIODO = SCEN.COD_PERIODO
            LEFT OUTER JOIN
            CONTO C
            ON
                D.COD_CONTO = C.COD_CONTO
        WHERE
            D.COD_SCENARIO IN (${$Scenario.code})
            AND D.COD_PERIODO IN (${$Period.code})
            AND D.COD_AZIENDA IN (${$Entity.code})
            AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 3) = ${A1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 4) = ${B1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 7) IS NULL
            AND D.COD_CATEGORIA IN ('ORI_REP')
            AND D.PROVENIENZA = 'PROC_BALANCING'
      UNION ALL
      SELECT
            'OVERWRITE' AS DATA_SOURCE,
            D.COD_CONTO AS COD_CONTO_REP,
            D.COD_SCENARIO,
            D.COD_PERIODO,
            NULL AS RB_ROWID,
            SCEN.DATA_FINE AS MONTH_END_DATE,
            NULL AS "REPORTING_ENTITY",
            NULL AS "INTERCOMPANY",
            NULL AS "CONSOL_NODE",
            D.COD_AZIENDA AS "BUSINESS_UNIT",
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
                    THEN D.IMPORTO * 1000
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
                    THEN D.IMPORTO * 1000
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
            D.COD_DEST1 AS ACCOUNT,
            D.COD_DEST3 AS "PRODUCT",
            CASE
                WHEN SUBSTR(D.COD_DEST2, 1, 4) = 'BLC_'
                    THEN SUBSTR(D.COD_DEST2, 5)
                ELSE NULL
            END AS "OPERATING_UNIT",
            NULL AS "AFFILIATE",
            D.COD_DEST4 AS "CUST_CLASS",
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
            DATI_SALDI_LORDI D
            INNER JOIN
            (
                SELECT DISTINCT
                    DRILL.COD_SCENARIO,
                    DRILL.COD_PERIODO,
                    DRILL.COD_CONTO
                FROM
                    RB_DRILL_INSTRUMENT DRILL
                    INNER JOIN
                    FORM_DATI FD
                    ON
                        DRILL.OID_FORM_DATI = FD.OID_FORM_DATI
                WHERE
                    FD.COD_PROSPETTO = 'OREO'
          AND DRILL.COD_AZIENDA IN (${$Entity.code})
            ) DRILL
            ON
                D.COD_SCENARIO = DRILL.COD_SCENARIO
                AND D.COD_PERIODO = DRILL.COD_PERIODO
                AND D.COD_CONTO = DRILL.COD_CONTO
            LEFT OUTER JOIN
            DEST3 D3
            ON
                D.COD_DEST3 = D3.COD_DEST3
            LEFT OUTER JOIN
            AZIENDA A
            ON
                D.COD_AZIENDA = A.COD_AZIENDA
            LEFT OUTER JOIN
            SCENARIO_PERIODO SCEN
            ON
                D.COD_SCENARIO = SCEN.COD_SCENARIO
                AND D.COD_PERIODO = SCEN.COD_PERIODO
            LEFT OUTER JOIN
            CONTO C
            ON
                D.COD_CONTO = C.COD_CONTO
        WHERE
            D.COD_SCENARIO IN (${$Scenario.code})
            AND D.COD_PERIODO IN (${$Period.code})
      AND D.COD_AZIENDA IN (${$Entity.code})
            AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 3) = ${A1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 4) = ${B1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 7) IS NULL
            AND D.COD_CATEGORIA = 'ORI_REP'
            AND D.PROVENIENZA NOT LIKE REPLACE(CASE WHEN ${B1} = 'RAL' THEN 'MAP_REP_' || ${A1} || '_' || SUBSTR(${B1},1,2) || '_%' ELSE 'MAP_REP_' || ${A1} || '_' || ${B1} || '_%' END, '-', '_')
            AND D.PROVENIENZA <> 'PROC_BALANCING'
    ) A
    LEFT OUTER JOIN
    CONTO_GERARCHIA CG
    ON
      RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO_REP, 'RE', 6) = CG.COD_CONTO_ELEGER
    LEFT OUTER JOIN
    CONTO_GERARCHIA CGG
    ON
      RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO_REP, 'RE', 5) = CGG.COD_CONTO_ELEGER
    LEFT OUTER JOIN
    CONTO C
    ON
      A.COD_CONTO_REP = C.COD_CONTO
    WHERE
        CG.COD_CONTO_GERARCHIA = 'RE'
        AND CGG.COD_CONTO_GERARCHIA = 'RE'
    ORDER BY
        CGG.DESC_CONTO_ELEGER0 ASC,
        C.ATTRIBUTO5 ASC,
        CG.DESC_CONTO_ELEGER0 ASC,
        CASE
            WHEN A.MONTH_END_DATE IS NOT NULL
                THEN TO_CHAR(MONTH_END_DATE, 'MMDDYYYY')
            ELSE A.COD_SCENARIO
        END ASC,
        CASE
            WHEN A.MONTH_END_DATE IS NOT NULL
                THEN TO_CHAR(MONTH_END_DATE, 'MMDDYYYY')
            ELSE A.COD_PERIODO
        END ASC,
        A.DATA_SOURCE DESC,
        A.RB_ROWID, 
        A.REPORTING_ENTITY,
        A.INSTRUMENT_ID