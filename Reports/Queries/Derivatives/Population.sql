SELECT
    A.COD_SCENARIO,
    A.COD_PERIODO,
    CGG.DESC_CONTO_ELEGER0 AS DESC_CONTO_ELEGER00,
    C.ATTRIBUTO5 AS FED_CALL_CODE,
    CG.DESC_CONTO_ELEGER0,
    A.DATA_SOURCE,
    A.RB_ROWID,
    A.MONTH_END_DATE,
    A.REPORTING_ENTITY,
    A.INSTRUMENT,
    A.INTERCOMPANY,
    A.CONSOL_NODE,
    A.BUSINESS_UNIT,
    A.GL_KEY_CODE,
    A.GL_KEY_CODE_DESC,
    A.CALL_CODE,
    A.CALL_CODE_DESC,
    A.ACCRUAL_VALUE,
    A.CLEAN_PRICE_VALUE,
    A.DIRTY_PRICE_VALUE,
    A.MANUAL_ADJUSTMENTS,
    A.CREDIT_ADJ,
    A.CREDIT_VALUATION_ADJUSTMENT,
    A.USQ_NOTIONAL,
    A.POSITIVE_NEGATIVE,
    A.BUY_SELL_INDICATOR,
    A.MATURITY_PCT_WEIGHT,
    A.ADD_ON,
    A.REPLACEMENT_VALUE,
    A.CREDIT_EQUIVALENT,
    A.CPTY_WGHT,
    A.AMT_BOUGHT,
    A.AMT_SOLD,
    A.CCY_RECEIVE,
    A.CCY_PAY,
    A.SOURCE,
    A.ACC_INT_REC_GL_US_GAAP_BASE_EQ,
    A.UNSET_TRADE_GL_US_GAAP_BASE_EQ,
    A.RECEIVABLES_ADVANCES_BASE_EQ,
    A.UNRLZED_PLG_GL_US_GAAP_BASE_EQ,
    A.UNREAL_PLG_CCY_SWAP_US_BASE_EQ,
    A.ACC_INT_PAY_GL_US_GAAP_BASE_EQ,
    A.ACC_FEE_PAY_GL_US_GAAP_BASE_EQ,
    A.UNSET_TRADE_PAYABLE_US_BASE_EQ,
    A.UNRLZED_PLL_GL_US_GAAP_BASE_EQ,
    A.UNREAL_PLL_CCY_SWAP_US_BASE_EQ,
    A.MARCA_PROVISION,
    A.NOTL_OPT_BUY_US_GAAP_BASE_EQ,
    A.NOTL_SWAP_BUY_US_GAAP_BASE_EQ,
    A.NOTL_OPT_GL_US_GAAP_BASE_EQ,
    A.NOTL_OPT_SOLD_US_GAAP_BASE_EQ,
    A.NOTL_SWAP_SOLD_US_GAAP_BASE_EQ,
    A.IBF_ONLY_RAL_COLUMN_B_YN,
    A.REGULATORY_RISK_RATINGS,
    A.LEVEL_FAIR_VALUE,
    A.CRC_RATING,
    A.UMD1,
    A.UMD2,
    A.UMD3,
    A.MATURITY_DATE,
    A.REMAINING_MATURITY,
    A.MATURITY_BUCKETS,
    A.ONE_YEAR_OR_LESS,
    A.ONE_TO_FIVE_YEARS,
    A.GREATER_THAN_FIVE_YEARS,
    A.ACCOUNTING_CLASSIFICATION,
    A.BA_CODE,
    A.ENTITY_ENT_CODE,
    A.COUNTERPARTY_ENT_CODE,
    A.COVERED_MARKET_RISK_RULE,
    A.AFFIRMED_REG_RPT_CAP_GUARANTEE,
    A.SECURITY_DESCRIPTION,
    A.INVESTMENT_GRADE,
    A.SUBINVESTMENT_GRADE,
    A.UMD4,
    A.UMD5,
    A.UMD6,
    A.TRADE_ID,
    A.CUSTOMER_ID,
    A.RELATED_DEP_INST,
    A.CUSTOMER_NAME,
    A.CUSTOMER_TYPE,
    A.CITY,
    A.OPERATING_STATE,
    A.FOREIGN_DOMESTIC,
    A.COUNTRY_CODE,
    A.COUNTRY_DESC,
    A.RELATION_ID,
    A.FX_RATE_REC,
    A.FX_RATE_PAY,
    A.STRIKE_PRICE,
    A.FIXED_OR_VARIABLE,
    A.RECEIVE_INTEREST_RATE,
    A.PAY_INTEREST_RATE,
    A.INDEX_RATE_ADD,
    A.FLOAT_FREQ,
    A.LAST_RATE_RESET_DATE,
    A.NEXT_RATE_RESET_DATE,
    A.BRANCH_SUBSIDIARY,
    A.START_DATE,
    A.TRADE_DATE,
    A.SETTLE_DATE,
    A.UMD7,
    A.UMD8,
    A.UMD9,
    A.UMD10,
    A.ACCOUNT,
    A.PRODUCT,
    A.OPERATING_UNIT,
    A.AFFILIATE,
    A.CUST_CLASS,
    A.CODEBLOCK,
    A.ACCRUAL_CODEBLOCK,
    A.UNREALIZED_CODEBLOCK,
    A.CALL_CODE_CONCAT,
    A.FILLER_1,
    A.FILLER_2,
    A.FILLER_3,
    A.FILLER_4,
    A.FILLER_5,
    A.FILLER_6,
    A.FILLER_7,
    A.FILLER_8,
    A.FILLER_9,
    A.FILLER_10,
    A.FILLER_11,
    A.FILLER_12,
    A.FILLER_13,
    A.FILLER_14,
    A.FILLER_15,
    A.FILLER_16,
    A.FILLER_17,
    A.FILLER_18,
    A.FILLER_19,
    A.FILLER_20,
    A.FILLER_21,
    A.FILLER_22,
    A.FILLER_23,
    A.FILLER_24,
    A.FILLER_25
