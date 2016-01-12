--------------------------------------------------------
--  DDL - DROP for Table RB_HST_DERIVATIVES_01
--------------------------------------------------------

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "RB_HST_BORROWINGS_01"';
EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE;
    END IF;
END;
  
--------------------------------------------------------
--  DDL for Table RB_HST_BORROWINGS_01
--------------------------------------------------------

CREATE TABLE "RB_HST_BORROWINGS_01" (
	RB_ROWID NUMBER(38,0),
	MONTH_END_DATE DATE,
	REPORTING_ENTITY VARCHAR2(6),
	INSTRUMENT VARCHAR2(27),
	INTERCOMPANY VARCHAR2(15),
	CALL_CODE VARCHAR2(15),
	CALL_CODE_DESC VARCHAR2(150),
	GL_KEY_CODE VARCHAR2(15),
	GL_KEY_CODE_DESC VARCHAR2(150),
	CONSOL_NODE VARCHAR2(20),
	BUSINESS_UNIT VARCHAR2(5),
	CURRENCY_CODE VARCHAR2(3),
	FOREIGN_AMOUNT NUMBER(23,3),
	CURRENCY_USQ VARCHAR2(3),
	BASE_EQUIVALENT NUMBER(23,3),
	MATURITY_DATE DATE,
	REMAINING_MATURITY_DAYS NUMBER(23,0),
	MATURITY_BUCKETS VARCHAR2(50),
	MATURITY_BUCKETS_2 VARCHAR2(50),
	CUSTOMER_ID VARCHAR2(10),
	"DEPO_NON-DEPO" VARCHAR2(25),
	FOREIGN_DOMESTIC VARCHAR2(8),
	PRINCIPAL_ORIG_CCY NUMBER(23,3),
	DISCOUNT_GIVEN_ORIG_CCY NUMBER(23,3),
	OVERDRAFT_CASH_ORIG_CCY NUMBER(23,3),
	PRINCIPAL_BASE_EQ NUMBER(23,3),
	DISCOUNT_GIVEN_BASE_EQ NUMBER(23,3),
	OVERDRAFT_CASH_BASE_EQ NUMBER(23,3),
	PROD_TYPE_DESC VARCHAR2(100),
	CUSTOMER_TYPE VARCHAR2(30),
	UMD_1 NUMBER(23,3),
	SOURCE VARCHAR2(4),
	UMD_2 NUMBER(23,3),
	UMD_3 NUMBER(23,3),
	UMD_4 NUMBER(23,3),
	TRADE_ID VARCHAR2(20),
	REPORTABLE_Y_N VARCHAR2(10),
	BU VARCHAR2(10),
	ACCOUNT VARCHAR2(10),
	PRODUCT VARCHAR2(10),
	OPERATING_UNIT VARCHAR2(10),
	DEPTID VARCHAR2(15),
	CUST_CLASS VARCHAR2(10),
	AFFILIATE VARCHAR2(10),
	CIF_TYPE VARCHAR2(20),
	CIF_TYPE_DESCRIPTION VARCHAR2(50),
	DISC_GIVEN_CALL_CODE_CODEBLOCK VARCHAR2(100),
	OVRDRFT_CASH_CALL_CODE_CODEBLK VARCHAR2(100),
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
	FILLER_20 VARCHAR2(250),
	FILLER_21 VARCHAR2(250),
	FILLER_22 VARCHAR2(250),
	FILLER_23 VARCHAR2(250),
	FILLER_24 VARCHAR2(250),
	FILLER_25 VARCHAR2(250),
	PROVENIENZA VARCHAR2(30),
	USERUPD VARCHAR2(30 BYTE),
	DATEUPD DATE
)
PARTITION BY HASH (MONTH_END_DATE)
INITRANS 1 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

--------------------------------------------------------
--  Indexes for Table RB_HST_BORROWINGS_01
--------------------------------------------------------

CREATE UNIQUE INDEX UI_RB_HST_BORROWINGS_01
ON RB_HST_BORROWINGS_01 (
	MONTH_END_DATE,
	REPORTING_ENTITY,
	RB_ROWID
)
GLOBAL PARTITION BY HASH (MONTH_END_DATE)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

CREATE INDEX IX_RB_HST_BORROWINGS_01_RE
ON RB_HST_BORROWINGS_01 (REPORTING_ENTITY)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

CREATE INDEX IX_RB_HST_BORROWINGS_01_GLKC
ON RB_HST_BORROWINGS_01 (GL_KEY_CODE, BUSINESS_UNIT)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

CREATE INDEX IX_RB_HST_BORROWINGS_01_CC
ON RB_HST_BORROWINGS_01 (CALL_CODE, BUSINESS_UNIT)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

--------------------------------------------------------
--  Constraints for Table RB_HST_BORROWINGS_01
--------------------------------------------------------

ALTER TABLE RB_HST_BORROWINGS_01 ADD CONSTRAINT PK_RB_HST_BORROWINGS_01
PRIMARY KEY (MONTH_END_DATE, REPORTING_ENTITY, RB_ROWID) USING INDEX UI_RB_HST_BORROWINGS_01 ENABLE VALIDATE;