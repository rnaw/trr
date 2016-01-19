--------------------------------------------------------
--  DDL for View RB_V_HST_DEPOSITS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "RB_V_HST_DEPOSITS" (
"MONTH_END_DATE",
"BANK_NUMBER",
"ACCOUNT_DEPOSIT_CATEGORY_CODE",
"ACCOUNT_DEPOSIT_CATEGORY_DESC",
"ACCOUNT_TYPE_CODE",
"ACCOUNT_TYPE_DESCRIPTION",
"ACCOUNT_RETIREMENT_PLAN_TYPE",
"INSTRUMENT_ID",
"X_1",
"OPERATING_UNIT",
"BRANCH NUMBER",
"CUSTOMER_NAME",
"ACCOUNT_LEDGER_BALANCE",
"X_2",
"X_3",
"X_4",
"X_5",
"X_6",
"X_7",
"ACCT_AVG_YTD_LEDGER_BAL_AMT",
"X_8",
"X_9",
"ACCT_WAR_AVG_MTD_LGR_BAL",
"ACCT_CTD_INT_ACCRUAL",
"X_10",
"X_11",
"X_12",
"X_13",
"X_14",
"X_15",
"X_16",
"X_17",
"X_18",
"X_19",
"X_20",
"X_21",
"X_22",
"X_23",
"X_24",
"X_25",
"X_26",
"X_27",
"X_28",
"ACCT_INST_OPEN_DATE",
"X_29",
"X_30",
"X_31",
"ACCT_LAST_INT_DATE",
"X_32",
"X_33",
"X_34",
"ACCT_INST_CLOSED_DATE",
"X_35",
"X_36",
"X_37",
"X_38",
"X_39",
"MATURITY_DATE",
"X_40",
"X_41",
"X_42",
"X_43",
"X_44",
"X_45",
"X_46",
"X_47",
"X_48",
"X_49",
"X_50",
"X_51",
"X_52",
"X_53",
"X_54",
"X_55",
"X_56",
"X_57",
"X_58",
"X_59",
"X_60",
"X_61",
"X_62",
"X_63",
"X_64",
"X_65",
"X_66",
"X_67",
"X_68",
"X_69",
"X_70",
"X_71",
"X_72",
"X_73",
"X_74",
"X_75",
"CALL_CODE",
"CALL_CODE_DESC",
"UMD_1",
"UMD_2",
"UMD_3",
"CURRENCY_CODE",
"ORIGINATION_DATE",
"REMAINING_MATURITY_DAYS",
"MATURITY_BUCKETS",
"BROKERED_DEPOSITS",
"UNDER_OVER_BALANCE",
"TRANSACTION_NON_TRANSACTION_YN",
"INTEREST_BEARING_YN",
"UMD_4",
"UMD_5",
"UMD_6",
"RB_ROWID",
"REPORTING_ENTITY",
"INSTRUMENT",
"INTERCOMPANY",
"CONSOL_NODE",
"BUSINESS_UNIT",
"GL_KEY_CODE",
"GL_KEY_CODE_DESC",
"CURRENCY_USQ",
"BASE_EQUIVALENT",
"PRINCIPAL_ORIG_CCY",
"DISCOUNT_GIVEN_ORIG_CCY",
"TRANS_ACCT_ORIG_CCY",
"PRINCIPAL_BASE_EQ",
"DISCOUNT_GIVEN_BASE_EQ",
"TRANS_ACCT_BASE_EQ",
"DISCOUNT_RECEIVED_ORIG_CCY",
"ACCRUED_INTEREST_ORIG_CCY",
"ACCRUED_INTEREST_ORIG_CCY_2",
"DISCOUNT_RECEIVED_BASE_EQ",
"ACCRUED_INTEREST_BASE_EQ",
"ACCRUED_INTEREST_BASE_EQ_2",
"INCOME_EXPENSE_ORIG_CCY_1",
"INCOME_EXPENSE_ORIG_CCY_2",
"INCOME_EXPENSE_ORIG_CCY_3",
"INCOME_EXPENSE_ORIG_CCY_4",
"INCOME_EXPENSE_ORIG_CCY_5",
"INCOME_EXPENSE_BASE_EQ_1",
"INCOME_EXPENSE_BASE_EQ_2",
"INCOME_EXPENSE_BASE_EQ_3",
"INCOME_EXPENSE_BASE_EQ_4",
"INCOME_EXPENSE_BASE_EQ_5",
"IRA_INDICATOR",
"FED_FUNDS_YN",
"UNDER_OVER_BALANCE_2",
"MATURITY_BUCKETS_2",
"MATURITY_BUCKETS_3",
"CUSTOMER_ID",
"CUSTOMER_TYPE",
"FOREIGN_DOMESTIC",
"COUNTRY_CODE",
"COUNTRY_DESC",
"CIF_TYPE",
"CIF_TYPE_DESCRIPTION",
"DEPO_NON-DEPO",
"SOURCE",
"IBF_DEPOSIT_COLUMN_YN",
"TRADE_ID",
"REPORTABLE_Y_N",
"ACCOUNT",
"PRODUCT",
"DEPTID",
"CUST_CLASS",
"AFFILIATE",
"DISC_GIVEN_CALL_CODE_CODEBLOCK",
"TRANS_ACCT_CALL_CODE_CODEBLK",
"UMD_7",
"UMD_8",
"UMD_9",
"FILLER_1",
"FILLER_2",
"FILLER_3",
"FILLER_4",
"FILLER_5",
"FILLER_6",
"FILLER_7",
"FILLER_8",
"FILLER_9",
"FILLER_10",
"FILLER_11",
"FILLER_12",
"FILLER_13",
"FILLER_14",
"FILLER_15",
"FILLER_16",
"FILLER_17",
"FILLER_18",
"FILLER_19",
"FILLER_20",
"FILLER_21",
"FILLER_22",
"FILLER_23",
"FILLER_24",
"FILLER_25",
PROVENIENZA,
USERUPD,
DATEUPD
) AS 
  SELECT
