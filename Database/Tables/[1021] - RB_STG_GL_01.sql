--------------------------------------------------------
--  DDL - DROP for Table RB_STG_GL_01
--------------------------------------------------------

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "RB_STG_GL_01"';
EXCEPTION
    WHEN OTHERS THEN
	    IF SQLCODE != -942 THEN RAISE;
		END IF;
END;

/
--------------------------------------------------------
--  DDL for Table RB_STG_GL_01
--------------------------------------------------------

CREATE TABLE "RB_STG_GL_01" (
	RB_ROWID VARCHAR(255),
	REPORTING_ENTITY VARCHAR(255),
    GL_KEY_CODE VARCHAR2(255),
	CONSOL_NODE VARCHAR2(255),
	BUSINESS_UNIT VARCHAR2(255),
	OPERATING_UNIT VARCHAR2(255),
	RB_BALANCE_TYPE VARCHAR2(255),
	SOURCE VARCHAR2(255),
	FISCAL_YEAR VARCHAR2(255),
	BASE_CURRENCY VARCHAR2(255),
	JAN_BASE VARCHAR2(255),
	FEB_BASE VARCHAR2(255),
	MAR_BASE VARCHAR2(255),
	APR_BASE VARCHAR2(255),
	MAY_BASE VARCHAR2(255),
	JUNE_BASE VARCHAR2(255),
	JULY_BASE VARCHAR2(255),
	AUG_BASE VARCHAR2(255),
	SEP_BASE VARCHAR2(255),
	OCT_BASE VARCHAR2(255),
	NOV_BASE VARCHAR2(255),
	DEC_BASE VARCHAR2(255),
	CURRENCY_CODE VARCHAR2(255),
	JAN_ORIG VARCHAR2(255),
	FEB_ORIG VARCHAR2(255),
	MAR_ORIG VARCHAR2(255),
	APR_ORIG VARCHAR2(255),
	MAY_ORIG VARCHAR2(255),
	JUNE_ORIG VARCHAR2(255),
	JULY_ORIG VARCHAR2(255),
	AUG_ORIG VARCHAR2(255),
	SEP_ORIG VARCHAR2(255),
	OCT_ORIG VARCHAR2(255),
	NOV_ORIG VARCHAR2(255),
	DEC_ORIG VARCHAR2(255),
	ACCOUNT VARCHAR2(255),
	DEPTID VARCHAR2(255),
	PRODUCT VARCHAR2(255),
	CUST_CLASS VARCHAR2(255),
	AFFILIATE VARCHAR2(255),
	OBU_AFFILIATE VARCHAR2(255),
	PROJECT_ID VARCHAR2(255),
  US_COA_ACCOUNT VARCHAR2(255),
    PROVENIENZA VARCHAR2(30),
    USERUPD VARCHAR2(30 BYTE),
    DATEUPD DATE
) SEGMENT CREATION DEFERRED 
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS PARALLEL NOLOGGING;