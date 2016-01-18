SELECT
  "RB_ROWID",
  H."MONTH_END_DATE",
  "REPORTING_ENTITY",
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
  "BANK_NUMBER",
  "ACCOUNT_DEPOSIT_CATEGORY_CODE",
  "ACCOUNT_TYPE_CODE",
  "ACCOUNT_RETIREMENT_PLAN_TYPE",
  "OPERATING_UNIT",
  "BRANCH_NUMBER",
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
  "BUSINESS_UNIT",
  "CURRENCY_USQ",
  "FED_FUNDS_YN",
  "CUSTOMER_ID",
  "FOREIGN_DOMESTIC",
  "COUNTRY_CODE",
  "SOURCE",
  "IBF_DEPOSIT_COLUMN_YN",
  "CUST_CLASS",
  "AFFILIATE"
FROM
	RB_V_DEPOSITS H
	INNER JOIN
	(
		SELECT DISTINCT
			DATA_1 AS MONTH_END_DATE
		FROM
			FORM_DATI
		WHERE
			COD_SCENARIO = ${A1}
			AND COD_PERIODO = ${B1}
			AND COD_PROSPETTO = 'DEPOSITS'
	) F
	ON
		H.MONTH_END_DATE = F.MONTH_END_DATE