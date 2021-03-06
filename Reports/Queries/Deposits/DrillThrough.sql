SELECT
    FD.COD_PROSPETTO AS COD_TAPE,
    CAST(DATA.RB_ROWID AS VARCHAR2(255)) AS RB_ROWID,
    DATA."MONTH_END_DATE",
    DATA."BANK_NUMBER",
    DATA."ACCOUNT_DEPOSIT_CATEGORY_CODE",
    DATA."ACCOUNT_DEPOSIT_CATEGORY_DESC",
    DATA."ACCOUNT_TYPE_CODE",
    DATA."ACCOUNT_TYPE_DESCRIPTION",
    DATA."ACCOUNT_RETIREMENT_PLAN_TYPE",
    DATA."INSTRUMENT_ID",
    DATA."X_1",
    DATA."OPERATING_UNIT",
    DATA."BRANCH_NUMBER",
    DATA."CUSTOMER_NAME",
    DATA."ACCOUNT_LEDGER_BALANCE",
    DATA."X_2",
    DATA."X_3",
    DATA."X_4",
    DATA."X_5",
    DATA."X_6",
    DATA."X_7",
    DATA."ACCT_AVG_YTD_LEDGER_BAL_AMT",
    DATA."X_8",
    DATA."X_9",
    DATA."ACCT_WAR_AVG_MTD_LGR_BAL",
    DATA."ACCT_CTD_INT_ACCRUAL",
    DATA."X_10",
    DATA."X_11",
    DATA."X_12",
    DATA."X_13",
    DATA."X_14",
    DATA."X_15",
    DATA."X_16",
    DATA."X_17",
    DATA."X_18",
    DATA."X_19",
    DATA."X_20",
    DATA."X_21",
    DATA."X_22",
    DATA."X_23",
    DATA."X_24",
    DATA."X_25",
    DATA."X_26",
    DATA."X_27",
    DATA."X_28",
    DATA."ACCT_INST_OPEN_DATE",
    DATA."X_29",
    DATA."X_30",
    DATA."X_31",
    DATA."ACCT_LAST_INT_DATE",
    DATA."X_32",
    DATA."X_33",
    DATA."X_34",
    DATA."ACCT_INST_CLOSED_DATE",
    DATA."X_35",
    DATA."X_36",
    DATA."X_37",
    DATA."X_38",
    DATA."X_39",
    DATA."MATURITY_DATE",
    DATA."X_40",
    DATA."X_41",
    DATA."X_42",
    DATA."X_43",
    DATA."X_44",
    DATA."X_45",
    DATA."X_46",
    DATA."X_47",
    DATA."X_48",
    DATA."X_49",
    DATA."X_50",
    DATA."X_51",
    DATA."X_52",
    DATA."X_53",
    DATA."X_54",
    DATA."X_55",
    DATA."X_56",
    DATA."X_57",
    DATA."X_58",
    DATA."X_59",
    DATA."X_60",
    DATA."X_61",
    DATA."X_62",
    DATA."X_63",
    DATA."X_64",
    DATA."X_65",
    DATA."X_66",
    DATA."X_67",
    DATA."X_68",
    DATA."X_69",
    DATA."X_70",
    DATA."X_71",
    DATA."X_72",
    DATA."X_73",
    DATA."X_74",
    DATA."X_75",
    DATA."CALL_CODE",
    DATA."CALL_CODE_DESC",
    DATA."UMD_1",
    DATA."UMD_2",
    DATA."UMD_3",
    DATA."CURRENCY_CODE",
    DATA."ORIGINATION_DATE",
    DATA."REMAINING_MATURITY_DAYS",
    DATA."MATURITY_BUCKETS",
    DATA."BROKERED_DEPOSITS",
    DATA."UNDER_OVER_BALANCE",
    DATA."TRANSACTION_NON_TRANSACTION_YN",
    DATA."INTEREST_BEARING_YN",
    DATA."UMD_4",
    DATA."UMD_5",
    DATA."UMD_6",
    DATA."REPORTING_ENTITY",
    DATA."INSTRUMENT",
    DATA."INTERCOMPANY",
    DATA."CONSOL_NODE",
    DATA."BUSINESS_UNIT",
    DATA."GL_KEY_CODE",
    DATA."GL_KEY_CODE_DESC",
    DATA."CURRENCY_USQ",
    DATA."BASE_EQUIVALENT",
    DATA."PRINCIPAL_ORIG_CCY",
    DATA."DISCOUNT_GIVEN_ORIG_CCY",
    DATA."TRANS_ACCT_ORIG_CCY",
    DATA."PRINCIPAL_BASE_EQ",
    DATA."DISCOUNT_GIVEN_BASE_EQ",
    DATA."TRANS_ACCT_BASE_EQ",
    DATA."DISCOUNT_RECEIVED_ORIG_CCY",
    DATA."ACCRUED_INTEREST_ORIG_CCY",
    DATA."ACCRUED_INTEREST_ORIG_CCY_2",
    DATA."DISCOUNT_RECEIVED_BASE_EQ",
    DATA."ACCRUED_INTEREST_BASE_EQ",
    DATA."ACCRUED_INTEREST_BASE_EQ_2",
    DATA."INCOME_EXPENSE_ORIG_CCY_1",
    DATA."INCOME_EXPENSE_ORIG_CCY_2",
    DATA."INCOME_EXPENSE_ORIG_CCY_3",
    DATA."INCOME_EXPENSE_ORIG_CCY_4",
    DATA."INCOME_EXPENSE_ORIG_CCY_5",
    DATA."INCOME_EXPENSE_BASE_EQ_1",
    DATA."INCOME_EXPENSE_BASE_EQ_2",
    DATA."INCOME_EXPENSE_BASE_EQ_3",
    DATA."INCOME_EXPENSE_BASE_EQ_4",
    DATA."INCOME_EXPENSE_BASE_EQ_5",
    DATA."IRA_INDICATOR",
    DATA."FED_FUNDS_YN",
    DATA."UNDER_OVER_BALANCE_2",
    DATA."MATURITY_BUCKETS_2",
    DATA."MATURITY_BUCKETS_3",
    DATA."CUSTOMER_ID",
    DATA."CUSTOMER_TYPE",
    DATA."FOREIGN_DOMESTIC",
    DATA."COUNTRY_CODE",
    DATA."COUNTRY_DESC",
    DATA."CIF_TYPE",
    DATA."CIF_TYPE_DESCRIPTION",
    DATA."DEPO_NON-DEPO",
    DATA."SOURCE",
    DATA."IBF_DEPOSIT_COLUMN_YN",
    DATA."TRADE_ID",
    DATA."REPORTABLE_Y_N",
    DATA."ACCOUNT",
    DATA."PRODUCT",
    DATA."DEPTID",
    DATA."CUST_CLASS",
    DATA."AFFILIATE",
    DATA."DISC_GIVEN_CALL_CODE_CODEBLOCK",
    DATA."TRANS_ACCT_CALL_CODE_CODEBLK",
    DATA."UMD_7",
    DATA."UMD_8",
    DATA."UMD_9",
    DATA."FILLER_1",
    DATA."FILLER_2",
    DATA."FILLER_3",
    DATA."FILLER_4",
    DATA."FILLER_5",
    DATA."FILLER_6",
    DATA."FILLER_7",
    DATA."FILLER_8",
    DATA."FILLER_9",
    DATA."FILLER_10",
    DATA."FILLER_11",
    DATA."FILLER_12",
    DATA."FILLER_13",
    DATA."FILLER_14",
    DATA."FILLER_15",
    DATA."FILLER_16",
    DATA."FILLER_17",
    DATA."FILLER_18",
    DATA."FILLER_19",
    DATA."FILLER_20",
    DATA."FILLER_21",
    DATA."FILLER_22",
    DATA."FILLER_23",
    DATA."FILLER_24",
    DATA."FILLER_25",
    ${CONCATENATE($Account.code, " (", PARENT($Account(HIERARCHY("RE"))).code, " - ", PARENT($Account(HIERARCHY("RE"))).desc, ": ", $Account.attribute4, " - ", $Account.attribute5, ")")} AS LINE_ITEM
