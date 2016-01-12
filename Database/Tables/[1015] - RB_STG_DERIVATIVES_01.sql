--------------------------------------------------------
--  DDL - DROP for Table RB_STG_DERIVATIVES_01
--------------------------------------------------------

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "RB_STG_DERIVATIVES_01"';
EXCEPTION
    WHEN OTHERS THEN
	    IF SQLCODE != -942 THEN RAISE;
		END IF;
END;
  
--------------------------------------------------------
--  DDL for Table RB_STG_DERIVATIVES_01
--------------------------------------------------------

CREATE TABLE "RB_STG_DERIVATIVES_01" (
    RB_ROWID VARCHAR2(255),
	MONTH_END_DATE VARCHAR2(255),
	REPORTING_ENTITY VARCHAR2(255),
	INSTRUMENT VARCHAR2(255),
	INTERCOMPANY VARCHAR2(255),
	CONSOL_NODE VARCHAR2(255),
	BUSINESS_UNIT VARCHAR2(255),
	GL_KEY_CODE VARCHAR2(255),
	GL_KEY_CODE_DESC VARCHAR2(255),
	CALL_CODE VARCHAR2(255),
	CALL_CODE_DESC VARCHAR2(255),
	ACCRUAL_VALUE VARCHAR2(255),
	CLEAN_PRICE_VALUE VARCHAR2(255),
	DIRTY_PRICE_VALUE VARCHAR2(255),
	CREDIT_ADJ VARCHAR2(255),
	CREDIT_VALUATION_ADJ VARCHAR2(255),
	USQ_NOTIONAL VARCHAR2(255),
	POSITIVE_NEGATIVE VARCHAR2(255),
	BUY_SELL_INDICATOR VARCHAR2(255),
	MATURITY_PCT_WEIGHT VARCHAR2(255),
	ADD_ON VARCHAR2(255),
	REPLACEMENT_VALUE VARCHAR2(255),
	CREDIT_EQUIVALENT VARCHAR2(255),
	CPTY_WGHT VARCHAR2(255),
	AMT_BOUGHT VARCHAR2(255),
	AMT_SOLD VARCHAR2(255),
	CCY_RECEIVE VARCHAR2(255),
	CCY_PAY VARCHAR2(255),
	SOURCE VARCHAR2(255),
	ACC_INT_REC_GL_US_GAAP_BASE_EQ VARCHAR2(255),
	UNSET_TRADE_GL_US_GAAP_BASE_EQ VARCHAR2(255),
	RECEIVABLES_ADVANCES_BASE_EQ VARCHAR2(255),
	UNRLZED_PLG_GL_US_GAAP_BASE_EQ VARCHAR2(255),
	UNREAL_PLG_CCY_SWAP_US_BASE_EQ VARCHAR2(255),
	ACC_INT_PAY_GL_US_GAAP_BASE_EQ VARCHAR2(255),
	ACC_FEE_PAY_GL_US_GAAP_BASE_EQ VARCHAR2(255),
	UNSET_TRADE_PAYABLE_US_BASE_EQ VARCHAR2(255),
	UNRLZED_PLL_GL_US_GAAP_BASE_EQ VARCHAR2(255),
	UNREAL_PLL_CCY_SWAP_US_BASE_EQ VARCHAR2(255),
	MARCA_PROVISION VARCHAR2(255),
	NOTL_OPT_BUY_US_GAAP_BASE_EQ VARCHAR2(255),
	NOTL_SWAP_BUY_US_GAAP_BASE_EQ VARCHAR2(255),
	NOTL_OPT_GL_US_GAAP_BASE_EQ VARCHAR2(255),
	NOTL_OPT_SOLD_US_GAAP_BASE_EQ VARCHAR2(255),
	NOTL_SWAP_SOLD_US_GAAP_BASE_EQ VARCHAR2(255),
	IBF_ONLY_RAL_COLUMN_B_YN VARCHAR2(255),
	REGULATORY_RISK_RATINGS VARCHAR2(255),
	LEVEL_FAIR_VALUE VARCHAR2(255),
	CRC_RATING VARCHAR2(255),
	UMD1 VARCHAR2(255),
	UMD2 VARCHAR2(255),
	UMD3 VARCHAR2(255),
	MATURITY_DATE VARCHAR2(255),
	REMAINING_MATURITY VARCHAR2(255),
	MATURITY_BUCKETS VARCHAR2(255),
	ONE_YEAR_OR_LESS VARCHAR2(255),
	ONE_TO_FIVE_YEARS VARCHAR2(255),
	GREATER_THAN_FIVE_YEARS VARCHAR2(255),
	ACCOUNTING_CLASSIFICATION VARCHAR2(255),
	BA_CODE VARCHAR2(255),
	ENTITY_ENT_CODE VARCHAR2(255),
	COUNTERPARTY_ENT_CODE VARCHAR2(255),
	COVERED_MARKET_RISK_RULE VARCHAR2(255),
	AFFIRMED_REG_RPT_CAP_GUARANTEE VARCHAR2(255),
	SECURITY_DESCRIPTION VARCHAR2(255),
	INVESTMENT_GRADE VARCHAR2(255),
	SUBINVESTMENT_GRADE VARCHAR2(255),
	UMD4 VARCHAR2(255),
	UMD5 VARCHAR2(255),
	UMD6 VARCHAR2(255),
	TRADE_ID VARCHAR2(255),
	CUSTOMER_ID VARCHAR2(255),
	RELATED_DEP_INST VARCHAR2(255),
	CUSTOMER_NAME VARCHAR2(255),
	CUSTOMER_TYPE VARCHAR2(255),
	CITY VARCHAR2(255),
	OPERATING_STATE VARCHAR2(255),
	FOREIGN_DOMESTIC VARCHAR2(255),
	COUNTRY_CODE VARCHAR2(255),
	COUNTRY_DESC VARCHAR2(255),
	RELATION_ID VARCHAR2(255),
	FX_RATE_REC VARCHAR2(255),
	FX_RATE_PAY VARCHAR2(255),
	STRIKE_PRICE VARCHAR2(255),
	FIXED_OR_VARIABLE VARCHAR2(255),
	RECEIVE_INTEREST_RATE VARCHAR2(255),
	PAY_INTEREST_RATE VARCHAR2(255),
	INDEX_RATE_ADD VARCHAR2(255),
	FLOAT_FREQ VARCHAR2(255),
	LAST_RATE_RESET_DATE VARCHAR2(255),
	NEXT_RATE_RESET_DATE VARCHAR2(255),
	BRANCH_SUBSIDIARY VARCHAR2(255),
	START_DATE VARCHAR2(255),
	TRADE_DATE VARCHAR2(255),
	SETTLE_DATE VARCHAR2(255),
	UMD7 VARCHAR2(255),
	UMD8 VARCHAR2(255),
	UMD9 VARCHAR2(255),
	UMD10 VARCHAR2(255),
	ACCOUNT VARCHAR2(255),
	PRODUCT VARCHAR2(255),
	OPERATING_UNIT VARCHAR2(255),
	AFFILIATE VARCHAR2(255),
	CUST_CLASS VARCHAR2(255),
	CODEBLOCK VARCHAR2(255),
	ACCRUAL_CODEBLOCK VARCHAR2(255),
	UNREALIZED_CODEBLOCK VARCHAR2(255),
	CALL_CODE_CONCAT VARCHAR2(255),
	FILLER_1 VARCHAR2(255),
	FILLER_2 VARCHAR2(255),
	FILLER_3 VARCHAR2(255),
	FILLER_4 VARCHAR2(255),
	FILLER_5 VARCHAR2(255),
	FILLER_6 VARCHAR2(255),
	FILLER_7 VARCHAR2(255),
	FILLER_8 VARCHAR2(255),
	FILLER_9 VARCHAR2(255),
	FILLER_10 VARCHAR2(255),
	FILLER_11 VARCHAR2(255),
	FILLER_12 VARCHAR2(255),
	FILLER_13 VARCHAR2(255),
	FILLER_14 VARCHAR2(255),
	FILLER_15 VARCHAR2(255),
	FILLER_16 VARCHAR2(255),
	FILLER_17 VARCHAR2(255),
	FILLER_18 VARCHAR2(255),
	FILLER_19 VARCHAR2(255),
    PROVENIENZA VARCHAR2(30),
    USERUPD VARCHAR2(30 BYTE),
    DATEUPD DATE
) SEGMENT CREATION DEFERRED 
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS PARALLEL NOLOGGING;

CREATE INDEX IX_RB_STG_DERIVATIVES_01
ON RB_STG_DERIVATIVES_01 (MONTH_END_DATE, REPORTING_ENTITY, RB_ROWID, USERUPD)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;