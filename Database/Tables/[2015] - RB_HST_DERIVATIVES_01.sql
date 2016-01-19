--------------------------------------------------------
--  DDL - DROP for Table RB_HST_DERIVATIVES_01
--------------------------------------------------------

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "RB_HST_DERIVATIVES_01"';
EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE;
    END IF;
END;
  
--------------------------------------------------------
--  DDL for Table RB_HST_DERIVATIVES_01
--------------------------------------------------------

CREATE TABLE "RB_HST_DERIVATIVES_01" (
	RB_ROWID NUMBER,
	MONTH_END_DATE DATE,
	REPORTING_ENTITY VARCHAR2(6),
	INSTRUMENT VARCHAR2(27),
	INTERCOMPANY VARCHAR2(15),
	CONSOL_NODE VARCHAR2(20),
	BUSINESS_UNIT VARCHAR2(5),
	GL_KEY_CODE VARCHAR2(15),
	GL_KEY_CODE_DESC VARCHAR2(150),
	CALL_CODE VARCHAR2(15),
	CALL_CODE_DESC VARCHAR2(150),
	ACCRUAL_VALUE NUMBER(23,3),
	CLEAN_PRICE_VALUE NUMBER(23,3),
	DIRTY_PRICE_VALUE NUMBER(23,3),
	CREDIT_ADJ NUMBER(23,3),
	CREDIT_VALUATION_ADJ NUMBER(23,3),
	USQ_NOTIONAL NUMBER(23,3),
	POSITIVE_NEGATIVE VARCHAR2(8),
	BUY_SELL_INDICATOR VARCHAR2(4),
	MATURITY_PCT_WEIGHT NUMBER(4,3),
	ADD_ON NUMBER(23,3),
	REPLACEMENT_VALUE NUMBER(23,3),
	CREDIT_EQUIVALENT NUMBER(23,3),
	CPTY_WGHT NUMBER(4,3),
	AMT_BOUGHT NUMBER(23,3),
	AMT_SOLD NUMBER(23,3),
	CCY_RECEIVE VARCHAR2(3),
	CCY_PAY VARCHAR2(3),
	SOURCE VARCHAR2(4),
	ACC_INT_REC_GL_US_GAAP_BASE_EQ NUMBER(23,3),
	UNSET_TRADE_GL_US_GAAP_BASE_EQ NUMBER(23,3),
	RECEIVABLES_ADVANCES_BASE_EQ NUMBER(23,3),
	UNRLZED_PLG_GL_US_GAAP_BASE_EQ NUMBER(23,3),
	UNREAL_PLG_CCY_SWAP_US_BASE_EQ NUMBER(23,3),
	ACC_INT_PAY_GL_US_GAAP_BASE_EQ NUMBER(23,3),
	ACC_FEE_PAY_GL_US_GAAP_BASE_EQ NUMBER(23,3),
	UNSET_TRADE_PAYABLE_US_BASE_EQ NUMBER(23,3),
	UNRLZED_PLL_GL_US_GAAP_BASE_EQ NUMBER(23,3),
	UNREAL_PLL_CCY_SWAP_US_BASE_EQ NUMBER(23,3),
	MARCA_PROVISION NUMBER(23,3),
	NOTL_OPT_BUY_US_GAAP_BASE_EQ NUMBER(23,3),
	NOTL_SWAP_BUY_US_GAAP_BASE_EQ NUMBER(23,3),
	NOTL_OPT_GL_US_GAAP_BASE_EQ NUMBER(23,3),
	NOTL_OPT_SOLD_US_GAAP_BASE_EQ NUMBER(23,3),
	NOTL_SWAP_SOLD_US_GAAP_BASE_EQ NUMBER(23,3),
	IBF_ONLY_RAL_COLUMN_B_YN VARCHAR2(5),
	REGULATORY_RISK_RATINGS NUMBER(4,3),
	LEVEL_FAIR_VALUE VARCHAR2(10),
	CRC_RATING NUMBER(4,3),
	UMD1 VARCHAR2(250),
	UMD2 VARCHAR2(250),
	UMD3 VARCHAR2(250),
	MATURITY_DATE VARCHAR2(250),
	REMAINING_MATURITY VARCHAR2(6),
	MATURITY_BUCKETS VARCHAR2(50),
	ONE_YEAR_OR_LESS NUMBER(23,3),
	ONE_TO_FIVE_YEARS NUMBER(23,3),
	GREATER_THAN_FIVE_YEARS NUMBER(23,3),
	ACCOUNTING_CLASSIFICATION VARCHAR2(6),
	BA_CODE VARCHAR2(30),
	ENTITY_ENT_CODE VARCHAR2(6),
	COUNTERPARTY_ENT_CODE VARCHAR2(6),
	COVERED_MARKET_RISK_RULE VARCHAR2(150),
	AFFIRMED_REG_RPT_CAP_GUARANTEE VARCHAR2(150),
	SECURITY_DESCRIPTION VARCHAR2(150),
	INVESTMENT_GRADE VARCHAR2(250),
	SUBINVESTMENT_GRADE VARCHAR2(250),
	UMD4 VARCHAR2(250),
	UMD5 VARCHAR2(250),
	UMD6 VARCHAR2(250),
	TRADE_ID VARCHAR2(20),
	CUSTOMER_ID VARCHAR2(10),
	RELATED_DEP_INST VARCHAR2(20),
	CUSTOMER_NAME VARCHAR2(50),
	CUSTOMER_TYPE VARCHAR2(30),
	CITY VARCHAR2(30),
	OPERATING_STATE VARCHAR2(10),
	FOREIGN_DOMESTIC VARCHAR2(8),
	COUNTRY_CODE VARCHAR2(5),
	COUNTRY_DESC VARCHAR2(30),
	RELATION_ID VARCHAR2(10),
	FX_RATE_REC NUMBER(15,8),
	FX_RATE_PAY NUMBER(15,8),
	STRIKE_PRICE NUMBER(15,8),
	FIXED_OR_VARIABLE VARCHAR2(20),
	RECEIVE_INTEREST_RATE NUMBER(15,8),
	PAY_INTEREST_RATE NUMBER(15,8),
	INDEX_RATE_ADD NUMBER(8,4),
	FLOAT_FREQ VARCHAR2(12),
	LAST_RATE_RESET_DATE DATE,
	NEXT_RATE_RESET_DATE DATE,
	BRANCH_SUBSIDIARY VARCHAR2(12),
	START_DATE DATE,
	TRADE_DATE DATE,
	SETTLE_DATE DATE,
	UMD7 VARCHAR2(250),
	UMD8 VARCHAR2(250),
	UMD9 VARCHAR2(250),
	UMD10 VARCHAR2(250),
	ACCOUNT VARCHAR2(10),
	PRODUCT VARCHAR2(6),
	OPERATING_UNIT VARCHAR2(8),
	AFFILIATE VARCHAR2(5),
	CUST_CLASS VARCHAR2(10),
	CODEBLOCK VARCHAR2(250),
	ACCRUAL_CODEBLOCK VARCHAR2(250),
	UNREALIZED_CODEBLOCK VARCHAR2(250),
	CALL_CODE_CONCAT VARCHAR2(250),
	FILLER_1 VARCHAR2(250),
	FILLER_2 VARCHAR2(250),
	FILLER_3 VARCHAR2(250),
	FILLER_4 VARCHAR2(250),
	FILLER_5 VARCHAR2(250),
	FILLER_6 VARCHAR2(250),
	FILLER_7 VARCHAR2(250),
	FILLER_8 VARCHAR2(250),
	FILLER_9 VARCHAR2(250),
	FILLER_10 VARCHAR2(250),
	FILLER_11 VARCHAR2(250),
	FILLER_12 VARCHAR2(250),
	FILLER_13 VARCHAR2(250),
	FILLER_14 VARCHAR2(250),
	FILLER_15 VARCHAR2(250),
	FILLER_16 VARCHAR2(250),
	FILLER_17 VARCHAR2(250),
	FILLER_18 VARCHAR2(250),
	FILLER_19 VARCHAR2(250),
	PROVENIENZA VARCHAR2(30),
	USERUPD VARCHAR2(30 BYTE),
	DATEUPD DATE
)
PARTITION BY HASH (MONTH_END_DATE)
INITRANS 1 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

