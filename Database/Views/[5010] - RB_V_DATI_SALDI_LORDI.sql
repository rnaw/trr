--------------------------------------------------------
--  DDL for View RB_V_DATI_SALDI_LORDI
--------------------------------------------------------

CREATE OR REPLACE NOFORCE VIEW RB_V_DATI_SALDI_LORDI
AS SELECT
  RB_F_TGK_CREATE_SCENARIO_CODE(TO_DATE(FISCAL_YEAR||'12'||'31', 'YYYYMMDD')) AS COD_SCENARIO,
  RB_F_TGK_SANITIZE_CODE(COD_PERIODO) AS COD_PERIODO,
  RB_F_TGK_SANITIZE_CODE(BUSINESS_UNIT) AS COD_AZIENDA,
  RB_F_TGK_SANITIZE_CODE(ACCOUNT) AS COD_CONTO,
  CASE
	WHEN RB_BALANCE_TYPE = 'EOM' THEN 'ORI'
	WHEN RB_BALANCE_TYPE = 'MTDAVG' THEN 'MTD_AVG'
	WHEN RB_BALANCE_TYPE = 'QTDAVG' THEN 'QTD_AVG'
	WHEN RB_BALANCE_TYPE = 'YTDAVG' THEN 'YTD_AVG'
	ELSE NULL
  END AS COD_CATEGORIA,
  RB_F_TGK_SANITIZE_CODE(GL_KEY_CODE) AS COD_DEST1,
  CASE
	WHEN OPERATING_UNIT IS NOT NULL THEN 'BLC_'||RB_F_TGK_SANITIZE_CODE(OPERATING_UNIT)
  WHEN DEPTID IS NOT NULL THEN 'DPT_'||RB_F_TGK_SANITIZE_CODE(DEPTID)
	ELSE RB_F_TGK_SANITIZE_CODE(NULL)
  END AS COD_DEST2,
  RB_F_TGK_SANITIZE_CODE(PRODUCT) AS COD_DEST3,
  RB_F_TGK_SANITIZE_CODE(CUST_CLASS) AS COD_DEST4,
  RB_F_TGK_SANITIZE_CODE(CAST(NULL AS VARCHAR(30))) AS COD_DEST5,
  BASE_CURRENCY AS COD_VALUTA,
  CURRENCY_CODE AS COD_VALUTA_ORIGINARIA,
  IMPORTO,
  IMPORTO_VALUTA_ORIGINARIA,
  RB_F_TGK_SANITIZE_CODE(REPORTING_ENTITY) AS NOTE,
  PROVENIENZA,
  USERUPD,
  DATEUPD
FROM
  (
    SELECT
      REPORTING_ENTITY,
      GL_KEY_CODE,
      CONSOL_NODE,
      BUSINESS_UNIT,
      OPERATING_UNIT,
      RB_BALANCE_TYPE,
      SOURCE,
      FISCAL_YEAR,
      COD_PERIODO,
      BASE_CURRENCY,
      CURRENCY_CODE,
      ACCOUNT,
      DEPTID,
      PRODUCT,
      CUST_CLASS,
      AFFILIATE,
      OBU_AFFILIATE,
      PROJECT_ID,
      PROVENIENZA,
      IMPORTO,
      IMPORTO_VALUTA_ORIGINARIA,
      USERUPD,
      DATEUPD
    FROM
      (
        SELECT
          DATA.REPORTING_ENTITY,
          DATA.GL_KEY_CODE,
          DATA.CONSOL_NODE,
          DATA.BUSINESS_UNIT,
          DATA.OPERATING_UNIT,
          DATA.RB_BALANCE_TYPE,
          DATA.SOURCE,
          DATA.FISCAL_YEAR,
          DATA.BASE_CURRENCY,
          DATA.JAN_BASE,
          DATA.FEB_BASE,
          DATA.MAR_BASE,
          DATA.APR_BASE,
          DATA.MAY_BASE,
          DATA.JUNE_BASE,
          DATA.JULY_BASE,
          DATA.AUG_BASE,
          DATA.SEP_BASE,
          DATA.OCT_BASE,
          DATA.NOV_BASE,
          DATA.DEC_BASE,
          DATA.CURRENCY_CODE,
          DATA.JAN_ORIG,
          DATA.FEB_ORIG,
          DATA.MAR_ORIG,
          DATA.APR_ORIG,
          DATA.MAY_ORIG,
          DATA.JUNE_ORIG,
          DATA.JULY_ORIG,
          DATA.AUG_ORIG,
          DATA.SEP_ORIG,
          DATA.OCT_ORIG,
          DATA.NOV_ORIG,
          DATA.DEC_ORIG,
          DATA.ACCOUNT,
          DATA.DEPTID,
          DATA.PRODUCT,
          DATA.CUST_CLASS,
          DATA.AFFILIATE,
          DATA.OBU_AFFILIATE,
          DATA.PROJECT_ID,
          DATA.PROVENIENZA,
          DATA.USERUPD,
          DATA.DATEUPD
        FROM
          RB_HST_GL_01 DATA
        )
        UNPIVOT (
          (IMPORTO, IMPORTO_VALUTA_ORIGINARIA) FOR COD_PERIODO IN (
            (JAN_BASE, JAN_ORIG) AS '01',
            (FEB_BASE, FEB_ORIG) AS '02',
            (MAR_BASE, MAR_ORIG) AS '03',
            (APR_BASE, APR_ORIG) AS '04',
            (MAY_BASE, MAY_ORIG) AS '05',
            (JUNE_BASE, JUNE_ORIG) AS '06',
            (JULY_BASE, JULY_ORIG) AS '07',
            (AUG_BASE, AUG_ORIG) AS '08',
            (SEP_BASE, SEP_ORIG) AS '09',
            (OCT_BASE, OCT_ORIG) AS '10',
            (NOV_BASE, NOV_ORIG) AS '11',
            (DEC_BASE, DEC_ORIG) AS '12'
          )
        )
  );