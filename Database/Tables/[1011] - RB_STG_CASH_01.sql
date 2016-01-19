--------------------------------------------------------
--  DDL - DROP for Table RB_STG_CASH_01
--------------------------------------------------------

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "RB_STG_CASH_01"';
EXCEPTION
    WHEN OTHERS THEN
	    IF SQLCODE != -942 THEN RAISE;
		END IF;
END;
  
--------------------------------------------------------
--  DDL for Table RB_STG_CASH_01
--------------------------------------------------------

CREATE TABLE "RB_STG_CASH_01" (
    RB_ROWID VARCHAR2(255),
    MONTH_END_DATE VARCHAR2(255),
    REPORTING_ENTITY VARCHAR2(255),
    INSTRUMENT VARCHAR2(255),
    SOURCE VARCHAR2(255),
    INTERCOMPANY VARCHAR2(255),
    CALL_CODE VARCHAR2(255),
    CURRENCY_CODE VARCHAR2(255),
    FOREIGN_AMOUNT VARCHAR2(255),
    BASE_EQUIVALENT VARCHAR2(255),
    CASH_ACCT_NBR VARCHAR2(255),
    CASH_ACCOUNT_NAME VARCHAR2(255),
    CUSTOMER_ID VARCHAR2(255),
    CUSTOMER_NAME VARCHAR2(255),
    CUSTOMER_TYPE VARCHAR2(255),
    BRANCH_AGENCY_002 VARCHAR2(255),
    HOLDING_COM_Y9C VARCHAR2(255),
    FOREIGN_DOMESTIC VARCHAR2(255),
    COUNTRY_DESC VARCHAR2(255),
    CONSOL_NODE VARCHAR2(255),
    LEGAL_ENTITY VARCHAR2(255),
    PRIMARY_GL_NBR VARCHAR2(255),
    GL_KEY_CODE VARCHAR2(255),
    GL_AMNT_IFRS VARCHAR2(255),
    GL_AMNT_USGAAP VARCHAR2(255),
    ACCRUED_INTEREST VARCHAR2(255),
    HIGHLVL_PROD_CAT VARCHAR2(255),
    IN_COLLECTION VARCHAR2(255),
    CURR_AND_COIN VARCHAR2(255),
    INTEREST_BEARING VARCHAR2(255),
    FED_RESERVE VARCHAR2(255),
    DEPOSIT_OR_NONDEP VARCHAR2(255),
    CAPITAL_RISK_RATE VARCHAR2(255),
    FOREIGN VARCHAR2(255),
    DOMESTIC VARCHAR2(255),
    OTHER_CASH VARCHAR2(255),
    PRODUCT_TYPE VARCHAR2(255),
    CUSTOMER_TYPE_PX VARCHAR2(255),
    CUST_RELATION_PX VARCHAR2(255),
    CUST_RELATION_GL VARCHAR2(255),
    CUSTOMER_TYPE_GL VARCHAR2(255),
    COUNTRY_CODE VARCHAR2(255),
    CONSOL_BU_NODE VARCHAR2(255),
    BUS_UNIT_NAME VARCHAR2(255),
    BUSINESS_UNIT VARCHAR2(255),
    ACCOUNT VARCHAR2(255),
    ACCOUNT_NAME VARCHAR2(255),
    PRODUCT VARCHAR2(255),
    PRODUCT_NAME VARCHAR2(255),
    OPERATING_UNIT VARCHAR2(255),
    DEPTID VARCHAR2(255),
    AFFILIATE VARCHAR2(255),
    AFFILIATE_NAME VARCHAR2(255),
    AFFL_CONSOL_NODE VARCHAR2(255),
    CUST_CLASS VARCHAR2(255),
    BU_AFFL_CHECK VARCHAR2(255),
    ACCT_AFFL_CHECK VARCHAR2(255),
    DESCRIPTION VARCHAR2(255),
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