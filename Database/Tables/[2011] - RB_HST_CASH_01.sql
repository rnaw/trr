--------------------------------------------------------
--  DDL - DROP for Table RB_HST_CASH_01
--------------------------------------------------------

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "RB_HST_CASH_01"';
EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE;
    END IF;
END;
  
--------------------------------------------------------
--  DDL for Table RB_HST_CASH_01
--------------------------------------------------------

CREATE TABLE "RB_HST_CASH_01" (
  TGK_TABLE_SEGMENT VARCHAR(2),
  RB_ROWID INT,
  MONTH_END_DATE DATE,
  REPORTING_ENTITY VARCHAR2(6),
  INSTRUMENT VARCHAR2(27),
  SOURCE VARCHAR2(4),
  INTERCOMPANY VARCHAR2(15),
  CALL_CODE VARCHAR2(15),
  CURRENCY_CODE VARCHAR2(3),
  FOREIGN_AMOUNT NUMBER(23,3),
  BASE_EQUIVALENT NUMBER(23,3),
  CASH_ACCT_NBR VARCHAR2(20),
  CASH_ACCOUNT_NAME VARCHAR2(35),
  CUSTOMER_ID VARCHAR2(10),
  CUSTOMER_NAME VARCHAR2(50),
  CUSTOMER_TYPE VARCHAR2(30),
  BRANCH_AGENCY_002 VARCHAR2(1),
  HOLDING_COM_Y9C VARCHAR2(1),
  FOREIGN_DOMESTIC VARCHAR2(8),
  COUNTRY_DESC VARCHAR2(30),
  CONSOL_NODE VARCHAR2(20),
  LEGAL_ENTITY VARCHAR2(12),
  PRIMARY_GL_NBR VARCHAR2(10),
  GL_KEY_CODE VARCHAR2(15),
  GL_AMNT_IFRS VARCHAR2(20),
  GL_AMNT_USGAAP VARCHAR2(20),
  ACCRUED_INTEREST NUMBER(23,3),
  HIGHLVL_PROD_CAT VARCHAR2(10),
  IN_COLLECTION VARCHAR2(1),
  CURR_AND_COIN VARCHAR2(1),
  INTEREST_BEARING VARCHAR2(20),
  FED_RESERVE VARCHAR2(1),
  DEPOSIT_OR_NONDEP VARCHAR2(20),
  CAPITAL_RISK_RATE NUMBER(6,6),
  FOREIGN VARCHAR2(1),
  DOMESTIC VARCHAR2(1),
  OTHER_CASH VARCHAR2(10),
  PRODUCT_TYPE VARCHAR2(25),
  CUSTOMER_TYPE_PX VARCHAR2(4),
  CUST_RELATION_PX VARCHAR2(2),
  CUST_RELATION_GL VARCHAR2(1),
  CUSTOMER_TYPE_GL VARCHAR2(4),
  COUNTRY_CODE VARCHAR2(5),
  CONSOL_BU_NODE VARCHAR2(20),
  BUS_UNIT_NAME VARCHAR2(30),
  BUSINESS_UNIT VARCHAR2(5),
  ACCOUNT VARCHAR2(10),
  ACCOUNT_NAME VARCHAR2(50),
  PRODUCT VARCHAR2(6),
  PRODUCT_NAME VARCHAR2(30),
  OPERATING_UNIT VARCHAR2(8),
  DEPTID VARCHAR2(15),
  AFFILIATE VARCHAR2(5),
  AFFILIATE_NAME VARCHAR2(30),
  AFFL_CONSOL_NODE VARCHAR2(30),
  CUST_CLASS VARCHAR2(10),
  BU_AFFL_CHECK VARCHAR2(20),
  ACCT_AFFL_CHECK VARCHAR2(20),
  DESCRIPTION VARCHAR2(100),
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
--  Indexes for Table RB_HST_CASH_01
--------------------------------------------------------

CREATE UNIQUE INDEX UI_RB_HST_CASH_01
ON RB_HST_CASH_01 (
	MONTH_END_DATE,
	REPORTING_ENTITY,
	RB_ROWID
)
GLOBAL PARTITION BY HASH (MONTH_END_DATE)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

CREATE INDEX IX_RB_HST_CASH_01_RE
ON RB_HST_CASH_01 (REPORTING_ENTITY)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

CREATE INDEX IX_RB_HST_CASH_01_GLKC
ON RB_HST_CASH_01 (GL_KEY_CODE, BUSINESS_UNIT)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

CREATE INDEX IX_RB_HST_CASH_01_CC
ON RB_HST_CASH_01 (CALL_CODE, BUSINESS_UNIT)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

--------------------------------------------------------
--  Constraints for Table RB_HST_CASH_01
--------------------------------------------------------

ALTER TABLE RB_HST_CASH_01 ADD CONSTRAINT PK_RB_HST_CASH_01
PRIMARY KEY (MONTH_END_DATE, REPORTING_ENTITY, RB_ROWID) USING INDEX UI_RB_HST_CASH_01 ENABLE VALIDATE;