--------------------------------------------------------
--  DDL - DROP for Table RB_HST_DEPOSITS_02
--------------------------------------------------------

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "RB_HST_DEPOSITS_02"';
EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE;
    END IF;
END;

  /
--------------------------------------------------------
--  DDL for Table RB_HST_DEPOSITS_02
--------------------------------------------------------

CREATE TABLE "RB_HST_DEPOSITS_02" (
"BANK_NUMBER" VARCHAR2(6),
"ACCOUNT_DEPOSIT_CATEGORY_CODE" VARCHAR2(3),
"ACCOUNT_TYPE_CODE" VARCHAR2(3),
"ACCOUNT_RETIREMENT_PLAN_TYPE" VARCHAR2(3),
"OPERATING_UNIT" VARCHAR2(10),
"BRANCH NUMBER" VARCHAR2(10),
"X_23" VARCHAR2(10),
"X_24" VARCHAR2(10),
"X_25" VARCHAR2(10),
"X_26" VARCHAR2(3),
"X_27" VARCHAR2(3),
"X_28" DATE,
"ACCT_INST_OPEN_DATE" DATE,
"X_29" DATE,
"X_30" DATE,
"X_31" DATE,
"ACCT_LAST_INT_DATE" DATE,
"X_32" DATE,
"X_33" DATE,
"X_34" VARCHAR2(10),
"ACCT_INST_CLOSED_DATE" DATE,
"X_35" DATE,
"X_36" DATE,
"X_37" DATE,
"X_38" DATE,
"X_39" VARCHAR2(10),
"MATURITY_DATE" DATE,
"X_40" DATE,
"X_41" DATE,
"X_42" VARCHAR2(3),
"X_43" VARCHAR2(5),
"X_44" VARCHAR2(3),
"X_45" DATE,
"X_46" DATE,
"X_47" VARCHAR2(10),
"X_48" DATE,
"X_49" VARCHAR2(10),
"X_50" VARCHAR2(10),
"X_51" VARCHAR2(3),
"X_52" VARCHAR2(3),
"X_53" VARCHAR2(10),
"X_54" VARCHAR2(5),
"X_55" VARCHAR2(3),
"X_56" VARCHAR2(3),
"X_57" VARCHAR2(3),
"X_58" VARCHAR2(5),
"X_59" VARCHAR2(5),
"X_60" VARCHAR2(3),
"X_66" VARCHAR2(10),
"X_67" VARCHAR2(10),
"X_68" VARCHAR2(10),
"X_69" VARCHAR2(10),
"X_70" VARCHAR2(10),
"X_72" VARCHAR2(10),
"X_74" VARCHAR2(10),
"X_75" VARCHAR2(10),
"CURRENCY_CODE" VARCHAR2(3),
"ORIGINATION_DATE" DATE,
"BROKERED_DEPOSITS" VARCHAR2(10),
"TRANSACTION_NON_TRANSACTION_YN" VARCHAR2(3),
"INTEREST_BEARING_YN" VARCHAR2(3),
"CURRENCY_USQ" VARCHAR2(3),
"FED_FUNDS_YN" VARCHAR2(3),
"CUSTOMER_ID" VARCHAR2(10),
"FOREIGN_DOMESTIC" VARCHAR2(8),
"COUNTRY_CODE" VARCHAR2(5),
"SOURCE" VARCHAR2(4),
"IBF_DEPOSIT_COLUMN_YN" VARCHAR2(3),
"CUST_CLASS" VARCHAR2(10),
"AFFILIATE" VARCHAR2(10),
"MONTH_END_DATE" DATE,
"RB_ROWID" NUMBER,
"REPORTING_ENTITY" VARCHAR2(6),
"PROVENIENZA" VARCHAR2(30 BYTE), 
"USERUPD" VARCHAR2(30 BYTE), 
"DATEUPD" DATE
)
PARTITION BY HASH (MONTH_END_DATE)
INITRANS 1 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

--------------------------------------------------------
--  Indexes for Table RB_HST_DEPOSITS_02
--------------------------------------------------------

CREATE UNIQUE INDEX UI_RB_HST_DEPOSITS_02
ON RB_HST_DEPOSITS_02 (
MONTH_END_DATE,
REPORTING_ENTITY,
RB_ROWID
)
GLOBAL PARTITION BY HASH (MONTH_END_DATE)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;

CREATE INDEX IX_RB_HST_DEPOSITS_02_RE
ON RB_HST_DEPOSITS_02 (REPORTING_ENTITY)
INITRANS 2 MAXTRANS 255 NOCOMPRESS PARALLEL LOGGING;
--------------------------------------------------------
--  Constraints for Table RB_HST_DEPOSITS_02
--------------------------------------------------------

ALTER TABLE RB_HST_DEPOSITS_02 ADD CONSTRAINT PK_RB_HST_DEPOSITS_02
PRIMARY KEY (MONTH_END_DATE, REPORTING_ENTITY, RB_ROWID) USING INDEX UI_RB_HST_DEPOSITS_02 ENABLE VALIDATE;