TO_DATE(KEYS."MONTH_END_DATE", 'MMDDYYYY') AS "MONTH_END_DATE",
CAST(DATA02."BANK_NUMBER" AS VARCHAR2(6)) AS "BANK_NUMBER",
CAST(DATA02."ACCOUNT_DEPOSIT_CATEGORY_CODE" AS VARCHAR2(3)) AS "ACCOUNT_DEPOSIT_CATEGORY_CODE",
CAST(DATA01."ACCOUNT_DEPOSIT_CATEGORY_DESC" AS VARCHAR2(25)) AS "ACCOUNT_DEPOSIT_CATEGORY_DESC",
CAST(DATA02."ACCOUNT_TYPE_CODE" AS VARCHAR2(3)) AS "ACCOUNT_TYPE_CODE",
CAST(DATA01."ACCOUNT_TYPE_DESCRIPTION" AS VARCHAR2(50)) AS "ACCOUNT_TYPE_DESCRIPTION",
CAST(DATA02."ACCOUNT_RETIREMENT_PLAN_TYPE" AS VARCHAR2(3)) AS "ACCOUNT_RETIREMENT_PLAN_TYPE",
CAST(DATA01."INSTRUMENT_ID" AS VARCHAR2(30)) AS "INSTRUMENT_ID",
CAST(DATA01."X_1" AS VARCHAR2(15)) AS "X_1",
CAST(DATA02."OPERATING_UNIT" AS VARCHAR2(10)) AS "OPERATING_UNIT",
CAST(DATA02."BRANCH NUMBER" AS VARCHAR2(10)) AS "BRANCH NUMBER",
CAST(DATA01."CUSTOMER_NAME" AS VARCHAR2(150)) AS "CUSTOMER_NAME",
CAST(DATA01."ACCOUNT_LEDGER_BALANCE" AS NUMBER(23,3)) AS "ACCOUNT_LEDGER_BALANCE",
CAST(DATA01."X_2" AS NUMBER(23,3)) AS "X_2",
CAST(DATA01."X_3" AS NUMBER(23,3)) AS "X_3",
CAST(DATA01."X_4" AS NUMBER(23,3)) AS "X_4",
CAST(DATA01."X_5" AS NUMBER(23,3)) AS "X_5",
CAST(DATA01."X_6" AS NUMBER(23,3)) AS "X_6",
CAST(DATA01."X_7" AS NUMBER(23,3)) AS "X_7",
CAST(DATA01."ACCT_AVG_YTD_LEDGER_BAL_AMT" AS NUMBER(23,3)) AS "ACCT_AVG_YTD_LEDGER_BAL_AMT",
CAST(DATA01."X_8" AS NUMBER(23,3)) AS "X_8",
CAST(DATA01."X_9" AS NUMBER(23,3)) AS "X_9",
CAST(DATA01."ACCT_WAR_AVG_MTD_LGR_BAL" AS NUMBER(23,3)) AS "ACCT_WAR_AVG_MTD_LGR_BAL",
CAST(DATA01."ACCT_CTD_INT_ACCRUAL" AS NUMBER(23,3)) AS "ACCT_CTD_INT_ACCRUAL",
CAST(DATA01."X_10" AS NUMBER(23,3)) AS "X_10",
CAST(DATA01."X_11" AS NUMBER(23,3)) AS "X_11",
CAST(DATA01."X_12" AS NUMBER(23,3)) AS "X_12",
CAST(DATA01."X_13" AS NUMBER(23,3)) AS "X_13",
CAST(DATA01."X_14" AS NUMBER(23,3)) AS "X_14",
CAST(DATA01."X_15" AS NUMBER(23,3)) AS "X_15",
CAST(DATA01."X_16" AS NUMBER(23,3)) AS "X_16",
CAST(DATA01."X_17" AS NUMBER(23,3)) AS "X_17",
CAST(DATA01."X_18" AS NUMBER(23,3)) AS "X_18",
CAST(DATA01."X_19" AS NUMBER(23,3)) AS "X_19",
CAST(DATA01."X_20" AS NUMBER(23,3)) AS "X_20",
CAST(DATA01."X_21" AS NUMBER(23,3)) AS "X_21",
CAST(DATA01."X_22" AS NUMBER(23,3)) AS "X_22",
CAST(DATA02."X_23" AS VARCHAR2(10)) AS "X_23",
CAST(DATA02."X_24" AS VARCHAR2(10)) AS "X_24",
CAST(DATA02."X_25" AS VARCHAR2(10)) AS "X_25",
CAST(DATA02."X_26" AS VARCHAR2(3)) AS "X_26",
CAST(DATA02."X_27" AS VARCHAR2(3)) AS "X_27",
TO_DATE(DATA02."X_28", 'MMDDYYYY') AS "X_28",
TO_DATE(DATA02."ACCT_INST_OPEN_DATE", 'MMDDYYYY') AS "ACCT_INST_OPEN_DATE",
TO_DATE(DATA02."X_29", 'MMDDYYYY') AS "X_29",
TO_DATE(DATA02."X_30", 'MMDDYYYY') AS "X_30",
TO_DATE(DATA02."X_31", 'MMDDYYYY') AS "X_31",
TO_DATE(DATA02."ACCT_LAST_INT_DATE", 'MMDDYYYY') AS "ACCT_LAST_INT_DATE",
TO_DATE(DATA02."X_32", 'MMDDYYYY') AS "X_32",
TO_DATE(DATA02."X_33", 'MMDDYYYY') AS "X_33",
CAST(DATA02."X_34" AS VARCHAR2(10)) AS "X_34",
TO_DATE(DATA02."ACCT_INST_CLOSED_DATE", 'MMDDYYYY') AS "ACCT_INST_CLOSED_DATE",
TO_DATE(DATA02."X_35", 'MMDDYYYY') AS "X_35",
TO_DATE(DATA02."X_36", 'MMDDYYYY') AS "X_36",
TO_DATE(DATA02."X_37", 'MMDDYYYY') AS "X_37",
TO_DATE(DATA02."X_38", 'MMDDYYYY') AS "X_38",
CAST(DATA02."X_39" AS VARCHAR2(10)) AS "X_39",
TO_DATE(DATA02."MATURITY_DATE", 'MMDDYYYY') AS "MATURITY_DATE",
TO_DATE(DATA02."X_40", 'MMDDYYYY') AS "X_40",
TO_DATE(DATA02."X_41", 'MMDDYYYY') AS "X_41",
CAST(DATA02."X_42" AS VARCHAR2(3)) AS "X_42",
CAST(DATA02."X_43" AS VARCHAR2(5)) AS "X_43",
CAST(DATA02."X_44" AS VARCHAR2(3)) AS "X_44",
TO_DATE(DATA02."X_45", 'MMDDYYYY') AS "X_45",
TO_DATE(DATA02."X_46", 'MMDDYYYY') AS "X_46",
CAST(DATA02."X_47" AS VARCHAR2(10)) AS "X_47",
TO_DATE(DATA02."X_48", 'MMDDYYYY') AS "X_48",
CAST(DATA02."X_49" AS VARCHAR2(10)) AS "X_49",
CAST(DATA02."X_50" AS VARCHAR2(10)) AS "X_50",
CAST(DATA02."X_51" AS VARCHAR2(3)) AS "X_51",
CAST(DATA02."X_52" AS VARCHAR2(3)) AS "X_52",
CAST(DATA02."X_53" AS VARCHAR2(10)) AS "X_53",
CAST(DATA02."X_54" AS VARCHAR2(5)) AS "X_54",
CAST(DATA02."X_55" AS VARCHAR2(3)) AS "X_55",
CAST(DATA02."X_56" AS VARCHAR2(3)) AS "X_56",
CAST(DATA02."X_57" AS VARCHAR2(3)) AS "X_57",
CAST(DATA02."X_58" AS VARCHAR2(5)) AS "X_58",
CAST(DATA02."X_59" AS VARCHAR2(5)) AS "X_59",
CAST(DATA02."X_60" AS VARCHAR2(3)) AS "X_60",
CAST(DATA01."X_61" AS VARCHAR2(50)) AS "X_61",
CAST(DATA01."X_62" AS VARCHAR2(50)) AS "X_62",
CAST(DATA01."X_63" AS VARCHAR2(10)) AS "X_63",
CAST(DATA01."X_64" AS VARCHAR2(50)) AS "X_64",
CAST(DATA01."X_65" AS VARCHAR2(50)) AS "X_65",
CAST(DATA02."X_66" AS VARCHAR2(10)) AS "X_66",
CAST(DATA02."X_67" AS VARCHAR2(10)) AS "X_67",
CAST(DATA02."X_68" AS VARCHAR2(10)) AS "X_68",
CAST(DATA02."X_69" AS VARCHAR2(10)) AS "X_69",
CAST(DATA02."X_70" AS VARCHAR2(10)) AS "X_70",
CAST(DATA01."X_71" AS VARCHAR2(150)) AS "X_71",
CAST(DATA02."X_72" AS VARCHAR2(10)) AS "X_72",
CAST(DATA01."X_73" AS NUMBER(23,3)) AS "X_73",
CAST(DATA02."X_74" AS VARCHAR2(10)) AS "X_74",
CAST(DATA02."X_75" AS VARCHAR2(10)) AS "X_75",
CAST(DATA01."CALL_CODE" AS VARCHAR2(15)) AS "CALL_CODE",
CAST(DATA01."CALL_CODE_DESC" AS VARCHAR2(150)) AS "CALL_CODE_DESC",
CAST(REPLACE(DATA01."UMD_1", ',', '') AS NUMBER(23,3)) AS "UMD_1",
CAST(REPLACE(DATA01."UMD_2", ',', '') AS NUMBER(23,3)) AS "UMD_2",
CAST(REPLACE(DATA01."UMD_3", ',', '') AS NUMBER(23,3)) AS "UMD_3",
CAST(DATA02."CURRENCY_CODE" AS VARCHAR2(3)) AS "CURRENCY_CODE",
TO_DATE(DATA02."ORIGINATION_DATE", 'MMDDYYYY') AS "ORIGINATION_DATE",
CAST(DATA01."REMAINING_MATURITY_DAYS" AS NUMBER(23,0)) AS "REMAINING_MATURITY_DAYS",
CAST(DATA01."MATURITY_BUCKETS" AS VARCHAR2(50)) AS "MATURITY_BUCKETS",
CAST(DATA02."BROKERED_DEPOSITS" AS VARCHAR2(10)) AS "BROKERED_DEPOSITS",
CAST(DATA01."UNDER_OVER_BALANCE" AS VARCHAR2(50)) AS "UNDER_OVER_BALANCE",
CAST(DATA02."TRANSACTION_NON_TRANSACTION_YN" AS VARCHAR2(3)) AS "TRANSACTION_NON_TRANSACTION_YN",
CAST(DATA02."INTEREST_BEARING_YN" AS VARCHAR2(3)) AS "INTEREST_BEARING_YN",
CAST(DATA01."UMD_4" AS NUMBER(23,3)) AS "UMD_4",
CAST(DATA01."UMD_5" AS NUMBER(23,3)) AS "UMD_5",
CAST(DATA01."UMD_6" AS VARCHAR2(250)) AS "UMD_6",
CAST(KEYS."RB_ROWID" AS NUMBER) AS "RB_ROWID",
CAST(KEYS."REPORTING_ENTITY" AS VARCHAR2(6)) AS "REPORTING_ENTITY",
CAST(DATA01."INSTRUMENT" AS VARCHAR2(27)) AS "INSTRUMENT",
CAST(DATA01."INTERCOMPANY" AS VARCHAR2(15)) AS "INTERCOMPANY",
CAST(DATA01."CONSOL_NODE" AS VARCHAR2(20)) AS "CONSOL_NODE",
CAST(DATA01.”BUSINESS_UNIT" AS VARCHAR2(5)) AS "BUSINESS_UNIT",
CAST(DATA01."GL_KEY_CODE" AS VARCHAR2(15)) AS "GL_KEY_CODE",
CAST(DATA01."GL_KEY_CODE_DESC" AS VARCHAR2(150)) AS "GL_KEY_CODE_DESC",
CAST(DATA02."CURRENCY_USQ" AS VARCHAR2(3)) AS "CURRENCY_USQ",
CAST(DATA01."BASE_EQUIVALENT" AS NUMBER(23,3)) AS "BASE_EQUIVALENT",
CAST(DATA01."PRINCIPAL_ORIG_CCY" AS NUMBER(23,3)) AS "PRINCIPAL_ORIG_CCY",
CAST(DATA01."DISCOUNT_GIVEN_ORIG_CCY" AS NUMBER(23,3)) AS "DISCOUNT_GIVEN_ORIG_CCY",
CAST(DATA01."TRANS_ACCT_ORIG_CCY" AS NUMBER(23,3)) AS "TRANS_ACCT_ORIG_CCY",
CAST(DATA01."PRINCIPAL_BASE_EQ" AS NUMBER(23,3)) AS "PRINCIPAL_BASE_EQ",
CAST(DATA01."DISCOUNT_GIVEN_BASE_EQ" AS NUMBER(23,3)) AS "DISCOUNT_GIVEN_BASE_EQ",
CAST(DATA01."TRANS_ACCT_BASE_EQ" AS NUMBER(23,3)) AS "TRANS_ACCT_BASE_EQ",
CAST(DATA01."DISCOUNT_RECEIVED_ORIG_CCY" AS NUMBER(23,3)) AS "DISCOUNT_RECEIVED_ORIG_CCY",
CAST(DATA01."ACCRUED_INTEREST_ORIG_CCY" AS NUMBER(23,3)) AS "ACCRUED_INTEREST_ORIG_CCY",
CAST(DATA01."ACCRUED_INTEREST_ORIG_CCY_2" AS NUMBER(23,3)) AS "ACCRUED_INTEREST_ORIG_CCY_2",
CAST(DATA01."DISCOUNT_RECEIVED_BASE_EQ" AS NUMBER(23,3)) AS "DISCOUNT_RECEIVED_BASE_EQ",
CAST(DATA01."ACCRUED_INTEREST_BASE_EQ" AS NUMBER(23,3)) AS "ACCRUED_INTEREST_BASE_EQ",
CAST(DATA01."ACCRUED_INTEREST_BASE_EQ_2" AS NUMBER(23,3)) AS "ACCRUED_INTEREST_BASE_EQ_2",
CAST(DATA01."INCOME_EXPENSE_ORIG_CCY_1" AS NUMBER(23,3)) AS "INCOME_EXPENSE_ORIG_CCY_1",
CAST(DATA01."INCOME_EXPENSE_ORIG_CCY_2" AS NUMBER(23,3)) AS "INCOME_EXPENSE_ORIG_CCY_2",
CAST(DATA01."INCOME_EXPENSE_ORIG_CCY_3" AS NUMBER(23,3)) AS "INCOME_EXPENSE_ORIG_CCY_3",
CAST(DATA01."INCOME_EXPENSE_ORIG_CCY_4" AS NUMBER(23,3)) AS "INCOME_EXPENSE_ORIG_CCY_4",
CAST(DATA01."INCOME_EXPENSE_ORIG_CCY_5" AS NUMBER(23,3)) AS "INCOME_EXPENSE_ORIG_CCY_5",
CAST(DATA01."INCOME_EXPENSE_BASE_EQ_1" AS NUMBER(23,3)) AS "INCOME_EXPENSE_BASE_EQ_1",
CAST(DATA01."INCOME_EXPENSE_BASE_EQ_2" AS NUMBER(23,3)) AS "INCOME_EXPENSE_BASE_EQ_2",
CAST(DATA01."INCOME_EXPENSE_BASE_EQ_3" AS NUMBER(23,3)) AS "INCOME_EXPENSE_BASE_EQ_3",
CAST(DATA01."INCOME_EXPENSE_BASE_EQ_4" AS NUMBER(23,3)) AS "INCOME_EXPENSE_BASE_EQ_4",
CAST(DATA01."INCOME_EXPENSE_BASE_EQ_5" AS NUMBER(23,3)) AS "INCOME_EXPENSE_BASE_EQ_5",
CAST(DATA01."IRA_INDICATOR" AS VARCHAR2(10)) AS "IRA_INDICATOR",
CAST(DATA02."FED_FUNDS_YN" AS VARCHAR2(3)) AS "FED_FUNDS_YN",
CAST(DATA01."UNDER_OVER_BALANCE_2" AS VARCHAR2(50)) AS "UNDER_OVER_BALANCE_2",
CAST(DATA01."MATURITY_BUCKETS_2" AS VARCHAR2(50)) AS "MATURITY_BUCKETS_2",
CAST(DATA01."MATURITY_BUCKETS_3" AS VARCHAR2(50)) AS "MATURITY_BUCKETS_3",
CAST(DATA02."CUSTOMER_ID" AS VARCHAR2(10)) AS "CUSTOMER_ID",
CAST(DATA01."CUSTOMER_TYPE" AS VARCHAR2(30)) AS "CUSTOMER_TYPE",
CAST(DATA02."FOREIGN_DOMESTIC" AS VARCHAR2(8)) AS "FOREIGN_DOMESTIC",
CAST(DATA02."COUNTRY_CODE" AS VARCHAR2(5)) AS "COUNTRY_CODE",
CAST(DATA01."COUNTRY_DESC" AS VARCHAR2(30)) AS "COUNTRY_DESC",
CAST(DATA01."CIF_TYPE" AS VARCHAR2(20)) AS "CIF_TYPE",
CAST(DATA01."CIF_TYPE_DESCRIPTION" AS VARCHAR2(50)) AS "CIF_TYPE_DESCRIPTION",
CAST(DATA01."DEPO_NON-DEPO" AS VARCHAR2(25)) AS "DEPO_NON-DEPO",
CAST(DATA02."SOURCE" AS VARCHAR2(4)) AS "SOURCE",
CAST(DATA02."IBF_DEPOSIT_COLUMN_YN" AS VARCHAR2(3)) AS "IBF_DEPOSIT_COLUMN_YN",
CAST(DATA01."TRADE_ID" AS VARCHAR2(20)) AS "TRADE_ID",
CAST(DATA01."REPORTABLE_Y_N" AS VARCHAR2(10)) AS "REPORTABLE_Y_N",
CAST(DATA01."ACCOUNT" AS VARCHAR2(30)) AS "ACCOUNT",
CAST(DATA01."PRODUCT" AS VARCHAR2(10)) AS "PRODUCT",
CAST(DATA01."DEPTID" AS VARCHAR2(15)) AS "DEPTID",
CAST(DATA02."CUST_CLASS" AS VARCHAR2(10)) AS "CUST_CLASS",
CAST(DATA02."AFFILIATE" AS VARCHAR2(10)) AS "AFFILIATE",
CAST(DATA01."DISC_GIVEN_CALL_CODE_CODEBLOCK" AS VARCHAR2(100)) AS "DISC_GIVEN_CALL_CODE_CODEBLOCK",
CAST(DATA01."TRANS_ACCT_CALL_CODE_CODEBLK" AS VARCHAR2(100)) AS "TRANS_ACCT_CALL_CODE_CODEBLK",
CAST(DATA01."UMD_7" AS VARCHAR2(250)) AS "UMD_7",
CAST(DATA01."UMD_8" AS VARCHAR2(250)) AS "UMD_8",
CAST(REPLACE(DATA01."UMD_9", ',', '') AS NUMBER(23,3)) AS "UMD_9",
CAST(DATA01."FILLER_1" AS VARCHAR2(250)) AS "FILLER_1",
CAST(DATA01."FILLER_2" AS VARCHAR2(250)) AS "FILLER_2",
CAST(DATA01."FILLER_3" AS VARCHAR2(250)) AS "FILLER_3",
CAST(DATA01."FILLER_4" AS VARCHAR2(250)) AS "FILLER_4",
CAST(DATA01."FILLER_5" AS VARCHAR2(250)) AS "FILLER_5",
CAST(DATA01."FILLER_6" AS VARCHAR2(250)) AS "FILLER_6",
CAST(DATA01."FILLER_7" AS VARCHAR2(250)) AS "FILLER_7",
CAST(DATA01."FILLER_8" AS VARCHAR2(250)) AS "FILLER_8",
CAST(DATA01."FILLER_9" AS VARCHAR2(250)) AS "FILLER_9",
CAST(DATA01."FILLER_10" AS VARCHAR2(250)) AS "FILLER_10",
CAST(DATA01."FILLER_11" AS VARCHAR2(250)) AS "FILLER_11",
CAST(DATA01."FILLER_12" AS VARCHAR2(250)) AS "FILLER_12",
CAST(DATA01."FILLER_13" AS VARCHAR2(250)) AS "FILLER_13",
CAST(DATA01."FILLER_14" AS VARCHAR2(250)) AS "FILLER_14",
CAST(DATA01."FILLER_15" AS VARCHAR2(250)) AS "FILLER_15",
CAST(DATA01."FILLER_16" AS VARCHAR2(250)) AS "FILLER_16",
CAST(DATA01."FILLER_17" AS VARCHAR2(250)) AS "FILLER_17",
CAST(DATA01."FILLER_18" AS VARCHAR2(250)) AS "FILLER_18",
CAST(DATA01."FILLER_19" AS VARCHAR2(250)) AS "FILLER_19",
CAST(DATA01."FILLER_20" AS VARCHAR2(250)) AS "FILLER_20",
CAST(DATA01."FILLER_21" AS VARCHAR2(250)) AS "FILLER_21",
CAST(DATA01."FILLER_22" AS VARCHAR2(250)) AS "FILLER_22",
CAST(DATA01."FILLER_23" AS VARCHAR2(250)) AS "FILLER_23",
CAST(DATA01."FILLER_24" AS VARCHAR2(250)) AS "FILLER_24",
CAST(DATA01."FILLER_25" AS VARCHAR2(250)) AS "FILLER_25",
DATA01."PROVENIENZA",
KEYS."USERUPD",
DATA01."DATEUPD"
FROM
  (
    SELECT DISTINCT
MONTH_END_DATE,
RB_ROWID,
REPORTING_ENTITY,
USERUPD
    FROM
      RB_STG_DEPOSITS_01
  ) KEYS
INNER JOIN
  (
    SELECT
“BUSINESS_UNIT”,
"ACCOUNT_DEPOSIT_CATEGORY_DESC",
"ACCOUNT_TYPE_DESCRIPTION",
"INSTRUMENT_ID",
"X_1",
"CUSTOMER_NAME",
"ACCOUNT_LEDGER_BALANCE",
"X_2",
"X_3",
"X_4",
"X_5",
"X_6",
"X_7",
"ACCT_AVG_YTD_LEDGER_BAL_AMT",
"X_8",
"X_9",
"ACCT_WAR_AVG_MTD_LGR_BAL",
"ACCT_CTD_INT_ACCRUAL",
"X_10",
"X_11",
"X_12",
"X_13",
"X_14",
"X_15",
"X_16",
"X_17",
"X_18",
"X_19",
"X_20",
"X_21",
"X_22",
"X_61",
"X_62",
"X_63",
"X_64",
"X_65",
"X_71",
"X_73",
"CALL_CODE",
"CALL_CODE_DESC",
"UMD_1",
"UMD_2",
"UMD_3",
"REMAINING_MATURITY_DAYS",
"MATURITY_BUCKETS",
"UNDER_OVER_BALANCE",
"UMD_4",
"UMD_5",
"UMD_6",
"INSTRUMENT",
"INTERCOMPANY",
"CONSOL_NODE",
"GL_KEY_CODE",
"GL_KEY_CODE_DESC",
"BASE_EQUIVALENT",
"PRINCIPAL_ORIG_CCY",
"DISCOUNT_GIVEN_ORIG_CCY",
"TRANS_ACCT_ORIG_CCY",
"PRINCIPAL_BASE_EQ",
"DISCOUNT_GIVEN_BASE_EQ",
"TRANS_ACCT_BASE_EQ",
"DISCOUNT_RECEIVED_ORIG_CCY",
"ACCRUED_INTEREST_ORIG_CCY",
"ACCRUED_INTEREST_ORIG_CCY_2",
"DISCOUNT_RECEIVED_BASE_EQ",
"ACCRUED_INTEREST_BASE_EQ",
"ACCRUED_INTEREST_BASE_EQ_2",
"INCOME_EXPENSE_ORIG_CCY_1",
"INCOME_EXPENSE_ORIG_CCY_2",
"INCOME_EXPENSE_ORIG_CCY_3",
"INCOME_EXPENSE_ORIG_CCY_4",
"INCOME_EXPENSE_ORIG_CCY_5",
"INCOME_EXPENSE_BASE_EQ_1",
"INCOME_EXPENSE_BASE_EQ_2",
"INCOME_EXPENSE_BASE_EQ_3",
"INCOME_EXPENSE_BASE_EQ_4",
"INCOME_EXPENSE_BASE_EQ_5",
"IRA_INDICATOR",
"UNDER_OVER_BALANCE_2",
"MATURITY_BUCKETS_2",
"MATURITY_BUCKETS_3",
"CUSTOMER_TYPE",
"COUNTRY_DESC",
"CIF_TYPE",
"CIF_TYPE_DESCRIPTION",
"DEPO_NON-DEPO",
"TRADE_ID",
"REPORTABLE_Y_N",
"ACCOUNT",
"PRODUCT",
"DEPTID",
"DISC_GIVEN_CALL_CODE_CODEBLOCK",
"TRANS_ACCT_CALL_CODE_CODEBLK",
"UMD_7",
"UMD_8",
"UMD_9",
"FILLER_1",
"FILLER_2",
"FILLER_3",
"FILLER_4",
"FILLER_5",
"FILLER_6",
"FILLER_7",
"FILLER_8",
"FILLER_9",
"FILLER_10",
"FILLER_11",
"FILLER_12",
"FILLER_13",
"FILLER_14",
"FILLER_15",
"FILLER_16",
"FILLER_17",
"FILLER_18",
"FILLER_19",
"FILLER_20",
"FILLER_21",
"FILLER_22",
"FILLER_23",
"FILLER_24",
"FILLER_25",
"MONTH_END_DATE",
"RB_ROWID",
"REPORTING_ENTITY",
"PROVENIENZA",
"USERUPD",
"DATEUPD"
FROM
RB_STG_DEPOSITS_01
  ) DATA01
  ON
KEYS.MONTH_END_DATE = DATA01.MONTH_END_DATE AND
KEYS.RB_ROWID = DATA01.RB_ROWID AND
KEYS.REPORTING_ENTITY = DATA01.REPORTING_ENTITY AND
KEYS.USERUPD = DATA01.USERUPD
INNER JOIN
  (
    SELECT
"BANK_NUMBER",
"ACCOUNT_DEPOSIT_CATEGORY_CODE",
"ACCOUNT_TYPE_CODE",
"ACCOUNT_RETIREMENT_PLAN_TYPE",
"OPERATING_UNIT",
"BRANCH NUMBER",
"X_23",
"X_24",
"X_25",
"X_26",
"X_27",
"X_28",
"ACCT_INST_OPEN_DATE",
"X_29",
"X_30",
"X_31",
"ACCT_LAST_INT_DATE",
"X_32",
"X_33",
"X_34",
"ACCT_INST_CLOSED_DATE",
"X_35",
"X_36",
"X_37",
"X_38",
"X_39",
"MATURITY_DATE",
"X_40",
"X_41",
"X_42",
"X_43",
"X_44",
"X_45",
"X_46",
"X_47",
"X_48",
"X_49",
"X_50",
"X_51",
"X_52",
"X_53",
"X_54",
"X_55",
"X_56",
"X_57",
"X_58",
"X_59",
"X_60",
"X_66",
"X_67",
"X_68",
"X_69",
"X_70",
"X_72",
"X_74",
"X_75",
"CURRENCY_CODE",
"ORIGINATION_DATE",
"BROKERED_DEPOSITS",
"TRANSACTION_NON_TRANSACTION_YN",
"INTEREST_BEARING_YN",
"CURRENCY_USQ",
"FED_FUNDS_YN",
"CUSTOMER_ID",
"FOREIGN_DOMESTIC",
"COUNTRY_CODE",
"SOURCE",
"IBF_DEPOSIT_COLUMN_YN",
"CUST_CLASS",
"AFFILIATE",
"MONTH_END_DATE",
"RB_ROWID",
"REPORTING_ENTITY",
"PROVENIENZA",
"USERUPD",
"DATEUPD"
FROM
RB_STG_DEPOSITS_02
  ) DATA02
  ON
KEYS.MONTH_END_DATE = DATA02.MONTH_END_DATE AND
KEYS.RB_ROWID = DATA02.RB_ROWID AND
KEYS.REPORTING_ENTITY = DATA02.REPORTING_ENTITY AND
KEYS.USERUPD = DATA02.USERUPD