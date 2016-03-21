--------------------------------------------------------
--  DDL for View RB_V_GL_AND_MANUAL_IC --------------------------------------------------------
CREATE OR REPLACE FORCE VIEW RB_V_GL_AND_MANUAL_IC (
  SOURCE,
  OID_FORM_DATI,
  COD_SCENARIO,
  COD_PERIODO,
  COD_CONTO,
  COD_AZIENDA,
  COD_AZI_CTP,
  COD_CATEGORIA,
  COD_DEST1,
  COD_DEST2,
  COD_DEST2_CTP,
  COD_DEST3,
  COD_DEST4,
  COD_DEST5,
  COD_VALUTA,
  COD_VALUTA_ORIGINARIA,
  IMPORTO_1,
  IMPORTO_2,
  NUM_RETTIFICA,
  NOTE
)AS
SELECT
  CAST('GL' AS VARCHAR2(10)) AS SOURCE,
  OID_FORM_DATI,
  COD_SCENARIO,
  COD_PERIODO,
  COD_CONTO,
  COD_AZIENDA,
  COD_AZI_CTP,
  COD_CATEGORIA,
  COD_DEST1,
  COD_DEST2,
  COD_DEST2_CTP,
  COD_DEST3,
  COD_DEST4,
  COD_DEST5,
  COD_VALUTA,
  COD_VALUTA_ORIGINARIA,
  IMPORTO_1,
  IMPORTO_2,
  CAST(NULL AS VARCHAR2(200)) AS NUM_RETTIFICA,
  TESTO_1 AS NOTE
FROM
  FORM_DATI
WHERE
  COD_PROSPETTO = 'GL'
UNION ALL
SELECT
  CAST('MANUAL_IC' AS VARCHAR2(10)) AS SOURCE,
  OID_DATI_RETT_RIGA AS OID_FORM_DATI,
  COD_SCENARIO,
  COD_PERIODO,
  COD_CONTO,
  COD_AZIENDA,
  COD_AZI_CTP,
  'ORI' AS COD_CATEGORIA,
  COD_DEST1,
  COD_DEST2,
  COD_DEST2_CTP,
  COD_DEST3,
  COD_DEST4,
  COD_DEST5,
  COD_VALUTA,
  COD_VALUTA2 AS COD_VALUTA_ORIGINARIA,
  -IMPORTO AS IMPORTO_1,
  -IMPORTO2 AS IMPORTO_2,
  NUM_RETTIFICA,
  NOTE
FROM
  DATI_RETT_RIGA
WHERE
  COD_CATEGORIA = 'IC_APPROVED'