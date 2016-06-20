SELECT
    A.COD_SCENARIO,
    A.COD_PERIODO,
    CGG.DESC_CONTO_ELEGER0 AS DESC_CONTO_ELEGER00,
    C.ATTRIBUTO3 AS FED_CALL_CODE,
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
    A.PRODUCT_GROUP_DESC,
    A.AMORTIZED_COST,
    A.FAIR_VALUE,
    A.PRICE,
    A.PRINCIPAL_GL_US_GAAP_BASE_EQ,
    A.DISCOUNT_GL_US_GAAP_BASE_EQ,
    A.PREMIUM_GL_US_GAAP_BASE_EQ,
    A.UNRLZED_PL_GL_US_GAAP_BASE_EQ,
    A.LTD_IMPAIRMENT_US_GAAP_BASE_EQ,
    A.SOURCE,
    A.IBF_ONLY_RAL_COLUMN_B_YN,
    A.CURRENCY_CODE,
    A.REGULATORY_RISK_RATINGS,
    A.LEVEL_FAIR_VALUE,
    A.ORIGINAL_PRICE,
    A.MATURITY_DATE,
    A.REMAINING_MATURITY,
    A.INT_RATE,
    A.FIXED_OR_VARIABLE,
    A.FLOATING_RATE,
    A.FIXED_RATE,
    A.INDEX_RATE_ADD,
    A.FLOAT_FREQ,
    A.MATURITY_BUCKETS,
    A.LAST_RATE_RESET_DATE,
    A.NEXT_RATE_RESET_DATE,
    A.DAY_COUNT_BASIS,
    A.PLEDGED_SECURITIES_YN,
    A.CMMP_TO_PURCHASE_SEC_YN,
    A.GUARANTOR,
    A.CUSTOMER_NAME,
    A.CUSTOMER_TYPE,
    A.CITY,
    A.OPERATING_STATE,
    A.COUNTRY_CODE,
    A.COUNTRY_DESC,
    A.FOREIGN_DOMESTIC,
    A.SECURITY_DESCRIPTION,
    A."S&P_RATING",
    A.MOODYS_RATING,
    A.CUSIP,
    A.ISIN,
    A.TRADE_ID,
    A.CUSTOMER_ID,
    A.RELATED_DEP_INST,
    A.BRANCH_SUBSIDIARY,
    A.VAL_DATE,
    A.TRADE_DATE,
    A.SETTLE_DATE,
    A.LAST_PRIN_PMT,
    A.UMD1,
    A.UMD2,
    A.UMD3,
    A.UMD4,
    A.UMD5,
    A.UMD6,
    A.UMD7,
    A.UMD8,
    A.UMD9,
    A.UMD10,
    A.SYMB_POOL,
    A.PORTFOLIO,
    A.ACCOUNT_CAMRA,
    A.PRODUCT_CAMRA,
    A.ACCOUNT,
    A.PRODUCT,
    A.OPERATING_UNIT,
    A.AFFILIATE,
    A.CUST_CLASS,
    A.DISCOUNT_CODEBLOCK,
    A.PREMIUM_CODEBLOCK,
    A.UNRLZED_CODEBLOCK,
    A.LTD_IMPAIRMENT_CODEBLOCK,
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
            D.COD_DEST5 AS CALL_CODE,
            NULL AS CALL_CODE_DESC,
            NULL AS PRODUCT_GROUP_DESC,
            CASE
                  WHEN COALESCE(C.ATTRIBUTO1, 'PGUBE') = 'AC'
                      THEN D.IMPORTO2 * 1000
                  ELSE NULL
            END AS AMORTIZED_COST,
            CASE
                  WHEN COALESCE(C.ATTRIBUTO1, 'PGUBE') = 'FV'
                      THEN D.IMPORTO2 * 1000
                  ELSE NULL
            END AS FAIR_VALUE,
            NULL AS PRICE,
            CASE
                  WHEN COALESCE(C.ATTRIBUTO1, 'PGUBE') = 'PGUBE'
                      THEN D.IMPORTO2 * 1000
                  ELSE NULL
            END AS PRINCIPAL_GL_US_GAAP_BASE_EQ,
            NULL AS DISCOUNT_GL_US_GAAP_BASE_EQ,
            NULL AS PREMIUM_GL_US_GAAP_BASE_EQ,
            CASE
                  WHEN COALESCE(C.ATTRIBUTO1, 'PGUBE') = 'UNRZ'
                      THEN D.IMPORTO2 * 1000
                  ELSE NULL
            END AS UNRLZED_PL_GL_US_GAAP_BASE_EQ,
            NULL AS LTD_IMPAIRMENT_US_GAAP_BASE_EQ,
            D.NOTE AS SOURCE,
            NULL AS IBF_ONLY_RAL_COLUMN_B_YN,
            NULL AS CURRENCY_CODE,
            NULL AS REGULATORY_RISK_RATINGS,
            NULL AS LEVEL_FAIR_VALUE,
            NULL AS ORIGINAL_PRICE,
            NULL AS MATURITY_DATE,
            NULL AS REMAINING_MATURITY,
            NULL AS INT_RATE,
            NULL AS FIXED_OR_VARIABLE,
            NULL AS FLOATING_RATE,
            NULL AS FIXED_RATE,
            NULL AS INDEX_RATE_ADD,
            NULL AS FLOAT_FREQ,
            NULL AS MATURITY_BUCKETS,
            NULL AS LAST_RATE_RESET_DATE,
            NULL AS NEXT_RATE_RESET_DATE,
            NULL AS DAY_COUNT_BASIS,
            NULL AS PLEDGED_SECURITIES_YN,
            NULL AS CMMP_TO_PURCHASE_SEC_YN,
            NULL AS GUARANTOR,
            NULL AS CUSTOMER_NAME,
            NULL AS CUSTOMER_TYPE,
            NULL AS CITY,
            NULL AS OPERATING_STATE,
            NULL AS COUNTRY_CODE,
            NULL AS COUNTRY_DESC,
            NULL AS FOREIGN_DOMESTIC,
            NULL AS SECURITY_DESCRIPTION,
            NULL AS "S&P_RATING",
            NULL AS MOODYS_RATING,
            NULL AS CUSIP,
            NULL AS ISIN,
            NULL AS TRADE_ID,
            NULL AS CUSTOMER_ID,
            NULL AS RELATED_DEP_INST,
            NULL AS BRANCH_SUBSIDIARY,
            NULL AS VAL_DATE,
            NULL AS TRADE_DATE,
            NULL AS SETTLE_DATE,
            NULL AS LAST_PRIN_PMT,
            NULL AS UMD1,
            NULL AS UMD2,
            NULL AS UMD3,
            NULL AS UMD4,
            NULL AS UMD5,
            NULL AS UMD6,
            NULL AS UMD7,
            NULL AS UMD8,
            NULL AS UMD9,
            NULL AS UMD10,
            NULL AS SYMB_POOL,
            NULL AS PORTFOLIO,
            NULL AS ACCOUNT_CAMRA,
            NULL AS PRODUCT_CAMRA,
            NULL AS ACCOUNT,
            D.COD_DEST3 AS PRODUCT,
            D.COD_DEST2 AS OPERATING_UNIT,
            D.COD_AZI_CTP AS AFFILIATE,
            D.COD_DEST4 AS CUST_CLASS,
            NULL AS DISCOUNT_CODEBLOCK,
            NULL AS PREMIUM_CODEBLOCK,
            NULL AS UNRLZED_CODEBLOCK,
            NULL AS LTD_IMPAIRMENT_CODEBLOCK,
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
                    FD.COD_PROSPETTO = 'SECURITIES'
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
            B.TESTO_49 AS RB_ROWID,
            SEC.MONTH_END_DATE,
            SEC.REPORTING_ENTITY,
            SEC.INSTRUMENT,
            SEC.INTERCOMPANY,
            SEC.CONSOL_NODE,
            SEC.BUSINESS_UNIT,
            SEC.GL_KEY_CODE,
            SEC.GL_KEY_CODE_DESC,
            SEC.CALL_CODE,
            SEC.CALL_CODE_DESC,
            SEC.PRODUCT_GROUP_DESC,
            SEC.AMORTIZED_COST,
            SEC.FAIR_VALUE,
            SEC.PRICE,
            SEC.PRINCIPAL_GL_US_GAAP_BASE_EQ,
            SEC.DISCOUNT_GL_US_GAAP_BASE_EQ,
            SEC.PREMIUM_GL_US_GAAP_BASE_EQ,
            SEC.UNRLZED_PL_GL_US_GAAP_BASE_EQ,
            SEC.LTD_IMPAIRMENT_US_GAAP_BASE_EQ,
            SEC.SOURCE,
            SEC.IBF_ONLY_RAL_COLUMN_B_YN,
            SEC.CURRENCY_CODE,
            SEC.REGULATORY_RISK_RATINGS,
            SEC.LEVEL_FAIR_VALUE,
            SEC.ORIGINAL_PRICE,
            SEC.MATURITY_DATE,
            SEC.REMAINING_MATURITY,
            SEC.INT_RATE,
            SEC.FIXED_OR_VARIABLE,
            SEC.FLOATING_RATE,
            SEC.FIXED_RATE,
            SEC.INDEX_RATE_ADD,
            SEC.FLOAT_FREQ,
            SEC.MATURITY_BUCKETS,
            SEC.LAST_RATE_RESET_DATE,
            SEC.NEXT_RATE_RESET_DATE,
            SEC.DAY_COUNT_BASIS,
            SEC.PLEDGED_SECURITIES_YN,
            SEC.CMMP_TO_PURCHASE_SEC_YN,
            SEC.GUARANTOR,
            SEC.CUSTOMER_NAME,
            SEC.CUSTOMER_TYPE,
            SEC.CITY,
            SEC.OPERATING_STATE,
            SEC.COUNTRY_CODE,
            SEC.COUNTRY_DESC,
            SEC.FOREIGN_DOMESTIC,
            SEC.SECURITY_DESCRIPTION,
            SEC."S&P_RATING",
            SEC.MOODYS_RATING,
            SEC.CUSIP,
            SEC.ISIN,
            SEC.TRADE_ID,
            SEC.CUSTOMER_ID,
            SEC.RELATED_DEP_INST,
            SEC.BRANCH_SUBSIDIARY,
            SEC.VAL_DATE,
            SEC.TRADE_DATE,
            SEC.SETTLE_DATE,
            SEC.LAST_PRIN_PMT,
            SEC.UMD1,
            SEC.UMD2,
            SEC.UMD3,
            SEC.UMD4,
            SEC.UMD5,
            SEC.UMD6,
            SEC.UMD7,
            SEC.UMD8,
            SEC.UMD9,
            SEC.UMD10,
            SEC.SYMB_POOL,
            SEC.PORTFOLIO,
            SEC.ACCOUNT_CAMRA,
            SEC.PRODUCT_CAMRA,
            SEC.ACCOUNT,
            SEC.PRODUCT,
            SEC.OPERATING_UNIT,
            SEC.AFFILIATE,
            SEC.CUST_CLASS,
            SEC.DISCOUNT_CODEBLOCK,
            SEC.PREMIUM_CODEBLOCK,
            SEC.UNRLZED_CODEBLOCK,
            SEC.LTD_IMPAIRMENT_CODEBLOCK,
            SEC.FILLER_1,
            SEC.FILLER_2,
            SEC.FILLER_3,
            SEC.FILLER_4,
            SEC.FILLER_5,
            SEC.FILLER_6,
            SEC.FILLER_7,
            SEC.FILLER_8,
            SEC.FILLER_9,
            SEC.FILLER_10,
            SEC.FILLER_11,
            SEC.FILLER_12,
            SEC.FILLER_13,
            SEC.FILLER_14,
            SEC.FILLER_15,
            SEC.FILLER_16,
            SEC.FILLER_17,
            SEC.FILLER_18,
            SEC.FILLER_19,
            SEC.FILLER_20,
            SEC.FILLER_21,
            SEC.FILLER_22,
            SEC.FILLER_23,
            SEC.FILLER_24,
            SEC.FILLER_25
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
                    AND PROVENIENZA LIKE REPLACE(
CASE
WHEN
${B1} = 'RAL'
THEN
'MAP_REP_' || ${A1} || '_' || SUBSTR(${B1},1,2) || '_%'
ELSE
'MAP_REP_' || ${A1} || '_' || ${B1} || '_%'
END
, '-', '_')
          AND COD_AZIENDA IN (${$Entity.code})
            ) C
            ON
                A.COD_SCENARIO = C.COD_SCENARIO
                AND A.COD_PERIODO = C.COD_PERIODO
                AND A.COD_CONTO = C.COD_CONTO
        INNER JOIN
        RB_HST_SECURITY SEC
        ON
          B.DATA_1 = SEC.MONTH_END_DATE
          AND B.TESTO_1 = SEC.REPORTING_ENTITY
          AND B.TESTO_49 = CAST(SEC.RB_ROWID AS VARCHAR(255))
            WHERE
                A.COD_SCENARIO IN (${$Scenario.code})
                AND A.COD_PERIODO IN (${$Period.code})
        AND A.COD_AZIENDA IN (${$Entity.code})
                AND A.PROVENIENZA LIKE REPLACE(
CASE
WHEN
${B1} = 'RAL'
THEN
'MAP_REP_' || ${A1} || '_' || SUBSTR(${B1},1,2) || '_%'
ELSE
'MAP_REP_' || ${A1} || '_' || ${B1} || '_%'
END
, '-', '_')
                AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 3) = ${A1}
                AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 4) = ${B1}
                AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 7) IS NULL
                AND A.COD_CATEGORIA IN ('ORI_REP')
                AND B.COD_PROSPETTO = 'SECURITIES'