--------------------------------------------------------
--  Indexes for Table RB_HST_DERIVATIVES_01
--------------------------------------------------------

CREATE UNIQUE INDEX UI_RB_HST_DERIVATIVES_01
ON RB_HST_DERIVATIVES_01 (
	MONTH_END_DATE,
	REPORTING_ENTITY,
	RB_ROWID
)
GLOBAL PARTITION BY HASH (MONTH_END_DATE)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

CREATE INDEX IX_RB_HST_DERIVATIVES_01_RE
ON RB_HST_DERIVATIVES_01 (REPORTING_ENTITY)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

CREATE INDEX IX_RB_HST_DERIVATIVES_01_GLKC
ON RB_HST_DERIVATIVES_01 (GL_KEY_CODE, BUSINESS_UNIT)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

CREATE INDEX IX_RB_HST_DERIVATIVES_01_CC
ON RB_HST_DERIVATIVES_01 (CALL_CODE, BUSINESS_UNIT)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

--------------------------------------------------------
--  Constraints for Table RB_HST_DERIVATIVES_01
--------------------------------------------------------

ALTER TABLE RB_HST_DERIVATIVES_01 ADD CONSTRAINT PK_RB_HST_DERIVATIVES_01
PRIMARY KEY (MONTH_END_DATE, REPORTING_ENTITY, RB_ROWID) USING INDEX UI_RB_HST_DERIVATIVES_01 ENABLE VALIDATE;