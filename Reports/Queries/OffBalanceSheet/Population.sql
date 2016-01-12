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
    A.CALL_CODE,
    A.CALL_CODE_DESC,
    A.GL_KEY_CODE,
    A.GL_KEY_CODE_DESC,
    A.CONSOL_NODE,
    A.BUSINESS_UNIT,
    A.CURRENCY_CODE,
    A.FOREIGN_AMOUNT,
    A.CURRENCY_USQ,
    A.BASE_EQUIVALENT,
    A.ORIGINATION_DATE,
    A.MATURITY_DATE,
    A.REMAINING_MATURITY_DAYS,
    A.FRONTED_UNFUNDED_PARTICIPANTS,
    A.CUSTOMER_ID,
    A.CUSTOMER_NAME,
    A."DEPO_NON-DEPO",
    A.FOREIGN_DOMESTIC,
    A.CANCELLABLE_Y_N,
    A.MATURITY_BUCKETS,
    A.SECURITIZATION_EXPO,
    A.CREDIT_CONVERSION_FACTOR,
    A.CREDIT_EQUIVALENT_AMT,
    A.RISK_COUNTRY,
    A.RISK_COUNTRY_CODE,
    A.RISK_WEIGHTED_CATEGORY,
    A.RISK_WEIGHTED_ALLOCATION,
    A.UMD_1,
    A.UMD_2,
    A.UMD_3,
    A.SECURED_Y_N,
    A.GUARANTEED_Y_N,
    A.GOVT_GUARANTEED_PERCENTAGE ,
    A.QUALIFIED_CENTRAL_CPT_Y_N,
    A.ABCP_CONDUITS_AMT,
    A.SOVERIGN_DEFAULT_Y_N,
    A.CRC_RATING_OF_OECD_EXPOSURES,
    A.US_GAAP_RISK_RATING,
    A.IFRS_RISK_RATING,
    A.FACILITY_LIMIT_AMOUNT,
    A.FACILITY_USED_AMOUNT,
    A.SYNDICATED_RABOSHARE,
    A."SYNDICATED_RABOSHARE_%",
    A.SYNDICATED_PARTICIPANTS,
    A."SYNDICATED_PARTICIPANTS_%",
    A.SOURCE,
    A.UMD_4,
    A.UMD_5,
    A.UMD_6,
    A.TRADE_ID,
    A.REPORTABLE_Y_N,
    A.BU ,
    A.ACCOUNT,
    A.PRODUCT,
    A.OPERATING_UNIT,
    A.DEPTID,
    A.CUST_CLASS,
    A.AFFILIATE,
    A.CIF_TYPE,
    A.CUSTOMER_TYPE,
    A.LOAN_CALL_CODE,
    A.PRODUCT_GROUP,
    A.FACILITY_TYPE,
    A.FACILITY_TYPE_DESC,
    A.CALL_CODE_CODEBLOCK,
    A.CCF_CODEBLOCK,
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
            NULL AS CALL_CODE,
            NULL AS CALL_CODE_DESC,
            NULL AS GL_KEY_CODE,
            NULL AS GL_KEY_CODE_DESC,
            NULL AS CONSOL_NODE,
            D.COD_AZIENDA AS BUSINESS_UNIT,
            NULL AS CURRENCY_CODE,
            NULL AS FOREIGN_AMOUNT,
            NULL AS CURRENCY_USQ,
            D.IMPORTO * 1000 AS BASE_EQUIVALENT,
            NULL AS ORIGINATION_DATE,
            NULL AS MATURITY_DATE,
            NULL AS REMAINING_MATURITY_DAYS,
            NULL AS FRONTED_UNFUNDED_PARTICIPANTS,
            NULL AS CUSTOMER_ID,
            NULL AS CUSTOMER_NAME,
            NULL AS "DEPO_NON-DEPO",
            NULL AS FOREIGN_DOMESTIC,
            NULL AS CANCELLABLE_Y_N,
            NULL AS MATURITY_BUCKETS,
            NULL AS SECURITIZATION_EXPO,
            NULL AS CREDIT_CONVERSION_FACTOR,
            NULL AS CREDIT_EQUIVALENT_AMT,
            NULL AS RISK_COUNTRY,
            NULL AS RISK_COUNTRY_CODE,
            NULL AS RISK_WEIGHTED_CATEGORY,
            NULL AS RISK_WEIGHTED_ALLOCATION,
            NULL AS UMD_1,
            NULL AS UMD_2,
            NULL AS UMD_3,
            NULL AS SECURED_Y_N,
            NULL AS GUARANTEED_Y_N,
            NULL AS GOVT_GUARANTEED_PERCENTAGE ,
            NULL AS QUALIFIED_CENTRAL_CPT_Y_N,
            NULL AS ABCP_CONDUITS_AMT,
            NULL AS SOVERIGN_DEFAULT_Y_N,
            NULL AS CRC_RATING_OF_OECD_EXPOSURES,
            NULL AS US_GAAP_RISK_RATING,
            NULL AS IFRS_RISK_RATING,
            NULL AS FACILITY_LIMIT_AMOUNT,
            NULL AS FACILITY_USED_AMOUNT,
            NULL AS SYNDICATED_RABOSHARE,
            NULL AS "SYNDICATED_RABOSHARE_%",
            NULL AS SYNDICATED_PARTICIPANTS,
            NULL AS "SYNDICATED_PARTICIPANTS_%",
            D.NOTE AS SOURCE,
            NULL AS UMD_4,
            NULL AS UMD_5,
            NULL AS UMD_6,
            NULL AS TRADE_ID,
            NULL AS REPORTABLE_Y_N,
            NULL AS BU ,
            NULL AS ACCOUNT,
            D.COD_DEST3 AS PRODUCT,
            D.COD_DEST2 AS OPERATING_UNIT,
            NULL AS DEPTID,
            D.COD_DEST4 AS CUST_CLASS,
            D.COD_AZI_CTP AS AFFILIATE,
            NULL AS CIF_TYPE,
            NULL AS CUSTOMER_TYPE,
            NULL AS LOAN_CALL_CODE,
            NULL AS PRODUCT_GROUP,
            NULL AS FACILITY_TYPE,
            NULL AS FACILITY_TYPE_DESC,
            NULL AS CALL_CODE_CODEBLOCK,
            NULL AS CCF_CODEBLOCK,
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
                    FD.COD_PROSPETTO = 'OFF_BS'
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
            CAST(B.IMPORTO_1 AS VARCHAR2(255)) AS RB_ROWID,
            OB.MONTH_END_DATE,
            OB.REPORTING_ENTITY,
            OB.INSTRUMENT,
            OB.CALL_CODE,
            OB.CALL_CODE_DESC,
            OB.GL_KEY_CODE,
            OB.GL_KEY_CODE_DESC,
            OB.CONSOL_NODE,
            OB.BUSINESS_UNIT,
            OB.CURRENCY_CODE,
            OB.FOREIGN_AMOUNT,
            OB.CURRENCY_USQ,
            OB.BASE_EQUIVALENT,
            OB.ORIGINATION_DATE,
            OB.MATURITY_DATE,
            OB.REMAINING_MATURITY_DAYS,
            OB.FRONTED_UNFUNDED_PARTICIPANTS,
            OB.CUSTOMER_ID,
            OB.CUSTOMER_NAME,
            OB."DEPO_NON-DEPO",
            OB.FOREIGN_DOMESTIC,
            OB.CANCELLABLE_Y_N,
            OB.MATURITY_BUCKETS,
            OB.SECURITIZATION_EXPO,
            OB.CREDIT_CONVERSION_FACTOR,
            OB.CREDIT_EQUIVALENT_AMT,
            OB.RISK_COUNTRY,
            OB.RISK_COUNTRY_CODE,
            OB.RISK_WEIGHTED_CATEGORY,
            OB.RISK_WEIGHTED_ALLOCATION,
            OB.UMD_1,
            OB.UMD_2,
            OB.UMD_3,
            OB.SECURED_Y_N,
            OB.GUARANTEED_Y_N,
            OB.GOVT_GUARANTEED_PERCENTAGE ,
            OB.QUALIFIED_CENTRAL_CPT_Y_N,
            OB.ABCP_CONDUITS_AMT,
            OB.SOVERIGN_DEFAULT_Y_N,
            OB.CRC_RATING_OF_OECD_EXPOSURES,
            OB.US_GAAP_RISK_RATING,
            OB.IFRS_RISK_RATING,
            OB.FACILITY_LIMIT_AMOUNT,
            OB.FACILITY_USED_AMOUNT,
            OB.SYNDICATED_RABOSHARE,
            OB."SYNDICATED_RABOSHARE_%",
            OB.SYNDICATED_PARTICIPANTS,
            OB."SYNDICATED_PARTICIPANTS_%",
            OB.SOURCE,
            OB.UMD_4,
            OB.UMD_5,
            OB.UMD_6,
            OB.TRADE_ID,
            OB.REPORTABLE_Y_N,
            OB.BU ,
            OB.ACCOUNT,
            OB.PRODUCT,
            OB.OPERATING_UNIT,
            OB.DEPTID,
            OB.CUST_CLASS,
            OB.AFFILIATE,
            OB.CIF_TYPE,
            OB.CUSTOMER_TYPE,
            OB.LOAN_CALL_CODE,
            OB.PRODUCT_GROUP,
            OB.FACILITY_TYPE,
            OB.FACILITY_TYPE_DESC,
            OB.CALL_CODE_CODEBLOCK,
            OB.CCF_CODEBLOCK,
            OB.FILLER_1,
            OB.FILLER_2,
            OB.FILLER_3,
            OB.FILLER_4,
            OB.FILLER_5,
            OB.FILLER_6,
            OB.FILLER_7,
            OB.FILLER_8,
            OB.FILLER_9,
            OB.FILLER_10,
            OB.FILLER_11,
            OB.FILLER_12,
            OB.FILLER_13,
            OB.FILLER_14,
            OB.FILLER_15,
            OB.FILLER_16,
            OB.FILLER_17,
            OB.FILLER_18,
            OB.FILLER_19,
            OB.FILLER_20,
            OB.FILLER_21,
            OB.FILLER_22,
            OB.FILLER_23,
            OB.FILLER_24,
            OB.FILLER_25
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
            RB_V_OFF_BS OB
            ON
              B.DATA_1 = OB.MONTH_END_DATE
              AND B.TESTO_1 = OB.REPORTING_ENTITY
              AND CAST(B.IMPORTO_1 AS VARCHAR2(255)) = CAST(OB.RB_ROWID AS VARCHAR2(255))
        WHERE
            A.COD_SCENARIO IN (${$Scenario.code})
            AND A.COD_PERIODO IN (${$Period.code})
            AND A.COD_AZIENDA IN (${$Entity.code})
            AND A.PROVENIENZA LIKE REPLACE(CASE WHEN ${B1} = 'RAL' THEN 'MAP_REP_' || ${A1} || '_' || SUBSTR(${B1},1,2) || '_%' ELSE 'MAP_REP_' || ${A1} || '_' || ${B1} || '_%' END, '-', '_')
            AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 3) = ${A1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 4) = ${B1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 7) IS NULL
            AND A.COD_CATEGORIA IN ('ORI_REP')
            AND B.COD_PROSPETTO = 'OFF_BS'
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
            NULL AS CALL_CODE,
            NULL AS CALL_CODE_DESC,
            NULL AS GL_KEY_CODE,
            NULL AS GL_KEY_CODE_DESC,
            NULL AS CONSOL_NODE,
            D.COD_AZIENDA AS BUSINESS_UNIT,
            NULL AS CURRENCY_CODE,
            NULL AS FOREIGN_AMOUNT,
            NULL AS CURRENCY_USQ,
            D.IMPORTO * 1000 AS BASE_EQUIVALENT,
            NULL AS ORIGINATION_DATE,
            NULL AS MATURITY_DATE,
            NULL AS REMAINING_MATURITY_DAYS,
            NULL AS FRONTED_UNFUNDED_PARTICIPANTS,
            NULL AS CUSTOMER_ID,
            NULL AS CUSTOMER_NAME,
            NULL AS "DEPO_NON-DEPO",
            NULL AS FOREIGN_DOMESTIC,
            NULL AS CANCELLABLE_Y_N,
            NULL AS MATURITY_BUCKETS,
            NULL AS SECURITIZATION_EXPO,
            NULL AS CREDIT_CONVERSION_FACTOR,
            NULL AS CREDIT_EQUIVALENT_AMT,
            NULL AS RISK_COUNTRY,
            NULL AS RISK_COUNTRY_CODE,
            NULL AS RISK_WEIGHTED_CATEGORY,
            NULL AS RISK_WEIGHTED_ALLOCATION,
            NULL AS UMD_1,
            NULL AS UMD_2,
            NULL AS UMD_3,
            NULL AS SECURED_Y_N,
            NULL AS GUARANTEED_Y_N,
            NULL AS GOVT_GUARANTEED_PERCENTAGE ,
            NULL AS QUALIFIED_CENTRAL_CPT_Y_N,
            NULL AS ABCP_CONDUITS_AMT,
            NULL AS SOVERIGN_DEFAULT_Y_N,
            NULL AS CRC_RATING_OF_OECD_EXPOSURES,
            NULL AS US_GAAP_RISK_RATING,
            NULL AS IFRS_RISK_RATING,
            NULL AS FACILITY_LIMIT_AMOUNT,
            NULL AS FACILITY_USED_AMOUNT,
            NULL AS SYNDICATED_RABOSHARE,
            NULL AS "SYNDICATED_RABOSHARE_%",
            NULL AS SYNDICATED_PARTICIPANTS,
            NULL AS "SYNDICATED_PARTICIPANTS_%",
            D.NOTE AS SOURCE,
            NULL AS UMD_4,
            NULL AS UMD_5,
            NULL AS UMD_6,
            NULL AS TRADE_ID,
            NULL AS REPORTABLE_Y_N,
            NULL AS BU ,
            NULL AS ACCOUNT,
            D.COD_DEST3 AS PRODUCT,
            D.COD_DEST2 AS OPERATING_UNIT,
            NULL AS DEPTID,
            D.COD_DEST4 AS CUST_CLASS,
            NULL AS AFFILIATE,
            NULL AS CIF_TYPE,
            NULL AS CUSTOMER_TYPE,
            NULL AS LOAN_CALL_CODE,
            NULL AS PRODUCT_GROUP,
            NULL AS FACILITY_TYPE,
            NULL AS FACILITY_TYPE_DESC,
            NULL AS CALL_CODE_CODEBLOCK,
            NULL AS CCF_CODEBLOCK,
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
                    FD.COD_PROSPETTO = 'OFF_BS'
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
            NULL AS CALL_CODE,
            NULL AS CALL_CODE_DESC,
            NULL AS GL_KEY_CODE,
            NULL AS GL_KEY_CODE_DESC,
            NULL AS CONSOL_NODE,
            D.COD_AZIENDA AS BUSINESS_UNIT,
            NULL AS CURRENCY_CODE,
            NULL AS FOREIGN_AMOUNT,
            NULL AS CURRENCY_USQ,
            D.IMPORTO * 1000 AS BASE_EQUIVALENT,
            NULL AS ORIGINATION_DATE,
            NULL AS MATURITY_DATE,
            NULL AS REMAINING_MATURITY_DAYS,
            NULL AS FRONTED_UNFUNDED_PARTICIPANTS,
            NULL AS CUSTOMER_ID,
            NULL AS CUSTOMER_NAME,
            NULL AS "DEPO_NON-DEPO",
            NULL AS FOREIGN_DOMESTIC,
            NULL AS CANCELLABLE_Y_N,
            NULL AS MATURITY_BUCKETS,
            NULL AS SECURITIZATION_EXPO,
            NULL AS CREDIT_CONVERSION_FACTOR,
            NULL AS CREDIT_EQUIVALENT_AMT,
            NULL AS RISK_COUNTRY,
            NULL AS RISK_COUNTRY_CODE,
            NULL AS RISK_WEIGHTED_CATEGORY,
            NULL AS RISK_WEIGHTED_ALLOCATION,
            NULL AS UMD_1,
            NULL AS UMD_2,
            NULL AS UMD_3,
            NULL AS SECURED_Y_N,
            NULL AS GUARANTEED_Y_N,
            NULL AS GOVT_GUARANTEED_PERCENTAGE ,
            NULL AS QUALIFIED_CENTRAL_CPT_Y_N,
            NULL AS ABCP_CONDUITS_AMT,
            NULL AS SOVERIGN_DEFAULT_Y_N,
            NULL AS CRC_RATING_OF_OECD_EXPOSURES,
            NULL AS US_GAAP_RISK_RATING,
            NULL AS IFRS_RISK_RATING,
            NULL AS FACILITY_LIMIT_AMOUNT,
            NULL AS FACILITY_USED_AMOUNT,
            NULL AS SYNDICATED_RABOSHARE,
            NULL AS "SYNDICATED_RABOSHARE_%",
            NULL AS SYNDICATED_PARTICIPANTS,
            NULL AS "SYNDICATED_PARTICIPANTS_%",
            D.NOTE AS SOURCE,
            NULL AS UMD_4,
            NULL AS UMD_5,
            NULL AS UMD_6,
            NULL AS TRADE_ID,
            NULL AS REPORTABLE_Y_N,
            NULL AS BU ,
            NULL AS ACCOUNT,
            D.COD_DEST3 AS PRODUCT,
            D.COD_DEST2 AS OPERATING_UNIT,
            NULL AS DEPTID,
            D.COD_DEST4 AS CUST_CLASS,
            NULL AS AFFILIATE,
            NULL AS CIF_TYPE,
            NULL AS CUSTOMER_TYPE,
            NULL AS LOAN_CALL_CODE,
            NULL AS PRODUCT_GROUP,
            NULL AS FACILITY_TYPE,
            NULL AS FACILITY_TYPE_DESC,
            NULL AS CALL_CODE_CODEBLOCK,
            NULL AS CCF_CODEBLOCK,
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
                    FD.COD_PROSPETTO = 'OFF_BS'
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