UNION ALL
      SELECT
            'ROUNDING' AS DATA_SOURCE,
            D.COD_CONTO AS COD_CONTO_REP,
            D.COD_SCENARIO,
            D.COD_PERIODO,
            NULL AS RB_ROWID,
            NULL AS MONTH_END_DATE,
            NULL AS REPORTING_ENTITY,
            NULL AS INSTRUMENT,
            NULL AS INTERCOMPANY,
            NULL AS CONSOL_NODE,
            D.COD_AZIENDA AS BUSINESS_UNIT,
            NULL AS GL_KEY_CODE,
            NULL AS GL_KEY_CODE_DESC,
            D.COD_DEST5 AS CALL_CODE,
            NULL AS CALL_CODE_DESC,
            NULL AS PRODUCT_GROUP_DESC,
            NULL AS AMORTIZED_COST,
            NULL AS FAIR_VALUE,
            NULL AS PRICE,
            D.IMPORTO * 1000 AS PRINCIPAL_GL_US_GAAP_BASE_EQ,
            NULL AS DISCOUNT_GL_US_GAAP_BASE_EQ,
            NULL AS PREMIUM_GL_US_GAAP_BASE_EQ,
            NULL AS UNRLZED_PL_GL_US_GAAP_BASE_EQ,
            NULL AS LTD_IMPAIRMENT_US_GAAP_BASE_EQ,
            D.NOTE AS SOURCE,
            NULL AS IBF_ONLY_RAL_COLUMN_B_YN,
            NULL AS CURRENCY_CODE,
            NULL AS REGULATORY_RISK_RATINGS,
            NULL AS LEVEL_FAIR_VALUE,
            NULL AS ORIGINAL_PRICE,
            NULL AS MATURITY_DATE,
            NULL AS REMAINING_MATURITY,
            NULL AS INT_RATE,
            NULL AS FIXED_OR_VARIABLE,
            NULL AS FLOATING_RATE,
            NULL AS FIXED_RATE,
            NULL AS INDEX_RATE_ADD,
            NULL AS FLOAT_FREQ,
            NULL AS MATURITY_BUCKETS,
            NULL AS LAST_RATE_RESET_DATE,
            NULL AS NEXT_RATE_RESET_DATE,
            NULL AS DAY_COUNT_BASIS,
            NULL AS PLEDGED_SECURITIES_YN,
            NULL AS CMMP_TO_PURCHASE_SEC_YN,
            NULL AS GUARANTOR,
            NULL AS CUSTOMER_NAME,
            NULL AS CUSTOMER_TYPE,
            NULL AS CITY,
            NULL AS OPERATING_STATE,
            NULL AS COUNTRY_CODE,
            NULL AS COUNTRY_DESC,
            NULL AS FOREIGN_DOMESTIC,
            NULL AS SECURITY_DESCRIPTION,
            NULL AS "S&P_RATING",
            NULL AS MOODYS_RATING,
            NULL AS CUSIP,
            NULL AS ISIN,
            NULL AS TRADE_ID,
            NULL AS CUSTOMER_ID,
            NULL AS RELATED_DEP_INST,
            NULL AS BRANCH_SUBSIDIARY,
            NULL AS VAL_DATE,
            NULL AS TRADE_DATE,
            NULL AS SETTLE_DATE,
            NULL AS LAST_PRIN_PMT,
            NULL AS UMD1,
            NULL AS UMD2,
            NULL AS UMD3,
            NULL AS UMD4,
            NULL AS UMD5,
            NULL AS UMD6,
            NULL AS UMD7,
            NULL AS UMD8,
            NULL AS UMD9,
            NULL AS UMD10,
            NULL AS SYMB_POOL,
            NULL AS PORTFOLIO,
            NULL AS ACCOUNT_CAMRA,
            NULL AS PRODUCT_CAMRA,
            NULL AS ACCOUNT,
            D.COD_DEST3 AS PRODUCT,
            D.COD_DEST2 AS OPERATING_UNIT,
            NULL AS AFFILIATE,
            D.COD_DEST4 AS CUST_CLASS,
            NULL AS DISCOUNT_CODEBLOCK,
            NULL AS PREMIUM_CODEBLOCK,
            NULL AS UNRLZED_CODEBLOCK,
            NULL AS LTD_IMPAIRMENT_CODEBLOCK,
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
                    FD.COD_PROSPETTO = 'SECURITIES'
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
            NULL AS MONTH_END_DATE,
            NULL AS REPORTING_ENTITY,
            NULL AS INSTRUMENT,
            NULL AS INTERCOMPANY,
            NULL AS CONSOL_NODE,
            D.COD_AZIENDA AS BUSINESS_UNIT,
            NULL AS GL_KEY_CODE,
            NULL AS GL_KEY_CODE_DESC,
            D.COD_DEST5 AS CALL_CODE,
            NULL AS CALL_CODE_DESC,
            NULL AS PRODUCT_GROUP_DESC,
            CASE
                  WHEN COALESCE(C.ATTRIBUTO1, 'PGUBE') IN ('AC', 'FV_AC')
                      THEN D.IMPORTO * 1000
                  ELSE NULL
            END AS AMORTIZED_COST,
            CASE
                  WHEN COALESCE(C.ATTRIBUTO1, 'PGUBE') IN ('FV', 'FV_AC')
                      THEN D.IMPORTO * 1000
                  ELSE NULL
            END AS FAIR_VALUE,
            NULL AS PRICE,
            CASE
                  WHEN COALESCE(C.ATTRIBUTO1, 'PGUBE') = 'PGUBE'
                      THEN D.IMPORTO * 1000
                  ELSE NULL
            END AS PRINCIPAL_GL_US_GAAP_BASE_EQ,
            NULL AS DISCOUNT_GL_US_GAAP_BASE_EQ,
            NULL AS PREMIUM_GL_US_GAAP_BASE_EQ,
            CASE
                  WHEN COALESCE(C.ATTRIBUTO1, 'PGUBE') = 'UNRZ'
                      THEN D.IMPORTO * 1000
                  ELSE NULL
            END AS UNRLZED_PL_GL_US_GAAP_BASE_EQ,
            NULL AS LTD_IMPAIRMENT_US_GAAP_BASE_EQ,
            D.NOTE AS SOURCE,
            NULL AS IBF_ONLY_RAL_COLUMN_B_YN,
            NULL AS CURRENCY_CODE,
            NULL AS REGULATORY_RISK_RATINGS,
            NULL AS LEVEL_FAIR_VALUE,
            NULL AS ORIGINAL_PRICE,
            NULL AS MATURITY_DATE,
            NULL AS REMAINING_MATURITY,
            NULL AS INT_RATE,
            NULL AS FIXED_OR_VARIABLE,
            NULL AS FLOATING_RATE,
            NULL AS FIXED_RATE,
            NULL AS INDEX_RATE_ADD,
            NULL AS FLOAT_FREQ,
            NULL AS MATURITY_BUCKETS,
            NULL AS LAST_RATE_RESET_DATE,
            NULL AS NEXT_RATE_RESET_DATE,
            NULL AS DAY_COUNT_BASIS,
            NULL AS PLEDGED_SECURITIES_YN,
            NULL AS CMMP_TO_PURCHASE_SEC_YN,
            NULL AS GUARANTOR,
            NULL AS CUSTOMER_NAME,
            NULL AS CUSTOMER_TYPE,
            NULL AS CITY,
            NULL AS OPERATING_STATE,
            NULL AS COUNTRY_CODE,
            NULL AS COUNTRY_DESC,
            NULL AS FOREIGN_DOMESTIC,
            NULL AS SECURITY_DESCRIPTION,
            NULL AS "S&P_RATING",
            NULL AS MOODYS_RATING,
            NULL AS CUSIP,
            NULL AS ISIN,
            NULL AS TRADE_ID,
            NULL AS CUSTOMER_ID,
            NULL AS RELATED_DEP_INST,
            NULL AS BRANCH_SUBSIDIARY,
            NULL AS VAL_DATE,
            NULL AS TRADE_DATE,
            NULL AS SETTLE_DATE,
            NULL AS LAST_PRIN_PMT,
            NULL AS UMD1,
            NULL AS UMD2,
            NULL AS UMD3,
            NULL AS UMD4,
            NULL AS UMD5,
            NULL AS UMD6,
            NULL AS UMD7,
            NULL AS UMD8,
            NULL AS UMD9,
            NULL AS UMD10,
            NULL AS SYMB_POOL,
            NULL AS PORTFOLIO,
            NULL AS ACCOUNT_CAMRA,
            NULL AS PRODUCT_CAMRA,
            NULL AS ACCOUNT,
            D.COD_DEST3 AS PRODUCT,
            D.COD_DEST2 AS OPERATING_UNIT,
            NULL AS AFFILIATE,
            D.COD_DEST4 AS CUST_CLASS,
            NULL AS DISCOUNT_CODEBLOCK,
            NULL AS PREMIUM_CODEBLOCK,
            NULL AS UNRLZED_CODEBLOCK,
            NULL AS LTD_IMPAIRMENT_CODEBLOCK,
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
                    FD.COD_PROSPETTO = 'SECURITIES'
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
            AND D.PROVENIENZA NOT LIKE REPLACE(
            CASE
            WHEN
            ${B1} = 'RAL'
            THEN
            'MAP_REP_' || ${A1} || '_' || SUBSTR(${B1},1,2) || '_%'
            ELSE
            'MAP_REP_' || ${A1} || '_' || ${B1} || '_%'
            END
            , '-', '_')
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