FROM
  RB_DRILL_INSTRUMENT DRILL
  INNER JOIN
  FORM_DATI FD
  ON
    DRILL.OID_FORM_DATI = FD.OID_FORM_DATI
  INNER JOIN
  RB_V_DEPOSITS DATA
  ON
    FD.DATA_1 = DATA.MONTH_END_DATE
    AND FD.TESTO_19 = DATA.REPORTING_ENTITY
    AND FD.IMPORTO_1 = DATA.RB_ROWID
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
UNION ALL
SELECT
    'ADJUSTMENTS' AS COD_TAPE,
    DATA.NUM_RETTIFICA AS RB_ROWID,
    SP.DATA_FINE AS MONTH_END_DATE,
    NULL AS "BANK_NUMBER",
    NULL AS "ACCOUNT_DEPOSIT_CATEGORY_CODE",
    NULL AS "ACCOUNT_DEPOSIT_CATEGORY_DESC",
    NULL AS "ACCOUNT_TYPE_CODE",
    NULL AS "ACCOUNT_TYPE_DESCRIPTION",
    NULL AS "ACCOUNT_RETIREMENT_PLAN_TYPE",
    NULL AS "INSTRUMENT_ID",
    NULL AS "X_1",
    CASE
        WHEN SUBSTR(DATA.COD_DEST2, 1, 4) = 'BLC_'
            THEN SUBSTR(DATA.COD_DEST2, 5)
        ELSE NULL
    END AS OPERATING_UNIT,
    NULL AS "BRANCH_NUMBER",
    NULL AS "CUSTOMER_NAME",
    CASE
        WHEN COALESCE(C.ATTRIBUTO1, 'BE') = 'BE'
            THEN NULL
        ELSE DATA.IMPORTO2 * 1000
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
    DATA.COD_DEST5 AS "CALL_CODE",
    NULL AS "CALL_CODE_DESC",
    NULL AS "UMD_1",
    NULL AS "UMD_2",
    NULL AS "UMD_3",
    DATA.COD_VALUTA2 AS CURRENCY_CODE,
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
    DATA.COD_AZIENDA AS BUSINESS_UNIT,
    NULL AS "GL_KEY_CODE",
    NULL AS "GL_KEY_CODE_DESC",
    DATA.COD_VALUTA AS CURRENCY_USQ,
    CASE
        WHEN COALESCE(C.ATTRIBUTO1, 'BE') = 'ALB'
            THEN NULL
        ELSE DATA.IMPORTO2 * 1000
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
    A.NOTE AS SOURCE,
    NULL AS "IBF_DEPOSIT_COLUMN_YN",
    NULL AS "TRADE_ID",
    NULL AS "REPORTABLE_Y_N",
    DATA.COD_DEST1 AS ACCOUNT,
    DATA.COD_DEST3 AS PRODUCT,
    CASE
        WHEN SUBSTR(DATA.COD_DEST2, 1, 4) = 'DPT_'
            THEN SUBSTR(DATA.COD_DEST2, 5)
        ELSE NULL
    END AS DEPTID,
    DATA.COD_DEST4 AS CUST_CLASS,
    DATA.COD_AZI_CTP AS AFFILIATE,
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
    NULL AS "FILLER_25",
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
    LEFT OUTER JOIN
    CONTO C
    ON
        DATA.COD_CONTO = C.COD_CONTO
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