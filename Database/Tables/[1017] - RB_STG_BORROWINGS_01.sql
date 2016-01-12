--------------------------------------------------------
--  DDL - DROP for Table RB_STG_BORROWINGS_01
--------------------------------------------------------

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "RB_STG_BORROWINGS_01"';
EXCEPTION
    WHEN OTHERS THEN
	    IF SQLCODE != -942 THEN RAISE;
		END IF;
END;
  
--------------------------------------------------------
--  DDL for Table RB_STG_BORROWINGS_01
--------------------------------------------------------

CREATE TABLE "RB_STG_BORROWINGS_01" (
    RB_ROWID VARCHAR2(255),
	MONTH_END_DATE VARCHAR2(255),
	REPORTING_ENTITY VARCHAR2(255),
	INSTRUMENT VARCHAR2(255),
	INTERCOMPANY VARCHAR2(255),
	CALL_CODE VARCHAR2(255),
	CALL_CODE_DESC VARCHAR2(255),
	GL_KEY_CODE VARCHAR2(255),
	GL_KEY_CODE_DESC VARCHAR2(255),
	CONSOL_NODE VARCHAR2(255),
	BUSINESS_UNIT VARCHAR2(255),
	CURRENCY_CODE VARCHAR2(255),
	FOREIGN_AMOUNT VARCHAR2(255),
	CURRENCY_USQ VARCHAR2(255),
	BASE_EQUIVALENT VARCHAR2(255),
	MATURITY_DATE VARCHAR2(255),
	REMAINING_MATURITY_DAYS VARCHAR2(255),
	MATURITY_BUCKETS VARCHAR2(255),
	MATURITY_BUCKETS_2 VARCHAR2(255),
	CUSTOMER_ID VARCHAR2(255),
	"DEPO_NON-DEPO" VARCHAR2(255),
	FOREIGN_DOMESTIC VARCHAR2(255),
	PRINCIPAL_ORIG_CCY VARCHAR2(255),
	DISCOUNT_GIVEN_ORIG_CCY VARCHAR2(255),
	OVERDRAFT_CASH_ORIG_CCY VARCHAR2(255),
	PRINCIPAL_BASE_EQ VARCHAR2(255),
	DISCOUNT_GIVEN_BASE_EQ VARCHAR2(255),
	OVERDRAFT_CASH_BASE_EQ VARCHAR2(255),
	PROD_TYPE_DESC VARCHAR2(255),
	CUSTOMER_TYPE VARCHAR2(255),
	UMD_1 VARCHAR2(255),
	SOURCE VARCHAR2(255),
	UMD_2 VARCHAR2(255),
	UMD_3 VARCHAR2(255),
	UMD_4 VARCHAR2(255),
	TRADE_ID VARCHAR2(255),
	REPORTABLE_Y_N VARCHAR2(255),
	BU VARCHAR2(255),
	ACCOUNT VARCHAR2(255),
	PRODUCT VARCHAR2(255),
	OPERATING_UNIT VARCHAR2(255),
	DEPTID VARCHAR2(255),
	CUST_CLASS VARCHAR2(255),
	AFFILIATE VARCHAR2(255),
	CIF_TYPE VARCHAR2(255),
	CIF_TYPE_DESCRIPTION VARCHAR2(255),
	DISC_GIVEN_CALL_CODE_CODEBLOCK VARCHAR2(255),
	OVRDRFT_CASH_CALL_CODE_CODEBLK VARCHAR2(255),
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
    USERUPD VARCHAR2(30 BYTE),
    DATEUPD DATE
) SEGMENT CREATION DEFERRED 
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS PARALLEL NOLOGGING;

CREATE INDEX IX_RB_STG_BORROWINGS_01
ON RB_STG_BORROWINGS_01 (MONTH_END_DATE, REPORTING_ENTITY, RB_ROWID, USERUPD)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;