SELECT
    A.COD_SCENARIO,
    A.COD_PERIODO,
    CGG.DESC_CONTO_ELEGER0 AS DESC_CONTO_ELEGER00,
    C.ATTRIBUTO3 AS FED_CALL_CODE,
    CG.DESC_CONTO_ELEGER0,
    A.DATA_SOURCE,
    A.RB_ROWID,
    A."MONTH_END_DATE",
    A."BANK_NUMBER",
    A."ACCOUNT_DEPOSIT_CATEGORY_CODE",
    A."ACCOUNT_DEPOSIT_CATEGORY_DESC",
    A."ACCOUNT_TYPE_CODE",
    A."ACCOUNT_TYPE_DESCRIPTION",
    A."ACCOUNT_RETIREMENT_PLAN_TYPE",
    A."INSTRUMENT_ID",
    A."X_1",
    A."OPERATING_UNIT",
    A."BRANCH_NUMBER",
    A."CUSTOMER_NAME",
    A."ACCOUNT_LEDGER_BALANCE",
    A."X_2",
    A."X_3",
    A."X_4",
    A."X_5",
    A."X_6",
    A."X_7",
    A."ACCT_AVG_YTD_LEDGER_BAL_AMT",
    A."X_8",
    A."X_9",
    A."ACCT_WAR_AVG_MTD_LGR_BAL",
    A."ACCT_CTD_INT_ACCRUAL",
    A."X_10",
    A."X_11",
    A."X_12",
    A."X_13",
    A."X_14",
    A."X_15",
    A."X_16",
    A."X_17",
    A."X_18",
    A."X_19",
    A."X_20",
    A."X_21",
    A."X_22",
    A."X_23",
    A."X_24",
    A."X_25",
    A."X_26",
    A."X_27",
    A."X_28",
    A."ACCT_INST_OPEN_DATE",
    A."X_29",
    A."X_30",
    A."X_31",
    A."ACCT_LAST_INT_DATE",
    A."X_32",
    A."X_33",
    A."X_34",
    A."ACCT_INST_CLOSED_DATE",
    A."X_35",
    A."X_36",
    A."X_37",
    A."X_38",
    A."X_39",
    A."MATURITY_DATE",
    A."X_40",
    A."X_41",
    A."X_42",
    A."X_43",
    A."X_44",
    A."X_45",
    A."X_46",
    A."X_47",
    A."X_48",
    A."X_49",
    A."X_50",
    A."X_51",
    A."X_52",
    A."X_53",
    A."X_54",
    A."X_55",
    A."X_56",
    A."X_57",
    A."X_58",
    A."X_59",
    A."X_60",
    A."X_61",
    A."X_62",
    A."X_63",
    A."X_64",
    A."X_65",
    A."X_66",
    A."X_67",
    A."X_68",
    A."X_69",
    A."X_70",
    A."X_71",
    A."X_72",
    A."X_73",
    A."X_74",
    A."X_75",
    A."CALL_CODE",
    A."CALL_CODE_DESC",
    A."UMD_1",
    A."UMD_2",
    A."UMD_3",
    A."CURRENCY_CODE",
    A."ORIGINATION_DATE",
    A."REMAINING_MATURITY_DAYS",
    A."MATURITY_BUCKETS",
    A."BROKERED_DEPOSITS",
    A."UNDER_OVER_BALANCE",
    A."TRANSACTION_NON_TRANSACTION_YN",
    A."INTEREST_BEARING_YN",
    A."UMD_4",
    A."UMD_5",
    A."UMD_6",
    A."REPORTING_ENTITY",
    A."INSTRUMENT",
    A."INTERCOMPANY",
    A."CONSOL_NODE",
    A."BUSINESS_UNIT",
    A."GL_KEY_CODE",
    A."GL_KEY_CODE_DESC",
    A."CURRENCY_USQ",
    A."BASE_EQUIVALENT",
    A."PRINCIPAL_ORIG_CCY",
    A."DISCOUNT_GIVEN_ORIG_CCY",
    A."TRANS_ACCT_ORIG_CCY",
    A."PRINCIPAL_BASE_EQ",
    A."DISCOUNT_GIVEN_BASE_EQ",
    A."TRANS_ACCT_BASE_EQ",
    A."DISCOUNT_RECEIVED_ORIG_CCY",
    A."ACCRUED_INTEREST_ORIG_CCY",
    A."ACCRUED_INTEREST_ORIG_CCY_2",
    A."DISCOUNT_RECEIVED_BASE_EQ",
    A."ACCRUED_INTEREST_BASE_EQ",
    A."ACCRUED_INTEREST_BASE_EQ_2",
    A."INCOME_EXPENSE_ORIG_CCY_1",
    A."INCOME_EXPENSE_ORIG_CCY_2",
    A."INCOME_EXPENSE_ORIG_CCY_3",
    A."INCOME_EXPENSE_ORIG_CCY_4",
    A."INCOME_EXPENSE_ORIG_CCY_5",
    A."INCOME_EXPENSE_BASE_EQ_1",
    A."INCOME_EXPENSE_BASE_EQ_2",
    A."INCOME_EXPENSE_BASE_EQ_3",
    A."INCOME_EXPENSE_BASE_EQ_4",
    A."INCOME_EXPENSE_BASE_EQ_5",
    A."IRA_INDICATOR",
    A."FED_FUNDS_YN",
    A."UNDER_OVER_BALANCE_2",
    A."MATURITY_BUCKETS_2",
    A."MATURITY_BUCKETS_3",
    A."CUSTOMER_ID",
    A."CUSTOMER_TYPE",
    A."FOREIGN_DOMESTIC",
    A."COUNTRY_CODE",
    A."COUNTRY_DESC",
    A."CIF_TYPE",
    A."CIF_TYPE_DESCRIPTION",
    A."DEPO_NON-DEPO",
    A."SOURCE",
    A."IBF_DEPOSIT_COLUMN_YN",
    A."TRADE_ID",
    A."REPORTABLE_Y_N",
    A."ACCOUNT",
    A."PRODUCT",
    A."DEPTID",
    A."CUST_CLASS",
    A."AFFILIATE",
    A."DISC_GIVEN_CALL_CODE_CODEBLOCK",
    A."TRANS_ACCT_CALL_CODE_CODEBLK",
    A."UMD_7",
    A."UMD_8",
    A."UMD_9",
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
            NULL AS "BANK_NUMBER",
            NULL AS "ACCOUNT_DEPOSIT_CATEGORY_CODE",
            NULL AS "ACCOUNT_DEPOSIT_CATEGORY_DESC",
            NULL AS "ACCOUNT_TYPE_CODE",
            NULL AS "ACCOUNT_TYPE_DESCRIPTION",
            NULL AS "ACCOUNT_RETIREMENT_PLAN_TYPE",
            NULL AS "INSTRUMENT_ID",
            NULL AS "X_1",
            CASE
                WHEN SUBSTR(D.COD_DEST2, 1, 4) = 'BLC_'
                    THEN SUBSTR(D.COD_DEST2, 5)
                ELSE NULL
            END AS OPERATING_UNIT,
            NULL AS "BRANCH_NUMBER",
            NULL AS "CUSTOMER_NAME",
            CASE
                WHEN COALESCE(C.ATTRIBUTO1, 'BE') = 'BE'
                    THEN NULL
                ELSE D.IMPORTO2 * 1000
            END AS ACCOUNT_LEDGER_BALANCE,
            NULL AS "X_2",
            NULL AS "X_3",
            NULL AS "X_4",
            NULL AS "X_5",
            NULL AS "X_6",
            NULL AS "X_7",
            NULL AS "ACCT_AVG_YTD_LEDGER_BAL_AMT",
            NULL AS "X_8",
            NULL AS "X_9",
            NULL AS "ACCT_WAR_AVG_MTD_LGR_BAL",
            NULL AS "ACCT_CTD_INT_ACCRUAL",
            NULL AS "X_10",
            NULL AS "X_11",
            NULL AS "X_12",
            NULL AS "X_13",
            NULL AS "X_14",
            NULL AS "X_15",
            NULL AS "X_16",
            NULL AS "X_17",
            NULL AS "X_18",
            NULL AS "X_19",
            NULL AS "X_20",
            NULL AS "X_21",
            NULL AS "X_22",
            NULL AS "X_23",
            NULL AS "X_24",
            NULL AS "X_25",
            NULL AS "X_26",
            NULL AS "X_27",
            NULL AS "X_28",
            NULL AS "ACCT_INST_OPEN_DATE",
            NULL AS "X_29",
            NULL AS "X_30",
            NULL AS "X_31",
            NULL AS "ACCT_LAST_INT_DATE",
            NULL AS "X_32",
            NULL AS "X_33",
            NULL AS "X_34",
            NULL AS "ACCT_INST_CLOSED_DATE",
            NULL AS "X_35",
            NULL AS "X_36",
            NULL AS "X_37",
            NULL AS "X_38",
            NULL AS "X_39",
            NULL AS "MATURITY_DATE",
            NULL AS "X_40",
            NULL AS "X_41",
            NULL AS "X_42",
            NULL AS "X_43",
            NULL AS "X_44",
            NULL AS "X_45",
            NULL AS "X_46",
            NULL AS "X_47",
            NULL AS "X_48",
            NULL AS "X_49",
            NULL AS "X_50",
            NULL AS "X_51",
            NULL AS "X_52",
            NULL AS "X_53",
            NULL AS "X_54",
            NULL AS "X_55",
            NULL AS "X_56",
            NULL AS "X_57",
            NULL AS "X_58",
            NULL AS "X_59",
            NULL AS "X_60",
            NULL AS "X_61",
            NULL AS "X_62",
            NULL AS "X_63",
            NULL AS "X_64",
            NULL AS "X_65",
            NULL AS "X_66",
            NULL AS "X_67",
            NULL AS "X_68",
            NULL AS "X_69",
            NULL AS "X_70",
            NULL AS "X_71",
            NULL AS "X_72",
            NULL AS "X_73",
            NULL AS "X_74",
            NULL AS "X_75",
            D.COD_DEST5 AS "CALL_CODE",
            NULL AS "CALL_CODE_DESC",
            NULL AS "UMD_1",
            NULL AS "UMD_2",
            NULL AS "UMD_3",
            D.COD_VALUTA2 AS CURRENCY_CODE,
            NULL AS "ORIGINATION_DATE",
            NULL AS "REMAINING_MATURITY_DAYS",
            NULL AS "MATURITY_BUCKETS",
            NULL AS "BROKERED_DEPOSITS",
            NULL AS "UNDER_OVER_BALANCE",
            NULL AS "TRANSACTION_NON_TRANSACTION_YN",
            NULL AS "INTEREST_BEARING_YN",
            NULL AS "UMD_4",
            NULL AS "UMD_5",
            NULL AS "UMD_6",
            NULL AS "REPORTING_ENTITY",
            NULL AS "INSTRUMENT",
            NULL AS "INTERCOMPANY",
            NULL AS "CONSOL_NODE",
            D.COD_AZIENDA AS BUSINESS_UNIT,
            NULL AS "GL_KEY_CODE",
            NULL AS "GL_KEY_CODE_DESC",
            D.COD_VALUTA AS CURRENCY_USQ,
            CASE
                WHEN COALESCE(C.ATTRIBUTO1, 'BE') = 'ALB'
                    THEN NULL
                ELSE D.IMPORTO2 * 1000
            END AS BASE_EQUIVALENT,
            NULL AS "PRINCIPAL_ORIG_CCY",
            NULL AS "DISCOUNT_GIVEN_ORIG_CCY",
            NULL AS "TRANS_ACCT_ORIG_CCY",
            NULL AS "PRINCIPAL_BASE_EQ",
            NULL AS "DISCOUNT_GIVEN_BASE_EQ",
            NULL AS "TRANS_ACCT_BASE_EQ",
            NULL AS "DISCOUNT_RECEIVED_ORIG_CCY",
            NULL AS "ACCRUED_INTEREST_ORIG_CCY",
            NULL AS "ACCRUED_INTEREST_ORIG_CCY_2",
            NULL AS "DISCOUNT_RECEIVED_BASE_EQ",
            NULL AS "ACCRUED_INTEREST_BASE_EQ",
            NULL AS "ACCRUED_INTEREST_BASE_EQ_2",
            NULL AS "INCOME_EXPENSE_ORIG_CCY_1",
            NULL AS "INCOME_EXPENSE_ORIG_CCY_2",
            NULL AS "INCOME_EXPENSE_ORIG_CCY_3",
            NULL AS "INCOME_EXPENSE_ORIG_CCY_4",
            NULL AS "INCOME_EXPENSE_ORIG_CCY_5",
            NULL AS "INCOME_EXPENSE_BASE_EQ_1",
            NULL AS "INCOME_EXPENSE_BASE_EQ_2",
            NULL AS "INCOME_EXPENSE_BASE_EQ_3",
            NULL AS "INCOME_EXPENSE_BASE_EQ_4",
            NULL AS "INCOME_EXPENSE_BASE_EQ_5",
            NULL AS "IRA_INDICATOR",
            NULL AS "FED_FUNDS_YN",
            NULL AS "UNDER_OVER_BALANCE_2",
            NULL AS "MATURITY_BUCKETS_2",
            NULL AS "MATURITY_BUCKETS_3",
            NULL AS "CUSTOMER_ID",
            NULL AS "CUSTOMER_TYPE",
            NULL AS "FOREIGN_DOMESTIC",
            NULL AS "COUNTRY_CODE",
            NULL AS "COUNTRY_DESC",
            NULL AS "CIF_TYPE",
            NULL AS "CIF_TYPE_DESCRIPTION",
            NULL AS "DEPO_NON-DEPO",
            D.NOTE AS SOURCE,
            NULL AS "IBF_DEPOSIT_COLUMN_YN",
            NULL AS "TRADE_ID",
            NULL AS "REPORTABLE_Y_N",
            D.COD_DEST1 AS ACCOUNT,
            D.COD_DEST3 AS PRODUCT,
            CASE
                WHEN SUBSTR(D.COD_DEST2, 1, 4) = 'DPT_'
                    THEN SUBSTR(D.COD_DEST2, 5)
                ELSE NULL
            END AS DEPTID,
            D.COD_DEST4 AS CUST_CLASS,
            D.COD_AZI_CTP AS AFFILIATE,
            NULL AS "DISC_GIVEN_CALL_CODE_CODEBLOCK",
            NULL AS "TRANS_ACCT_CALL_CODE_CODEBLK",
            NULL AS "UMD_7",
            NULL AS "UMD_8",
            NULL AS "UMD_9",
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
                    FD.COD_PROSPETTO = 'DEPOSITS'
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
            DEP."MONTH_END_DATE",
            DEP."BANK_NUMBER",
            DEP."ACCOUNT_DEPOSIT_CATEGORY_CODE",
            DEP."ACCOUNT_DEPOSIT_CATEGORY_DESC",
            DEP."ACCOUNT_TYPE_CODE",
            DEP."ACCOUNT_TYPE_DESCRIPTION",
            DEP."ACCOUNT_RETIREMENT_PLAN_TYPE",
            DEP."INSTRUMENT_ID",
            DEP."X_1",
            DEP."OPERATING_UNIT",
            DEP."BRANCH_NUMBER",
            DEP."CUSTOMER_NAME",
            DEP."ACCOUNT_LEDGER_BALANCE",
            DEP."X_2",
            DEP."X_3",
            DEP."X_4",
            DEP."X_5",
            DEP."X_6",
            DEP."X_7",
            DEP."ACCT_AVG_YTD_LEDGER_BAL_AMT",
            DEP."X_8",
            DEP."X_9",
            DEP."ACCT_WAR_AVG_MTD_LGR_BAL",
            DEP."ACCT_CTD_INT_ACCRUAL",
            DEP."X_10",
            DEP."X_11",
            DEP."X_12",
            DEP."X_13",
            DEP."X_14",
            DEP."X_15",
            DEP."X_16",
            DEP."X_17",
            DEP."X_18",
            DEP."X_19",
            DEP."X_20",
            DEP."X_21",
            DEP."X_22",
            DEP."X_23",
            DEP."X_24",
            DEP."X_25",
            DEP."X_26",
            DEP."X_27",
            DEP."X_28",
            DEP."ACCT_INST_OPEN_DATE",
            DEP."X_29",
            DEP."X_30",
            DEP."X_31",
            DEP."ACCT_LAST_INT_DATE",
            DEP."X_32",
            DEP."X_33",
            DEP."X_34",
            DEP."ACCT_INST_CLOSED_DATE",
            DEP."X_35",
            DEP."X_36",
            DEP."X_37",
            DEP."X_38",
            DEP."X_39",
            DEP."MATURITY_DATE",
            DEP."X_40",
            DEP."X_41",
            DEP."X_42",
            DEP."X_43",
            DEP."X_44",
            DEP."X_45",
            DEP."X_46",
            DEP."X_47",
            DEP."X_48",
            DEP."X_49",
            DEP."X_50",
            DEP."X_51",
            DEP."X_52",
            DEP."X_53",
            DEP."X_54",
            DEP."X_55",
            DEP."X_56",
            DEP."X_57",
            DEP."X_58",
            DEP."X_59",
            DEP."X_60",
            DEP."X_61",
            DEP."X_62",
            DEP."X_63",
            DEP."X_64",
            DEP."X_65",
            DEP."X_66",
            DEP."X_67",
            DEP."X_68",
            DEP."X_69",
            DEP."X_70",
            DEP."X_71",
            DEP."X_72",
            DEP."X_73",
            DEP."X_74",
            DEP."X_75",
            DEP."CALL_CODE",
            DEP."CALL_CODE_DESC",
            DEP."UMD_1",
            DEP."UMD_2",
            DEP."UMD_3",
            DEP."CURRENCY_CODE",
            DEP."ORIGINATION_DATE",
            DEP."REMAINING_MATURITY_DAYS",
            DEP."MATURITY_BUCKETS",
            DEP."BROKERED_DEPOSITS",
            DEP."UNDER_OVER_BALANCE",
            DEP."TRANSACTION_NON_TRANSACTION_YN",
            DEP."INTEREST_BEARING_YN",
            DEP."UMD_4",
            DEP."UMD_5",
            DEP."UMD_6",
            DEP."REPORTING_ENTITY",
            DEP."INSTRUMENT",
            DEP."INTERCOMPANY",
            DEP."CONSOL_NODE",
            DEP."BUSINESS_UNIT",
            DEP."GL_KEY_CODE",
            DEP."GL_KEY_CODE_DESC",
            DEP."CURRENCY_USQ",
            DEP."BASE_EQUIVALENT",
            DEP."PRINCIPAL_ORIG_CCY",
            DEP."DISCOUNT_GIVEN_ORIG_CCY",
            DEP."TRANS_ACCT_ORIG_CCY",
            DEP."PRINCIPAL_BASE_EQ",
            DEP."DISCOUNT_GIVEN_BASE_EQ",
            DEP."TRANS_ACCT_BASE_EQ",
            DEP."DISCOUNT_RECEIVED_ORIG_CCY",
            DEP."ACCRUED_INTEREST_ORIG_CCY",
            DEP."ACCRUED_INTEREST_ORIG_CCY_2",
            DEP."DISCOUNT_RECEIVED_BASE_EQ",
            DEP."ACCRUED_INTEREST_BASE_EQ",
            DEP."ACCRUED_INTEREST_BASE_EQ_2",
            DEP."INCOME_EXPENSE_ORIG_CCY_1",
            DEP."INCOME_EXPENSE_ORIG_CCY_2",
            DEP."INCOME_EXPENSE_ORIG_CCY_3",
            DEP."INCOME_EXPENSE_ORIG_CCY_4",
            DEP."INCOME_EXPENSE_ORIG_CCY_5",
            DEP."INCOME_EXPENSE_BASE_EQ_1",
            DEP."INCOME_EXPENSE_BASE_EQ_2",
            DEP."INCOME_EXPENSE_BASE_EQ_3",
            DEP."INCOME_EXPENSE_BASE_EQ_4",
            DEP."INCOME_EXPENSE_BASE_EQ_5",
            DEP."IRA_INDICATOR",
            DEP."FED_FUNDS_YN",
            DEP."UNDER_OVER_BALANCE_2",
            DEP."MATURITY_BUCKETS_2",
            DEP."MATURITY_BUCKETS_3",
            DEP."CUSTOMER_ID",
            DEP."CUSTOMER_TYPE",
            DEP."FOREIGN_DOMESTIC",
            DEP."COUNTRY_CODE",
            DEP."COUNTRY_DESC",
            DEP."CIF_TYPE",
            DEP."CIF_TYPE_DESCRIPTION",
            DEP."DEPO_NON-DEPO",
            DEP."SOURCE",
            DEP."IBF_DEPOSIT_COLUMN_YN",
            DEP."TRADE_ID",
            DEP."REPORTABLE_Y_N",
            DEP."ACCOUNT",
            DEP."PRODUCT",
            DEP."DEPTID",
            DEP."CUST_CLASS",
            DEP."AFFILIATE",
            DEP."DISC_GIVEN_CALL_CODE_CODEBLOCK",
            DEP."TRANS_ACCT_CALL_CODE_CODEBLK",
            DEP."UMD_7",
            DEP."UMD_8",
            DEP."UMD_9",
            DEP."FILLER_1",
            DEP."FILLER_2",
            DEP."FILLER_3",
            DEP."FILLER_4",
            DEP."FILLER_5",
            DEP."FILLER_6",
            DEP."FILLER_7",
            DEP."FILLER_8",
            DEP."FILLER_9",
            DEP."FILLER_10",
            DEP."FILLER_11",
            DEP."FILLER_12",
            DEP."FILLER_13",
            DEP."FILLER_14",
            DEP."FILLER_15",
            DEP."FILLER_16",
            DEP."FILLER_17",
            DEP."FILLER_18",
            DEP."FILLER_19",
            DEP."FILLER_20",
            DEP."FILLER_21",
            DEP."FILLER_22",
            DEP."FILLER_23",
            DEP."FILLER_24",
            DEP."FILLER_25"
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
            RB_V_DEPOSITS DEP
            ON
              B.DATA_1 = DEP.MONTH_END_DATE
              AND B.TESTO_19 = DEP.REPORTING_ENTITY
              AND B.IMPORTO_1 = DEP.RB_ROWID
        WHERE
            A.COD_SCENARIO IN (${$Scenario.code})
            AND A.COD_PERIODO IN (${$Period.code})
            AND A.COD_AZIENDA IN (${$Entity.code})
            AND A.PROVENIENZA LIKE REPLACE(CASE WHEN ${B1} = 'RAL' THEN 'MAP_REP_' || ${A1} || '_' || SUBSTR(${B1},1,2) || '_%' ELSE 'MAP_REP_' || ${A1} || '_' || ${B1} || '_%' END, '-', '_')
            AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 3) = ${A1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 4) = ${B1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 7) IS NULL
            AND A.COD_CATEGORIA IN ('ORI_REP')
            AND B.COD_PROSPETTO = 'DEPOSITS'
      UNION ALL
      SELECT
            'ROUNDING' AS DATA_SOURCE,
            D.COD_CONTO AS COD_CONTO_REP,
            D.COD_SCENARIO,
            D.COD_PERIODO,
            NULL AS RB_ROWID,
            SCEN.DATA_FINE AS MONTH_END_DATE,
            NULL AS "BANK_NUMBER",
            NULL AS "ACCOUNT_DEPOSIT_CATEGORY_CODE",
            NULL AS "ACCOUNT_DEPOSIT_CATEGORY_DESC",
            NULL AS "ACCOUNT_TYPE_CODE",
            NULL AS "ACCOUNT_TYPE_DESCRIPTION",
            NULL AS "ACCOUNT_RETIREMENT_PLAN_TYPE",
            NULL AS "INSTRUMENT_ID",
            NULL AS "X_1",
            CASE
                WHEN SUBSTR(D.COD_DEST2, 1, 4) = 'BLC_'
                    THEN SUBSTR(D.COD_DEST2, 5)
                ELSE NULL
            END AS OPERATING_UNIT,
            NULL AS "BRANCH_NUMBER",
            NULL AS "CUSTOMER_NAME",
            CASE
                WHEN COALESCE(C.ATTRIBUTO1, 'BE') = 'BE'
                    THEN NULL
                ELSE D.IMPORTO * 1000
            END AS ACCOUNT_LEDGER_BALANCE,
            NULL AS "X_2",
            NULL AS "X_3",
            NULL AS "X_4",
            NULL AS "X_5",
            NULL AS "X_6",
            NULL AS "X_7",
            NULL AS "ACCT_AVG_YTD_LEDGER_BAL_AMT",
            NULL AS "X_8",
            NULL AS "X_9",
            NULL AS "ACCT_WAR_AVG_MTD_LGR_BAL",
            NULL AS "ACCT_CTD_INT_ACCRUAL",
            NULL AS "X_10",
            NULL AS "X_11",
            NULL AS "X_12",
            NULL AS "X_13",
            NULL AS "X_14",
            NULL AS "X_15",
            NULL AS "X_16",
            NULL AS "X_17",
            NULL AS "X_18",
            NULL AS "X_19",
            NULL AS "X_20",
            NULL AS "X_21",
            NULL AS "X_22",
            NULL AS "X_23",
            NULL AS "X_24",
            NULL AS "X_25",
            NULL AS "X_26",
            NULL AS "X_27",
            NULL AS "X_28",
            NULL AS "ACCT_INST_OPEN_DATE",
            NULL AS "X_29",
            NULL AS "X_30",
            NULL AS "X_31",
            NULL AS "ACCT_LAST_INT_DATE",
            NULL AS "X_32",
            NULL AS "X_33",
            NULL AS "X_34",
            NULL AS "ACCT_INST_CLOSED_DATE",
            NULL AS "X_35",
            NULL AS "X_36",
            NULL AS "X_37",
            NULL AS "X_38",
            NULL AS "X_39",
            NULL AS "MATURITY_DATE",
            NULL AS "X_40",
            NULL AS "X_41",
            NULL AS "X_42",
            NULL AS "X_43",
            NULL AS "X_44",
            NULL AS "X_45",
            NULL AS "X_46",
            NULL AS "X_47",
            NULL AS "X_48",
            NULL AS "X_49",
            NULL AS "X_50",
            NULL AS "X_51",
            NULL AS "X_52",
            NULL AS "X_53",
            NULL AS "X_54",
            NULL AS "X_55",
            NULL AS "X_56",
            NULL AS "X_57",
            NULL AS "X_58",
            NULL AS "X_59",
            NULL AS "X_60",
            NULL AS "X_61",
            NULL AS "X_62",
            NULL AS "X_63",
            NULL AS "X_64",
            NULL AS "X_65",
            NULL AS "X_66",
            NULL AS "X_67",
            NULL AS "X_68",
            NULL AS "X_69",
            NULL AS "X_70",
            NULL AS "X_71",
            NULL AS "X_72",
            NULL AS "X_73",
            NULL AS "X_74",
            NULL AS "X_75",
            D.COD_DEST5 AS "CALL_CODE",
            NULL AS "CALL_CODE_DESC",
            NULL AS "UMD_1",
            NULL AS "UMD_2",
            NULL AS "UMD_3",
            D.COD_VALUTA_ORIGINARIA AS CURRENCY_CODE,
            NULL AS "ORIGINATION_DATE",
            NULL AS "REMAINING_MATURITY_DAYS",
            NULL AS "MATURITY_BUCKETS",
            NULL AS "BROKERED_DEPOSITS",
            NULL AS "UNDER_OVER_BALANCE",
            NULL AS "TRANSACTION_NON_TRANSACTION_YN",
            NULL AS "INTEREST_BEARING_YN",
            NULL AS "UMD_4",
            NULL AS "UMD_5",
            NULL AS "UMD_6",
            NULL AS "REPORTING_ENTITY",
            NULL AS "INSTRUMENT",
            NULL AS "INTERCOMPANY",
            NULL AS "CONSOL_NODE",
            D.COD_AZIENDA AS BUSINESS_UNIT,
            NULL AS "GL_KEY_CODE",
            NULL AS "GL_KEY_CODE_DESC",
            D.COD_VALUTA AS CURRENCY_USQ,
            CASE
                WHEN COALESCE(C.ATTRIBUTO1, 'BE') = 'ALB'
                    THEN NULL
                ELSE D.IMPORTO * 1000
            END AS BASE_EQUIVALENT,
            NULL AS "PRINCIPAL_ORIG_CCY",
            NULL AS "DISCOUNT_GIVEN_ORIG_CCY",
            NULL AS "TRANS_ACCT_ORIG_CCY",
            NULL AS "PRINCIPAL_BASE_EQ",
            NULL AS "DISCOUNT_GIVEN_BASE_EQ",
            NULL AS "TRANS_ACCT_BASE_EQ",
            NULL AS "DISCOUNT_RECEIVED_ORIG_CCY",
            NULL AS "ACCRUED_INTEREST_ORIG_CCY",
            NULL AS "ACCRUED_INTEREST_ORIG_CCY_2",
            NULL AS "DISCOUNT_RECEIVED_BASE_EQ",
            NULL AS "ACCRUED_INTEREST_BASE_EQ",
            NULL AS "ACCRUED_INTEREST_BASE_EQ_2",
            NULL AS "INCOME_EXPENSE_ORIG_CCY_1",
            NULL AS "INCOME_EXPENSE_ORIG_CCY_2",
            NULL AS "INCOME_EXPENSE_ORIG_CCY_3",
            NULL AS "INCOME_EXPENSE_ORIG_CCY_4",
            NULL AS "INCOME_EXPENSE_ORIG_CCY_5",
            NULL AS "INCOME_EXPENSE_BASE_EQ_1",
            NULL AS "INCOME_EXPENSE_BASE_EQ_2",
            NULL AS "INCOME_EXPENSE_BASE_EQ_3",
            NULL AS "INCOME_EXPENSE_BASE_EQ_4",
            NULL AS "INCOME_EXPENSE_BASE_EQ_5",
            NULL AS "IRA_INDICATOR",
            NULL AS "FED_FUNDS_YN",
            NULL AS "UNDER_OVER_BALANCE_2",
            NULL AS "MATURITY_BUCKETS_2",
            NULL AS "MATURITY_BUCKETS_3",
            NULL AS "CUSTOMER_ID",
            NULL AS "CUSTOMER_TYPE",
            NULL AS "FOREIGN_DOMESTIC",
            NULL AS "COUNTRY_CODE",
            NULL AS "COUNTRY_DESC",
            NULL AS "CIF_TYPE",
            NULL AS "CIF_TYPE_DESCRIPTION",
            NULL AS "DEPO_NON-DEPO",
            D.NOTE AS SOURCE,
            NULL AS "IBF_DEPOSIT_COLUMN_YN",
            NULL AS "TRADE_ID",
            NULL AS "REPORTABLE_Y_N",
            D.COD_DEST1 AS ACCOUNT,
            D.COD_DEST3 AS PRODUCT,
            CASE
                WHEN SUBSTR(D.COD_DEST2, 1, 4) = 'DPT_'
                    THEN SUBSTR(D.COD_DEST2, 5)
                ELSE NULL
            END AS DEPTID,
            D.COD_DEST4 AS CUST_CLASS,
            NULL AS AFFILIATE,
            NULL AS "DISC_GIVEN_CALL_CODE_CODEBLOCK",
            NULL AS "TRANS_ACCT_CALL_CODE_CODEBLK",
            NULL AS "UMD_7",
            NULL AS "UMD_8",
            NULL AS "UMD_9",
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
                    FD.COD_PROSPETTO = 'DEPOSITS'
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
            NULL AS "BANK_NUMBER",
            NULL AS "ACCOUNT_DEPOSIT_CATEGORY_CODE",
            NULL AS "ACCOUNT_DEPOSIT_CATEGORY_DESC",
            NULL AS "ACCOUNT_TYPE_CODE",
            NULL AS "ACCOUNT_TYPE_DESCRIPTION",
            NULL AS "ACCOUNT_RETIREMENT_PLAN_TYPE",
            NULL AS "INSTRUMENT_ID",
            NULL AS "X_1",
            CASE
                WHEN SUBSTR(D.COD_DEST2, 1, 4) = 'BLC_'
                    THEN SUBSTR(D.COD_DEST2, 5)
                ELSE NULL
            END AS OPERATING_UNIT,
            NULL AS "BRANCH_NUMBER",
            NULL AS "CUSTOMER_NAME",
            CASE
                WHEN COALESCE(C.ATTRIBUTO1, 'BE') = 'BE'
                    THEN NULL
                ELSE D.IMPORTO * 1000
            END AS ACCOUNT_LEDGER_BALANCE,
            NULL AS "X_2",
            NULL AS "X_3",
            NULL AS "X_4",
            NULL AS "X_5",
            NULL AS "X_6",
            NULL AS "X_7",
            NULL AS "ACCT_AVG_YTD_LEDGER_BAL_AMT",
            NULL AS "X_8",
            NULL AS "X_9",
            NULL AS "ACCT_WAR_AVG_MTD_LGR_BAL",
            NULL AS "ACCT_CTD_INT_ACCRUAL",
            NULL AS "X_10",
            NULL AS "X_11",
            NULL AS "X_12",
            NULL AS "X_13",
            NULL AS "X_14",
            NULL AS "X_15",
            NULL AS "X_16",
            NULL AS "X_17",
            NULL AS "X_18",
            NULL AS "X_19",
            NULL AS "X_20",
            NULL AS "X_21",
            NULL AS "X_22",
            NULL AS "X_23",
            NULL AS "X_24",
            NULL AS "X_25",
            NULL AS "X_26",
            NULL AS "X_27",
            NULL AS "X_28",
            NULL AS "ACCT_INST_OPEN_DATE",
            NULL AS "X_29",
            NULL AS "X_30",
            NULL AS "X_31",
            NULL AS "ACCT_LAST_INT_DATE",
            NULL AS "X_32",
            NULL AS "X_33",
            NULL AS "X_34",
            NULL AS "ACCT_INST_CLOSED_DATE",
            NULL AS "X_35",
            NULL AS "X_36",
            NULL AS "X_37",
            NULL AS "X_38",
            NULL AS "X_39",
            NULL AS "MATURITY_DATE",
            NULL AS "X_40",
            NULL AS "X_41",
            NULL AS "X_42",
            NULL AS "X_43",
            NULL AS "X_44",
            NULL AS "X_45",
            NULL AS "X_46",
            NULL AS "X_47",
            NULL AS "X_48",
            NULL AS "X_49",
            NULL AS "X_50",
            NULL AS "X_51",
            NULL AS "X_52",
            NULL AS "X_53",
            NULL AS "X_54",
            NULL AS "X_55",
            NULL AS "X_56",
            NULL AS "X_57",
            NULL AS "X_58",
            NULL AS "X_59",
            NULL AS "X_60",
            NULL AS "X_61",
            NULL AS "X_62",
            NULL AS "X_63",
            NULL AS "X_64",
            NULL AS "X_65",
            NULL AS "X_66",
            NULL AS "X_67",
            NULL AS "X_68",
            NULL AS "X_69",
            NULL AS "X_70",
            NULL AS "X_71",
            NULL AS "X_72",
            NULL AS "X_73",
            NULL AS "X_74",
            NULL AS "X_75",
            D.COD_DEST5 AS "CALL_CODE",
            NULL AS "CALL_CODE_DESC",
            NULL AS "UMD_1",
            NULL AS "UMD_2",
            NULL AS "UMD_3",
            D.COD_VALUTA_ORIGINARIA AS CURRENCY_CODE,
            NULL AS "ORIGINATION_DATE",
            NULL AS "REMAINING_MATURITY_DAYS",
            NULL AS "MATURITY_BUCKETS",
            NULL AS "BROKERED_DEPOSITS",
            NULL AS "UNDER_OVER_BALANCE",
            NULL AS "TRANSACTION_NON_TRANSACTION_YN",
            NULL AS "INTEREST_BEARING_YN",
            NULL AS "UMD_4",
            NULL AS "UMD_5",
            NULL AS "UMD_6",
            NULL AS "REPORTING_ENTITY",
            NULL AS "INSTRUMENT",
            NULL AS "INTERCOMPANY",
            NULL AS "CONSOL_NODE",
            D.COD_AZIENDA AS BUSINESS_UNIT,
            NULL AS "GL_KEY_CODE",
            NULL AS "GL_KEY_CODE_DESC",
            D.COD_VALUTA AS CURRENCY_USQ,
            CASE
                WHEN COALESCE(C.ATTRIBUTO1, 'BE') = 'ALB'
                    THEN NULL
                ELSE D.IMPORTO * 1000
            END AS BASE_EQUIVALENT,
            NULL AS "PRINCIPAL_ORIG_CCY",
            NULL AS "DISCOUNT_GIVEN_ORIG_CCY",
            NULL AS "TRANS_ACCT_ORIG_CCY",
            NULL AS "PRINCIPAL_BASE_EQ",
            NULL AS "DISCOUNT_GIVEN_BASE_EQ",
            NULL AS "TRANS_ACCT_BASE_EQ",
            NULL AS "DISCOUNT_RECEIVED_ORIG_CCY",
            NULL AS "ACCRUED_INTEREST_ORIG_CCY",
            NULL AS "ACCRUED_INTEREST_ORIG_CCY_2",
            NULL AS "DISCOUNT_RECEIVED_BASE_EQ",
            NULL AS "ACCRUED_INTEREST_BASE_EQ",
            NULL AS "ACCRUED_INTEREST_BASE_EQ_2",
            NULL AS "INCOME_EXPENSE_ORIG_CCY_1",
            NULL AS "INCOME_EXPENSE_ORIG_CCY_2",
            NULL AS "INCOME_EXPENSE_ORIG_CCY_3",
            NULL AS "INCOME_EXPENSE_ORIG_CCY_4",
            NULL AS "INCOME_EXPENSE_ORIG_CCY_5",
            NULL AS "INCOME_EXPENSE_BASE_EQ_1",
            NULL AS "INCOME_EXPENSE_BASE_EQ_2",
            NULL AS "INCOME_EXPENSE_BASE_EQ_3",
            NULL AS "INCOME_EXPENSE_BASE_EQ_4",
            NULL AS "INCOME_EXPENSE_BASE_EQ_5",
            NULL AS "IRA_INDICATOR",
            NULL AS "FED_FUNDS_YN",
            NULL AS "UNDER_OVER_BALANCE_2",
            NULL AS "MATURITY_BUCKETS_2",
            NULL AS "MATURITY_BUCKETS_3",
            NULL AS "CUSTOMER_ID",
            NULL AS "CUSTOMER_TYPE",
            NULL AS "FOREIGN_DOMESTIC",
            NULL AS "COUNTRY_CODE",
            NULL AS "COUNTRY_DESC",
            NULL AS "CIF_TYPE",
            NULL AS "CIF_TYPE_DESCRIPTION",
            NULL AS "DEPO_NON-DEPO",
            D.NOTE AS SOURCE,
            NULL AS "IBF_DEPOSIT_COLUMN_YN",
            NULL AS "TRADE_ID",
            NULL AS "REPORTABLE_Y_N",
            D.COD_DEST1 AS ACCOUNT,
            D.COD_DEST3 AS PRODUCT,
            CASE
                WHEN SUBSTR(D.COD_DEST2, 1, 4) = 'DPT_'
                    THEN SUBSTR(D.COD_DEST2, 5)
                ELSE NULL
            END AS DEPTID,
            D.COD_DEST4 AS CUST_CLASS,
            NULL AS AFFILIATE,
            NULL AS "DISC_GIVEN_CALL_CODE_CODEBLOCK",
            NULL AS "TRANS_ACCT_CALL_CODE_CODEBLK",
            NULL AS "UMD_7",
            NULL AS "UMD_8",
            NULL AS "UMD_9",
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
                    FD.COD_PROSPETTO = 'DEPOSITS'
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