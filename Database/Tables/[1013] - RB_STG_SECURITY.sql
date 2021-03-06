--------------------------------------------------------
--  DDL - DROP for Table RB_STG_SECURITY
--------------------------------------------------------

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "RB_STG_SECURITY"';
EXCEPTION
    WHEN OTHERS THEN
	    IF SQLCODE != -942 THEN RAISE;
		END IF;
END;
  
--------------------------------------------------------
--  DDL for Table RB_STG_SECURITY
--------------------------------------------------------
SET DEFINE OFF;
CREATE TABLE "RB_STG_SECURITY" (
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
	PRODUCT_GROUP_DESC VARCHAR2(255),
	AMORTIZED_COST VARCHAR2(255),
	FAIR_VALUE VARCHAR2(255),
	PRICE VARCHAR2(255),
	PRINCIPAL_GL_US_GAAP_BASE_EQ VARCHAR2(255),
	DISCOUNT_GL_US_GAAP_BASE_EQ VARCHAR2(255),
	PREMIUM_GL_US_GAAP_BASE_EQ VARCHAR2(255),
	UNRLZED_PL_GL_US_GAAP_BASE_EQ VARCHAR2(255),
	LTD_IMPAIRMENT_US_GAAP_BASE_EQ VARCHAR2(255),
	SOURCE VARCHAR2(255),
	IBF_ONLY_RAL_COLUMN_B_YN VARCHAR2(255),
	CURRENCY_CODE VARCHAR2(255),
	REGULATORY_RISK_RATINGS VARCHAR2(255),
	LEVEL_FAIR_VALUE VARCHAR2(255),
	ORIGINAL_PRICE VARCHAR2(255),
	MATURITY_DATE VARCHAR2(255),
	REMAINING_MATURITY VARCHAR2(255),
	INT_RATE VARCHAR2(255),
	FIXED_OR_VARIABLE VARCHAR2(255),
	FLOATING_RATE VARCHAR2(255),
	FIXED_RATE VARCHAR2(255),
	INDEX_RATE_ADD VARCHAR2(255),
	FLOAT_FREQ VARCHAR2(255),
	MATURITY_BUCKETS VARCHAR2(255),
	LAST_RATE_RESET_DATE VARCHAR2(255),
	NEXT_RATE_RESET_DATE VARCHAR2(255),
	DAY_COUNT_BASIS VARCHAR2(255),
	PLEDGED_SECURITIES_YN VARCHAR2(255),
	CMMP_TO_PURCHASE_SEC_YN VARCHAR2(255),
	GUARANTOR VARCHAR2(255),
	CUSTOMER_NAME VARCHAR2(255),
	CUSTOMER_TYPE VARCHAR2(255),
	CITY VARCHAR2(255),
	OPERATING_STATE VARCHAR2(255),
	COUNTRY_CODE VARCHAR2(255),
	COUNTRY_DESC VARCHAR2(255),
	FOREIGN_DOMESTIC VARCHAR2(255),
	SECURITY_DESCRIPTION VARCHAR2(255),
	"S&P_RATING" VARCHAR2(255),
	MOODYS_RATING VARCHAR2(255),
	CUSIP VARCHAR2(255),
	ISIN VARCHAR2(255),
	TRADE_ID VARCHAR2(255),
	CUSTOMER_ID VARCHAR2(255),
	RELATED_DEP_INST VARCHAR2(255),
	BRANCH_SUBSIDIARY VARCHAR2(255),
	VAL_DATE VARCHAR2(255),
	TRADE_DATE VARCHAR2(255),
	SETTLE_DATE VARCHAR2(255),
	LAST_PRIN_PMT VARCHAR2(255),
	UMD1 VARCHAR2(255),
	UMD2 VARCHAR2(255),
	UMD3 VARCHAR2(255),
	UMD4 VARCHAR2(255),
	UMD5 VARCHAR2(255),
	UMD6 VARCHAR2(255),
	UMD7 VARCHAR2(255),
	UMD8 VARCHAR2(255),
	UMD9 VARCHAR2(255),
	UMD10 VARCHAR2(255),
	SYMB_POOL VARCHAR2(255),
	PORTFOLIO VARCHAR2(255),
	ACCOUNT_CAMRA VARCHAR2(255),
	PRODUCT_CAMRA VARCHAR2(255),
	ACCOUNT VARCHAR2(255),
	PRODUCT VARCHAR2(255),
	OPERATING_UNIT VARCHAR2(255),
	AFFILIATE VARCHAR2(255),
	CUST_CLASS VARCHAR2(255),
	DISCOUNT_CODEBLOCK VARCHAR2(255),
	PREMIUM_CODEBLOCK VARCHAR2(255),
	UNRLZED_CODEBLOCK VARCHAR2(255),
	LTD_IMPAIRMENT_CODEBLOCK VARCHAR2(255),
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
	FILLER_20 VARCHAR2(255),
	FILLER_21 VARCHAR2(255),
	FILLER_22 VARCHAR2(255),
	FILLER_23 VARCHAR2(255),
	FILLER_24 VARCHAR2(255),
	FILLER_25 VARCHAR2(255),
    PROVENIENZA VARCHAR2(30),
    USERUPD VARCHAR2(30),
    DATEUPD DATE
) SEGMENT CREATION DEFERRED 
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS PARALLEL NOLOGGING;

CREATE INDEX IX_RB_STG_SECURITY_UPD
ON RB_STG_SECURITY (MONTH_END_DATE, REPORTING_ENTITY, RB_ROWID, USERUPD)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;