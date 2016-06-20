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
    A.MATURITY_DATE,
    A.REMAINING_MATURITY_DAYS,
    A.MATURITY_BUCKETS,
    A.MATURITY_BUCKETS_2,
    A.CUSTOMER_ID,
    A."DEPO_NON-DEPO",
    A.FOREIGN_DOMESTIC,
    A.PRINCIPAL_ORIG_CCY,
    A.DISCOUNT_GIVEN_ORIG_CCY,
    A.OVERDRAFT_CASH_ORIG_CCY,
    A.PRINCIPAL_BASE_EQ,
    A.DISCOUNT_GIVEN_BASE_EQ,
    A.OVERDRAFT_CASH_BASE_EQ,
    A.PROD_TYPE_DESC,
    A.CUSTOMER_TYPE,
    A.UMD_1,
    A.SOURCE,
    A.UMD_2,
    A.UMD_3,
    A.UMD_4,
    A.TRADE_ID,
    A.REPORTABLE_Y_N,
    A.BU,
    A.ACCOUNT,
    A.PRODUCT,
    A.OPERATING_UNIT,
    A.DEPTID,
    A.CUST_CLASS,
    A.AFFILIATE,
    A.CIF_TYPE,
    A.CIF_TYPE_DESCRIPTION,
    A.DISC_GIVEN_CALL_CODE_CODEBLOCK,
    A.OVRDRFT_CASH_CALL_CODE_CODEBLK,
    A.FILLER_1,
    A.FILLER_2_ORIGINATION_DATE,
    A.FILLER_3_ORIGINAL_MATURITY,
    A.FILLER_4_CUSTOMER_NAME,
    A.FILLER_5_SECURED_BORROWINGS,
    A.FILLER_6_IBF_ONLY_COLUMN_YN,
    A.FILLER_7_RES_COUNTRY,
    A.FILLER_8_RISK_COUNTRY,
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
            NULL AS CALL_CODE,
            NULL AS CALL_CODE_DESC,
            NULL AS GL_KEY_CODE,
            NULL AS GL_KEY_CODE_DESC,
            NULL AS CONSOL_NODE,
            D.COD_AZIENDA AS BUSINESS_UNIT,
            NULL AS CURRENCY_CODE,
            D.IMPORTO2 * 1000 AS  FOREIGN_AMOUNT,
            NULL AS CURRENCY_USQ,
            D.IMPORTO2 * 1000 AS BASE_EQUIVALENT,
            NULL AS MATURITY_DATE,
            NULL AS REMAINING_MATURITY_DAYS,
            NULL AS MATURITY_BUCKETS,
            NULL AS MATURITY_BUCKETS_2,
            NULL AS CUSTOMER_ID,
            NULL AS "DEPO_NON-DEPO",
            NULL AS FOREIGN_DOMESTIC,
            NULL AS PRINCIPAL_ORIG_CCY,
            NULL AS DISCOUNT_GIVEN_ORIG_CCY,
            NULL AS OVERDRAFT_CASH_ORIG_CCY,
            NULL AS PRINCIPAL_BASE_EQ,
            NULL AS DISCOUNT_GIVEN_BASE_EQ,
            NULL AS OVERDRAFT_CASH_BASE_EQ,
            NULL AS PROD_TYPE_DESC,
            NULL AS CUSTOMER_TYPE,
            NULL AS UMD_1,
            D.NOTE AS SOURCE,
            NULL AS UMD_2,
            NULL AS UMD_3,
            NULL AS UMD_4,
            NULL AS TRADE_ID,
            NULL AS REPORTABLE_Y_N,
            NULL AS BU,
            D.COD_DEST1 AS ACCOUNT,
            D.COD_DEST3 AS PRODUCT,
            CASE
                WHEN SUBSTR(D.COD_DEST2, 1, 4) = 'BLC_'
                    THEN SUBSTR(D.COD_DEST2, 5)
                ELSE 'NA'
            END  AS OPERATING_UNIT,
            CASE
                WHEN SUBSTR(D.COD_DEST2, 1, 4) = 'DPT_'
                    THEN SUBSTR(D.COD_DEST2, 5)
                ELSE 'NA'
            END  AS DEPTID,
            D.COD_DEST4 AS CUST_CLASS,
            D.COD_AZI_CTP AS AFFILIATE,
            NULL AS CIF_TYPE,
            NULL AS CIF_TYPE_DESCRIPTION,
            NULL AS DISC_GIVEN_CALL_CODE_CODEBLOCK,
            NULL AS OVRDRFT_CASH_CALL_CODE_CODEBLK,
            NULL AS FILLER_1,
            NULL AS FILLER_2_ORIGINATION_DATE,
            NULL AS FILLER_3_ORIGINAL_MATURITY,
            NULL AS FILLER_4_CUSTOMER_NAME,
            NULL AS FILLER_5_SECURED_BORROWINGS,
            NULL AS FILLER_6_IBF_ONLY_COLUMN_YN,
            NULL AS FILLER_7_RES_COUNTRY,
            NULL AS FILLER_8_RISK_COUNTRY,
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
                    FD.COD_PROSPETTO = 'BORROWINGS'
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
            BOR.MONTH_END_DATE,
            BOR.REPORTING_ENTITY,
            BOR.INSTRUMENT,
            BOR.INTERCOMPANY,
            BOR.CALL_CODE,
            BOR.CALL_CODE_DESC,
            BOR.GL_KEY_CODE,
            BOR.GL_KEY_CODE_DESC,
            BOR.CONSOL_NODE,
            BOR.BUSINESS_UNIT,
            BOR.CURRENCY_CODE,
            BOR.FOREIGN_AMOUNT,
            BOR.CURRENCY_USQ,
            BOR.BASE_EQUIVALENT,
            BOR.MATURITY_DATE,
            BOR.REMAINING_MATURITY_DAYS,
            BOR.MATURITY_BUCKETS,
            BOR.MATURITY_BUCKETS_2,
            BOR.CUSTOMER_ID,
            BOR."DEPO_NON-DEPO",
            BOR.FOREIGN_DOMESTIC,
            BOR.PRINCIPAL_ORIG_CCY,
            BOR.DISCOUNT_GIVEN_ORIG_CCY,
            BOR.OVERDRAFT_CASH_ORIG_CCY,
            BOR.PRINCIPAL_BASE_EQ,
            BOR.DISCOUNT_GIVEN_BASE_EQ,
            BOR.OVERDRAFT_CASH_BASE_EQ,
            BOR.PROD_TYPE_DESC,
            BOR.CUSTOMER_TYPE,
            BOR.UMD_1,
            BOR.SOURCE,
            BOR.UMD_2,
            BOR.UMD_3,
            BOR.UMD_4,
            BOR.TRADE_ID,
            BOR.REPORTABLE_Y_N,
            BOR.BU,
            BOR.ACCOUNT,
            BOR.PRODUCT,
            BOR.OPERATING_UNIT,
            BOR.DEPTID,
            BOR.CUST_CLASS,
            BOR.AFFILIATE,
            BOR.CIF_TYPE,
            BOR.CIF_TYPE_DESCRIPTION,
            BOR.DISC_GIVEN_CALL_CODE_CODEBLOCK,
            BOR.OVRDRFT_CASH_CALL_CODE_CODEBLK,
            BOR.FILLER_1,
            BOR.FILLER_2_ORIGINATION_DATE,
            BOR.FILLER_3_ORIGINAL_MATURITY,
            BOR.FILLER_4_CUSTOMER_NAME,
            BOR.FILLER_5_SECURED_BORROWINGS,
            BOR.FILLER_6_IBF_ONLY_COLUMN_YN,
            BOR.FILLER_7_RES_COUNTRY,
            BOR.FILLER_8_RISK_COUNTRY,
            BOR.FILLER_9,
            BOR.FILLER_10,
            BOR.FILLER_11,
            BOR.FILLER_12,
            BOR.FILLER_13,
            BOR.FILLER_14,
            BOR.FILLER_15,
            BOR.FILLER_16,
            BOR.FILLER_17,
            BOR.FILLER_18,
            BOR.FILLER_19,
            BOR.FILLER_20,
            BOR.FILLER_21,
            BOR.FILLER_22,
            BOR.FILLER_23,
            BOR.FILLER_24,
            BOR.FILLER_25
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
            RB_V_BORROWINGS BOR
            ON
              B.DATA_1 = BOR.MONTH_END_DATE
              AND B.TESTO_1 = BOR.REPORTING_ENTITY
              AND B.IMPORTO_14 = BOR.RB_ROWID
        WHERE
            A.COD_SCENARIO IN (${$Scenario.code})
            AND A.COD_PERIODO IN (${$Period.code})
            AND A.COD_AZIENDA IN (${$Entity.code})
            AND A.PROVENIENZA LIKE REPLACE(CASE WHEN ${B1} = 'RAL' THEN 'MAP_REP_' || ${A1} || '_' || SUBSTR(${B1},1,2) || '_%' ELSE 'MAP_REP_' || ${A1} || '_' || ${B1} || '_%' END, '-', '_')
            AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 3) = ${A1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 4) = ${B1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 7) IS NULL
            AND A.COD_CATEGORIA IN ('ORI_REP')
            AND B.COD_PROSPETTO = 'BORROWINGS'
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
            NULL AS CALL_CODE,
            NULL AS CALL_CODE_DESC,
            NULL AS GL_KEY_CODE,
            NULL AS GL_KEY_CODE_DESC,
            NULL AS CONSOL_NODE,
            D.COD_AZIENDA AS BUSINESS_UNIT,
            NULL AS CURRENCY_CODE,
            D.IMPORTO_VALUTA_ORIGINARIA * 1000 AS  FOREIGN_AMOUNT,
            NULL AS CURRENCY_USQ,
            D.IMPORTO * 1000 AS BASE_EQUIVALENT,
            NULL AS MATURITY_DATE,
            NULL AS REMAINING_MATURITY_DAYS,
            NULL AS MATURITY_BUCKETS,
            NULL AS MATURITY_BUCKETS_2,
            NULL AS CUSTOMER_ID,
            NULL AS "DEPO_NON-DEPO",
            NULL AS FOREIGN_DOMESTIC,
            NULL AS PRINCIPAL_ORIG_CCY,
            NULL AS DISCOUNT_GIVEN_ORIG_CCY,
            NULL AS OVERDRAFT_CASH_ORIG_CCY,
            NULL AS PRINCIPAL_BASE_EQ,
            NULL AS DISCOUNT_GIVEN_BASE_EQ,
            NULL AS OVERDRAFT_CASH_BASE_EQ,
            NULL AS PROD_TYPE_DESC,
            NULL AS CUSTOMER_TYPE,
            NULL AS UMD_1,
            D.NOTE AS SOURCE,
            NULL AS UMD_2,
            NULL AS UMD_3,
            NULL AS UMD_4,
            NULL AS TRADE_ID,
            NULL AS REPORTABLE_Y_N,
            NULL AS BU,
            D.COD_DEST1 AS ACCOUNT,
            D.COD_DEST3 AS PRODUCT,
            CASE
                WHEN SUBSTR(D.COD_DEST2, 1, 4) = 'BLC_'
                    THEN SUBSTR(D.COD_DEST2, 5)
                ELSE 'NA'
            END  AS OPERATING_UNIT,
            CASE
                WHEN SUBSTR(D.COD_DEST2, 1, 4) = 'DPT_'
                    THEN SUBSTR(D.COD_DEST2, 5)
                ELSE 'NA'
            END  AS DEPTID,
            D.COD_DEST4 AS CUST_CLASS,
            NULL AS AFFILIATE,
            NULL AS CIF_TYPE,
            NULL AS CIF_TYPE_DESCRIPTION,
            NULL AS DISC_GIVEN_CALL_CODE_CODEBLOCK,
            NULL AS OVRDRFT_CASH_CALL_CODE_CODEBLK,
            NULL AS FILLER_1,
            NULL AS FILLER_2_ORIGINATION_DATE,
            NULL AS FILLER_3_ORIGINAL_MATURITY,
            NULL AS FILLER_4_CUSTOMER_NAME,
            NULL AS FILLER_5_SECURED_BORROWINGS,
            NULL AS FILLER_6_IBF_ONLY_COLUMN_YN,
            NULL AS FILLER_7_RES_COUNTRY,
            NULL AS FILLER_8_RISK_COUNTRY,
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
                    FD.COD_PROSPETTO = 'BORROWINGS'
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
            NULL AS CALL_CODE,
            NULL AS CALL_CODE_DESC,
            NULL AS GL_KEY_CODE,
            NULL AS GL_KEY_CODE_DESC,
            NULL AS CONSOL_NODE,
            D.COD_AZIENDA AS BUSINESS_UNIT,
            NULL AS CURRENCY_CODE,
            D.IMPORTO_VALUTA_ORIGINARIA * 1000 AS  FOREIGN_AMOUNT,
            NULL AS CURRENCY_USQ,
            D.IMPORTO * 1000 AS BASE_EQUIVALENT,
            NULL AS MATURITY_DATE,
            NULL AS REMAINING_MATURITY_DAYS,
            NULL AS MATURITY_BUCKETS,
            NULL AS MATURITY_BUCKETS_2,
            NULL AS CUSTOMER_ID,
            NULL AS "DEPO_NON-DEPO",
            NULL AS FOREIGN_DOMESTIC,
            NULL AS PRINCIPAL_ORIG_CCY,
            NULL AS DISCOUNT_GIVEN_ORIG_CCY,
            NULL AS OVERDRAFT_CASH_ORIG_CCY,
            NULL AS PRINCIPAL_BASE_EQ,
            NULL AS DISCOUNT_GIVEN_BASE_EQ,
            NULL AS OVERDRAFT_CASH_BASE_EQ,
            NULL AS PROD_TYPE_DESC,
            NULL AS CUSTOMER_TYPE,
            NULL AS UMD_1,
            D.NOTE AS SOURCE,
            NULL AS UMD_2,
            NULL AS UMD_3,
            NULL AS UMD_4,
            NULL AS TRADE_ID,
            NULL AS REPORTABLE_Y_N,
            NULL AS BU,
            D.COD_DEST1 AS ACCOUNT,
            D.COD_DEST3 AS PRODUCT,
            CASE
                WHEN SUBSTR(D.COD_DEST2, 1, 4) = 'BLC_'
                    THEN SUBSTR(D.COD_DEST2, 5)
                ELSE 'NA'
            END  AS OPERATING_UNIT,
            CASE
                WHEN SUBSTR(D.COD_DEST2, 1, 4) = 'DPT_'
                    THEN SUBSTR(D.COD_DEST2, 5)
                ELSE 'NA'
            END  AS DEPTID,
            D.COD_DEST4 AS CUST_CLASS,
            NULL AS AFFILIATE,
            NULL AS CIF_TYPE,
            NULL AS CIF_TYPE_DESCRIPTION,
            NULL AS DISC_GIVEN_CALL_CODE_CODEBLOCK,
            NULL AS OVRDRFT_CASH_CALL_CODE_CODEBLK,
            NULL AS FILLER_1,
            NULL AS FILLER_2_ORIGINATION_DATE,
            NULL AS FILLER_3_ORIGINAL_MATURITY,
            NULL AS FILLER_4_CUSTOMER_NAME,
            NULL AS FILLER_5_SECURED_BORROWINGS,
            NULL AS FILLER_6_IBF_ONLY_COLUMN_YN,
            NULL AS FILLER_7_RES_COUNTRY,
            NULL AS FILLER_8_RISK_COUNTRY,
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
                    FD.COD_PROSPETTO = 'BORROWINGS'
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