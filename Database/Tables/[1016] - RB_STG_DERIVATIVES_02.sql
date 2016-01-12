--------------------------------------------------------
--  DDL - DROP for Table RB_STG_DERIVATIVES_02
--------------------------------------------------------

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "RB_STG_DERIVATIVES_02"';
EXCEPTION
    WHEN OTHERS THEN
	    IF SQLCODE != -942 THEN RAISE;
		END IF;
END;
  
--------------------------------------------------------
--  DDL for Table RB_STG_DERIVATIVES_02
--------------------------------------------------------

CREATE TABLE "RB_STG_DERIVATIVES_02" (
    RB_ROWID VARCHAR2(255),
	MONTH_END_DATE VARCHAR2(255),
	REPORTING_ENTITY VARCHAR2(255),
	MANUAL_ADJUSTMENTS VARCHAR2(255),
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

CREATE INDEX IX_RB_STG_DERIVATIVES_02
ON RB_STG_DERIVATIVES_02 (MONTH_END_DATE, REPORTING_ENTITY, RB_ROWID, USERUPD)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;