FROM 
    (
        SELECT
            'ADJUSTMENTS' AS DATA_SOURCE,
            D.COD_CONTO AS COD_CONTO_REP,
            D.COD_SCENARIO,
            D.COD_PERIODO,
            D.NUM_RETTIFICA AS RB_ROWID,
            SCEN.DATA_FINE AS MONTH_END_DATE,
            NULL AS REPORTING_ENTITY,
            NULL AS INSTRUMENT,
            NULL AS INTERCOMPANY,
            NULL AS CONSOL_NODE,
            D.COD_AZIENDA AS BUSINESS_UNIT,
            NULL AS GL_KEY_CODE,
            NULL AS GL_KEY_CODE_DESC,
            NULL AS CALL_CODE,
            NULL AS CALL_CODE_DESC,
            NULL AS ACCRUAL_VALUE,
            NULL AS CLEAN_PRICE_VALUE,
            NULL AS DIRTY_PRICE_VALUE,
            NULL AS MANUAL_ADJUSTMENTS,
            NULL AS CREDIT_ADJ,
            CASE
              WHEN COALESCE(C.ATTRIBUTO1, 'CVA') = 'CVA'
                THEN D.IMPORTO2 * 1000
              ELSE NULL
            END AS CREDIT_VALUATION_ADJUSTMENT,
            CASE
              WHEN COALESCE(C.ATTRIBUTO1, 'CVA') = 'UN'
                THEN D.IMPORTO2 * 1000
              ELSE NULL
            END AS USQ_NOTIONAL,
            NULL AS POSITIVE_NEGATIVE,
            NULL AS BUY_SELL_INDICATOR,
            NULL AS MATURITY_PCT_WEIGHT,
            NULL AS ADD_ON,
            CASE
              WHEN COALESCE(C.ATTRIBUTO1, 'CVA') = 'RV'
                THEN D.IMPORTO2 * 1000
              ELSE NULL
            END AS REPLACEMENT_VALUE,
            CASE
              WHEN COALESCE(C.ATTRIBUTO1, 'CVA') = 'CE'
                THEN D.IMPORTO2 * 1000
              ELSE NULL
            END AS CREDIT_EQUIVALENT,
            NULL AS CPTY_WGHT,
            NULL AS AMT_BOUGHT,
            NULL AS AMT_SOLD,
            NULL AS CCY_RECEIVE,
            NULL AS CCY_PAY,
            D.NOTE AS SOURCE,
            NULL AS ACC_INT_REC_GL_US_GAAP_BASE_EQ,
            NULL AS UNSET_TRADE_GL_US_GAAP_BASE_EQ,
            NULL AS RECEIVABLES_ADVANCES_BASE_EQ,
            NULL AS UNRLZED_PLG_GL_US_GAAP_BASE_EQ,
            NULL AS UNREAL_PLG_CCY_SWAP_US_BASE_EQ,
            NULL AS ACC_INT_PAY_GL_US_GAAP_BASE_EQ,
            NULL AS ACC_FEE_PAY_GL_US_GAAP_BASE_EQ,
            NULL AS UNSET_TRADE_PAYABLE_US_BASE_EQ,
            NULL AS UNRLZED_PLL_GL_US_GAAP_BASE_EQ,
            NULL AS UNREAL_PLL_CCY_SWAP_US_BASE_EQ,
            NULL AS MARCA_PROVISION,
            NULL AS NOTL_OPT_BUY_US_GAAP_BASE_EQ,
            NULL AS NOTL_SWAP_BUY_US_GAAP_BASE_EQ,
            NULL AS NOTL_OPT_GL_US_GAAP_BASE_EQ,
            NULL AS NOTL_OPT_SOLD_US_GAAP_BASE_EQ,
            NULL AS NOTL_SWAP_SOLD_US_GAAP_BASE_EQ,
            NULL AS IBF_ONLY_RAL_COLUMN_B_YN,
            NULL AS REGULATORY_RISK_RATINGS,
            NULL AS LEVEL_FAIR_VALUE,
            NULL AS CRC_RATING,
            NULL AS UMD1,
            NULL AS UMD2,
            NULL AS UMD3,
            NULL AS MATURITY_DATE,
            NULL AS REMAINING_MATURITY,
            NULL AS MATURITY_BUCKETS,
            NULL AS ONE_YEAR_OR_LESS,
            NULL AS ONE_TO_FIVE_YEARS,
            NULL AS GREATER_THAN_FIVE_YEARS,
            NULL AS ACCOUNTING_CLASSIFICATION,
            NULL AS BA_CODE,
            NULL AS ENTITY_ENT_CODE,
            NULL AS COUNTERPARTY_ENT_CODE,
            NULL AS COVERED_MARKET_RISK_RULE,
            NULL AS AFFIRMED_REG_RPT_CAP_GUARANTEE,
            NULL AS SECURITY_DESCRIPTION,
            NULL AS INVESTMENT_GRADE,
            NULL AS SUBINVESTMENT_GRADE,
            NULL AS UMD4,
            NULL AS UMD5,
            NULL AS UMD6,
            NULL AS TRADE_ID,
            NULL AS CUSTOMER_ID,
            NULL AS RELATED_DEP_INST,
            NULL AS CUSTOMER_NAME,
            NULL AS CUSTOMER_TYPE,
            NULL AS CITY,
            NULL AS OPERATING_STATE,
            NULL AS FOREIGN_DOMESTIC,
            NULL AS COUNTRY_CODE,
            NULL AS COUNTRY_DESC,
            NULL AS RELATION_ID,
            NULL AS FX_RATE_REC,
            NULL AS FX_RATE_PAY,
            NULL AS STRIKE_PRICE,
            NULL AS FIXED_OR_VARIABLE,
            NULL AS RECEIVE_INTEREST_RATE,
            NULL AS PAY_INTEREST_RATE,
            NULL AS INDEX_RATE_ADD,
            NULL AS FLOAT_FREQ,
            NULL AS LAST_RATE_RESET_DATE,
            NULL AS NEXT_RATE_RESET_DATE,
            NULL AS BRANCH_SUBSIDIARY,
            NULL AS START_DATE,
            NULL AS TRADE_DATE,
            NULL AS SETTLE_DATE,
            NULL AS UMD7,
            NULL AS UMD8,
            NULL AS UMD9,
            NULL AS UMD10,
            D.COD_DEST1 AS ACCOUNT,
            D.COD_DEST3 AS PRODUCT,
            D.COD_DEST2 AS OPERATING_UNIT,
            D.COD_AZI_CTP AS AFFILIATE,
            D.COD_DEST4 AS CUST_CLASS,
            NULL AS CODEBLOCK,
            NULL AS ACCRUAL_CODEBLOCK,
            NULL AS UNREALIZED_CODEBLOCK,
            NULL AS CALL_CODE_CONCAT,
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
            NULL AS FILLER_25
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
                    FD.COD_PROSPETTO = 'DERIVATIVES'
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
            CAST(B.IMPORTO_1 AS VARCHAR(255)) AS RB_ROWID,
            DER.MONTH_END_DATE,
            DER.REPORTING_ENTITY,
            DER.INSTRUMENT,
            DER.INTERCOMPANY,
            DER.CONSOL_NODE,
            DER.BUSINESS_UNIT,
            DER.GL_KEY_CODE,
            DER.GL_KEY_CODE_DESC,
            DER.CALL_CODE,
            DER.CALL_CODE_DESC,
            DER.ACCRUAL_VALUE,
            DER.CLEAN_PRICE_VALUE,
            DER.DIRTY_PRICE_VALUE,
            DER.MANUAL_ADJUSTMENTS,
            DER.CREDIT_ADJ,
            DER.CREDIT_VALUATION_ADJUSTMENT,
            DER.USQ_NOTIONAL,
            DER.POSITIVE_NEGATIVE,
            DER.BUY_SELL_INDICATOR,
            DER.MATURITY_PCT_WEIGHT,
            DER.ADD_ON,
            DER.REPLACEMENT_VALUE,
            DER.CREDIT_EQUIVALENT,
            DER.CPTY_WGHT,
            DER.AMT_BOUGHT,
            DER.AMT_SOLD,
            DER.CCY_RECEIVE,
            DER.CCY_PAY,
            DER.SOURCE,
            DER.ACC_INT_REC_GL_US_GAAP_BASE_EQ,
            DER.UNSET_TRADE_GL_US_GAAP_BASE_EQ,
            DER.RECEIVABLES_ADVANCES_BASE_EQ,
            DER.UNRLZED_PLG_GL_US_GAAP_BASE_EQ,
            DER.UNREAL_PLG_CCY_SWAP_US_BASE_EQ,
            DER.ACC_INT_PAY_GL_US_GAAP_BASE_EQ,
            DER.ACC_FEE_PAY_GL_US_GAAP_BASE_EQ,
            DER.UNSET_TRADE_PAYABLE_US_BASE_EQ,
            DER.UNRLZED_PLL_GL_US_GAAP_BASE_EQ,
            DER.UNREAL_PLL_CCY_SWAP_US_BASE_EQ,
            DER.MARCA_PROVISION,
            DER.NOTL_OPT_BUY_US_GAAP_BASE_EQ,
            DER.NOTL_SWAP_BUY_US_GAAP_BASE_EQ,
            DER.NOTL_OPT_GL_US_GAAP_BASE_EQ,
            DER.NOTL_OPT_SOLD_US_GAAP_BASE_EQ,
            DER.NOTL_SWAP_SOLD_US_GAAP_BASE_EQ,
            DER.IBF_ONLY_RAL_COLUMN_B_YN,
            DER.REGULATORY_RISK_RATINGS,
            DER.LEVEL_FAIR_VALUE,
            DER.CRC_RATING,
            DER.UMD1,
            DER.UMD2,
            DER.UMD3,
            DER.MATURITY_DATE,
            DER.REMAINING_MATURITY,
            DER.MATURITY_BUCKETS,
            DER.ONE_YEAR_OR_LESS,
            DER.ONE_TO_FIVE_YEARS,
            DER.GREATER_THAN_FIVE_YEARS,
            DER.ACCOUNTING_CLASSIFICATION,
            DER.BA_CODE,
            DER.ENTITY_ENT_CODE,
            DER.COUNTERPARTY_ENT_CODE,
            DER.COVERED_MARKET_RISK_RULE,
            DER.AFFIRMED_REG_RPT_CAP_GUARANTEE,
            DER.SECURITY_DESCRIPTION,
            DER.INVESTMENT_GRADE,
            DER.SUBINVESTMENT_GRADE,
            DER.UMD4,
            DER.UMD5,
            DER.UMD6,
            DER.TRADE_ID,
            DER.CUSTOMER_ID,
            DER.RELATED_DEP_INST,
            DER.CUSTOMER_NAME,
            DER.CUSTOMER_TYPE,
            DER.CITY,
            DER.OPERATING_STATE,
            DER.FOREIGN_DOMESTIC,
            DER.COUNTRY_CODE,
            DER.COUNTRY_DESC,
            DER.RELATION_ID,
            DER.FX_RATE_REC,
            DER.FX_RATE_PAY,
            DER.STRIKE_PRICE,
            DER.FIXED_OR_VARIABLE,
            DER.RECEIVE_INTEREST_RATE,
            DER.PAY_INTEREST_RATE,
            DER.INDEX_RATE_ADD,
            DER.FLOAT_FREQ,
            DER.LAST_RATE_RESET_DATE,
            DER.NEXT_RATE_RESET_DATE,
            DER.BRANCH_SUBSIDIARY,
            DER.START_DATE,
            DER.TRADE_DATE,
            DER.SETTLE_DATE,
            DER.UMD7,
            DER.UMD8,
            DER.UMD9,
            DER.UMD10,
            DER.ACCOUNT,
            DER.PRODUCT,
            DER.OPERATING_UNIT,
            DER.AFFILIATE,
            DER.CUST_CLASS,
            DER.CODEBLOCK,
            DER.ACCRUAL_CODEBLOCK,
            DER.UNREALIZED_CODEBLOCK,
            DER.CALL_CODE_CONCAT,
            DER.FILLER_1,
            DER.FILLER_2,
            DER.FILLER_3,
            DER.FILLER_4,
            DER.FILLER_5,
            DER.FILLER_6,
            DER.FILLER_7,
            DER.FILLER_8,
            DER.FILLER_9,
            DER.FILLER_10,
            DER.FILLER_11,
            DER.FILLER_12,
            DER.FILLER_13,
            DER.FILLER_14,
            DER.FILLER_15,
            DER.FILLER_16,
            DER.FILLER_17,
            DER.FILLER_18,
            DER.FILLER_19,
            DER.FILLER_20,
            DER.FILLER_21,
            DER.FILLER_22,
            DER.FILLER_23,
            DER.FILLER_24,
            DER.FILLER_25
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
            RB_V_DERIVATIVES DER
            ON
              B.DATA_1 = DER.MONTH_END_DATE
              AND B.TESTO_1 = DER.REPORTING_ENTITY
              AND B.IMPORTO_1 = DER.RB_ROWID
        WHERE
            A.COD_SCENARIO IN (${$Scenario.code})
            AND A.COD_PERIODO IN (${$Period.code})
            AND A.COD_AZIENDA IN (${$Entity.code})
            AND A.PROVENIENZA LIKE REPLACE(CASE WHEN ${B1} = 'RAL' THEN 'MAP_REP_' || ${A1} || '_' || SUBSTR(${B1},1,2) || '_%' ELSE 'MAP_REP_' || ${A1} || '_' || ${B1} || '_%' END, '-', '_')
            AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 3) = ${A1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 4) = ${B1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 7) IS NULL
            AND A.COD_CATEGORIA IN ('ORI_REP')
            AND B.COD_PROSPETTO = 'DERIVATIVES'
      UNION ALL
      SELECT
            'ROUNDING' AS DATA_SOURCE,
            D.COD_CONTO AS COD_CONTO_REP,
            D.COD_SCENARIO,
            D.COD_PERIODO,
            NULL AS RB_ROWID,
            SCEN.DATA_FINE AS MONTH_END_DATE,
            NULL AS REPORTING_ENTITY,
            NULL AS INSTRUMENT,
            NULL AS INTERCOMPANY,
            NULL AS CONSOL_NODE,
            D.COD_AZIENDA AS BUSINESS_UNIT,
            NULL AS GL_KEY_CODE,
            NULL AS GL_KEY_CODE_DESC,
            NULL AS CALL_CODE,
            NULL AS CALL_CODE_DESC,
            NULL AS ACCRUAL_VALUE,
            NULL AS CLEAN_PRICE_VALUE,
            NULL AS DIRTY_PRICE_VALUE,
            NULL AS MANUAL_ADJUSTMENTS,
            NULL AS CREDIT_ADJ,
            CASE
              WHEN COALESCE(C.ATTRIBUTO1, 'CVA') = 'CVA'
                THEN D.IMPORTO * 1000
              ELSE NULL
            END AS CREDIT_VALUATION_ADJUSTMENT,
            CASE
              WHEN COALESCE(C.ATTRIBUTO1, 'CVA') = 'UN'
                THEN D.IMPORTO * 1000
              ELSE NULL
            END AS USQ_NOTIONAL,
            NULL AS POSITIVE_NEGATIVE,
            NULL AS BUY_SELL_INDICATOR,
            NULL AS MATURITY_PCT_WEIGHT,
            NULL AS ADD_ON,
            CASE
              WHEN COALESCE(C.ATTRIBUTO1, 'CVA') = 'RV'
                THEN D.IMPORTO * 1000
              ELSE NULL
            END AS REPLACEMENT_VALUE,
            CASE
              WHEN COALESCE(C.ATTRIBUTO1, 'CVA') = 'CE'
                THEN D.IMPORTO * 1000
              ELSE NULL
            END AS CREDIT_EQUIVALENT,
            NULL AS CPTY_WGHT,
            NULL AS AMT_BOUGHT,
            NULL AS AMT_SOLD,
            NULL AS CCY_RECEIVE,
            NULL AS CCY_PAY,
            D.NOTE AS SOURCE,
            NULL AS ACC_INT_REC_GL_US_GAAP_BASE_EQ,
            NULL AS UNSET_TRADE_GL_US_GAAP_BASE_EQ,
            NULL AS RECEIVABLES_ADVANCES_BASE_EQ,
            NULL AS UNRLZED_PLG_GL_US_GAAP_BASE_EQ,
            NULL AS UNREAL_PLG_CCY_SWAP_US_BASE_EQ,
            NULL AS ACC_INT_PAY_GL_US_GAAP_BASE_EQ,
            NULL AS ACC_FEE_PAY_GL_US_GAAP_BASE_EQ,
            NULL AS UNSET_TRADE_PAYABLE_US_BASE_EQ,
            NULL AS UNRLZED_PLL_GL_US_GAAP_BASE_EQ,
            NULL AS UNREAL_PLL_CCY_SWAP_US_BASE_EQ,
            NULL AS MARCA_PROVISION,
            NULL AS NOTL_OPT_BUY_US_GAAP_BASE_EQ,
            NULL AS NOTL_SWAP_BUY_US_GAAP_BASE_EQ,
            NULL AS NOTL_OPT_GL_US_GAAP_BASE_EQ,
            NULL AS NOTL_OPT_SOLD_US_GAAP_BASE_EQ,
            NULL AS NOTL_SWAP_SOLD_US_GAAP_BASE_EQ,
            NULL AS IBF_ONLY_RAL_COLUMN_B_YN,
            NULL AS REGULATORY_RISK_RATINGS,
            NULL AS LEVEL_FAIR_VALUE,
            NULL AS CRC_RATING,
            NULL AS UMD1,
            NULL AS UMD2,
            NULL AS UMD3,
            NULL AS MATURITY_DATE,
            NULL AS REMAINING_MATURITY,
            NULL AS MATURITY_BUCKETS,
            NULL AS ONE_YEAR_OR_LESS,
            NULL AS ONE_TO_FIVE_YEARS,
            NULL AS GREATER_THAN_FIVE_YEARS,
            NULL AS ACCOUNTING_CLASSIFICATION,
            NULL AS BA_CODE,
            NULL AS ENTITY_ENT_CODE,
            NULL AS COUNTERPARTY_ENT_CODE,
            NULL AS COVERED_MARKET_RISK_RULE,
            NULL AS AFFIRMED_REG_RPT_CAP_GUARANTEE,
            NULL AS SECURITY_DESCRIPTION,
            NULL AS INVESTMENT_GRADE,
            NULL AS SUBINVESTMENT_GRADE,
            NULL AS UMD4,
            NULL AS UMD5,
            NULL AS UMD6,
            NULL AS TRADE_ID,
            NULL AS CUSTOMER_ID,
            NULL AS RELATED_DEP_INST,
            NULL AS CUSTOMER_NAME,
            NULL AS CUSTOMER_TYPE,
            NULL AS CITY,
            NULL AS OPERATING_STATE,
            NULL AS FOREIGN_DOMESTIC,
            NULL AS COUNTRY_CODE,
            NULL AS COUNTRY_DESC,
            NULL AS RELATION_ID,
            NULL AS FX_RATE_REC,
            NULL AS FX_RATE_PAY,
            NULL AS STRIKE_PRICE,
            NULL AS FIXED_OR_VARIABLE,
            NULL AS RECEIVE_INTEREST_RATE,
            NULL AS PAY_INTEREST_RATE,
            NULL AS INDEX_RATE_ADD,
            NULL AS FLOAT_FREQ,
            NULL AS LAST_RATE_RESET_DATE,
            NULL AS NEXT_RATE_RESET_DATE,
            NULL AS BRANCH_SUBSIDIARY,
            NULL AS START_DATE,
            NULL AS TRADE_DATE,
            NULL AS SETTLE_DATE,
            NULL AS UMD7,
            NULL AS UMD8,
            NULL AS UMD9,
            NULL AS UMD10,
            D.COD_DEST1 AS ACCOUNT,
            D.COD_DEST3 AS PRODUCT,
            D.COD_DEST2 AS OPERATING_UNIT,
            NULL AS AFFILIATE,
            D.COD_DEST4 AS CUST_CLASS,
            NULL AS CODEBLOCK,
            NULL AS ACCRUAL_CODEBLOCK,
            NULL AS UNREALIZED_CODEBLOCK,
            NULL AS CALL_CODE_CONCAT,
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
            NULL AS FILLER_25
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
                    FD.COD_PROSPETTO = 'DERIVATIVES'
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
            NULL AS REPORTING_ENTITY,
            NULL AS INSTRUMENT,
            NULL AS INTERCOMPANY,
            NULL AS CONSOL_NODE,
            D.COD_AZIENDA AS BUSINESS_UNIT,
            NULL AS GL_KEY_CODE,
            NULL AS GL_KEY_CODE_DESC,
            NULL AS CALL_CODE,
            NULL AS CALL_CODE_DESC,
            NULL AS ACCRUAL_VALUE,
            NULL AS CLEAN_PRICE_VALUE,
            NULL AS DIRTY_PRICE_VALUE,
            NULL AS MANUAL_ADJUSTMENTS,
            NULL AS CREDIT_ADJ,
            CASE
              WHEN COALESCE(C.ATTRIBUTO1, 'CVA') = 'CVA'
                THEN D.IMPORTO * 1000
              ELSE NULL
            END AS CREDIT_VALUATION_ADJUSTMENT,
            CASE
              WHEN COALESCE(C.ATTRIBUTO1, 'CVA') = 'UN'
                THEN D.IMPORTO * 1000
              ELSE NULL
            END AS USQ_NOTIONAL,
            NULL AS POSITIVE_NEGATIVE,
            NULL AS BUY_SELL_INDICATOR,
            NULL AS MATURITY_PCT_WEIGHT,
            NULL AS ADD_ON,
            CASE
              WHEN COALESCE(C.ATTRIBUTO1, 'CVA') = 'RV'
                THEN D.IMPORTO * 1000
              ELSE NULL
            END AS REPLACEMENT_VALUE,
            CASE
              WHEN COALESCE(C.ATTRIBUTO1, 'CVA') = 'CE'
                THEN D.IMPORTO * 1000
              ELSE NULL
            END AS CREDIT_EQUIVALENT,
            NULL AS CPTY_WGHT,
            NULL AS AMT_BOUGHT,
            NULL AS AMT_SOLD,
            NULL AS CCY_RECEIVE,
            NULL AS CCY_PAY,
            D.NOTE AS SOURCE,
            NULL AS ACC_INT_REC_GL_US_GAAP_BASE_EQ,
            NULL AS UNSET_TRADE_GL_US_GAAP_BASE_EQ,
            NULL AS RECEIVABLES_ADVANCES_BASE_EQ,
            NULL AS UNRLZED_PLG_GL_US_GAAP_BASE_EQ,
            NULL AS UNREAL_PLG_CCY_SWAP_US_BASE_EQ,
            NULL AS ACC_INT_PAY_GL_US_GAAP_BASE_EQ,
            NULL AS ACC_FEE_PAY_GL_US_GAAP_BASE_EQ,
            NULL AS UNSET_TRADE_PAYABLE_US_BASE_EQ,
            NULL AS UNRLZED_PLL_GL_US_GAAP_BASE_EQ,
            NULL AS UNREAL_PLL_CCY_SWAP_US_BASE_EQ,
            NULL AS MARCA_PROVISION,
            NULL AS NOTL_OPT_BUY_US_GAAP_BASE_EQ,
            NULL AS NOTL_SWAP_BUY_US_GAAP_BASE_EQ,
            NULL AS NOTL_OPT_GL_US_GAAP_BASE_EQ,
            NULL AS NOTL_OPT_SOLD_US_GAAP_BASE_EQ,
            NULL AS NOTL_SWAP_SOLD_US_GAAP_BASE_EQ,
            NULL AS IBF_ONLY_RAL_COLUMN_B_YN,
            NULL AS REGULATORY_RISK_RATINGS,
            NULL AS LEVEL_FAIR_VALUE,
            NULL AS CRC_RATING,
            NULL AS UMD1,
            NULL AS UMD2,
            NULL AS UMD3,
            NULL AS MATURITY_DATE,
            NULL AS REMAINING_MATURITY,
            NULL AS MATURITY_BUCKETS,
            NULL AS ONE_YEAR_OR_LESS,
            NULL AS ONE_TO_FIVE_YEARS,
            NULL AS GREATER_THAN_FIVE_YEARS,
            NULL AS ACCOUNTING_CLASSIFICATION,
            NULL AS BA_CODE,
            NULL AS ENTITY_ENT_CODE,
            NULL AS COUNTERPARTY_ENT_CODE,
            NULL AS COVERED_MARKET_RISK_RULE,
            NULL AS AFFIRMED_REG_RPT_CAP_GUARANTEE,
            NULL AS SECURITY_DESCRIPTION,
            NULL AS INVESTMENT_GRADE,
            NULL AS SUBINVESTMENT_GRADE,
            NULL AS UMD4,
            NULL AS UMD5,
            NULL AS UMD6,
            NULL AS TRADE_ID,
            NULL AS CUSTOMER_ID,
            NULL AS RELATED_DEP_INST,
            NULL AS CUSTOMER_NAME,
            NULL AS CUSTOMER_TYPE,
            NULL AS CITY,
            NULL AS OPERATING_STATE,
            NULL AS FOREIGN_DOMESTIC,
            NULL AS COUNTRY_CODE,
            NULL AS COUNTRY_DESC,
            NULL AS RELATION_ID,
            NULL AS FX_RATE_REC,
            NULL AS FX_RATE_PAY,
            NULL AS STRIKE_PRICE,
            NULL AS FIXED_OR_VARIABLE,
            NULL AS RECEIVE_INTEREST_RATE,
            NULL AS PAY_INTEREST_RATE,
            NULL AS INDEX_RATE_ADD,
            NULL AS FLOAT_FREQ,
            NULL AS LAST_RATE_RESET_DATE,
            NULL AS NEXT_RATE_RESET_DATE,
            NULL AS BRANCH_SUBSIDIARY,
            NULL AS START_DATE,
            NULL AS TRADE_DATE,
            NULL AS SETTLE_DATE,
            NULL AS UMD7,
            NULL AS UMD8,
            NULL AS UMD9,
            NULL AS UMD10,
            D.COD_DEST1 AS ACCOUNT,
            D.COD_DEST3 AS PRODUCT,
            D.COD_DEST2 AS OPERATING_UNIT,
            NULL AS AFFILIATE,
            D.COD_DEST4 AS CUST_CLASS,
            NULL AS CODEBLOCK,
            NULL AS ACCRUAL_CODEBLOCK,
            NULL AS UNREALIZED_CODEBLOCK,
            NULL AS CALL_CODE_CONCAT,
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
            NULL AS FILLER_25
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
                    FD.COD_PROSPETTO = 'DERIVATIVES'
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
        A.INSTRUMENT,
        A.SOURCE