CREATE OR REPLACE FORCE VIEW "RB_V_CONTO" (
                                  "COD_CONTO",
                                  "DESC_CONTO0",
                                  "DESC_CONTO1",
                                  "DESC_CONTO2",
                                  "DESC_CONTO3",
                                  "DESC2_CONTO0",
                                  "DESC2_CONTO1",
                                  "DESC2_CONTO2",
                                  "DESC2_CONTO3",
                                  "NATURA_CONTO",
                                  "TIPO_CONTO",
                                  "TIPO_CONVERSIONE",
                                  "SEGNO_STANDARD",
                                  "FLAG_IC",
                                  "TIPO_CAPIENZA_IC",
                                  "FLAG_CONTROLLO_SEGNO_IC",
                                  "COD_CTP_REGOLA",
                                  "FLAG_IC_AUTO",
                                  "TIPO_LIM_DEST1",
                                  "TIPO_LIM_DEST2",
                                  "TIPO_LIM_DEST3",
                                  "TIPO_LIM_DEST4",
                                  "TIPO_LIM_DEST5",
                                  "FLAG_RIVALUTAZIONE",
                                  "ATTRIBUTO1",
                                  "ATTRIBUTO2",
                                  "ATTRIBUTO3",
                                  "ATTRIBUTO4",
                                  "ATTRIBUTO5",
                                  "COD_CONTO_RATEO_DARE",
                                  "COD_CONTO_RATEO_AVERE",
                                  "COD_CONTO_RIVAL_DARE",
                                  "COD_CONTO_RIVAL_AVERE",
                                  "COD_CONTO_FLUSSO_DARE",
                                  "COD_CONTO_FLUSSO_AVERE",
                                  "COD_CONTO_LIQUIDITA_DARE",
                                  "COD_CONTO_LIQUIDITA_AVERE",
                                  "COD_CONTO_SP_DARE",
                                  "COD_CONTO_SP_AVERE",
                                  "COD_CONTO_ALTRO_DARE",
                                  "COD_CONTO_ALTRO_AVERE",
                                  "COD_SOTTOVOCE_1",
                                  "PROVENIENZA",
                                  "USERUPD",
                                  "DATEUPD",
                                  "COD_SOTTOVOCE_M",
                                  "COD_SOTTOVOCE_MIC1",
                                  "COD_SOTTOVOCE_W",
                                  "COD_SOTTOVOCE_Y",
                                  "COD_SOTTOVOCE_4",
                                  "COD_SOTTOVOCE_5",
                                  "FLAG_CAMBIO_SEGNO_M",
                                  "FLAG_CAMBIO_SEGNO_MIC1",
                                  "FLAG_CAMBIO_SEGNO_1",
                                  "FLAG_CAMBIO_SEGNO_W",
                                  "FLAG_CAMBIO_SEGNO_Y",
                                  "FLAG_CAMBIO_SEGNO_4",
                                  "FLAG_CAMBIO_SEGNO_5",
                                  "BASE_INFORMATIVA_M",
                                  "BASE_INFORMATIVA_MIC1",
                                  "BASE_INFORMATIVA_1",
                                  "BASE_INFORMATIVA_W",
                                  "BASE_INFORMATIVA_Y",
                                  "BASE_INFORMATIVA_4",
                                  "BASE_INFORMATIVA_5",
                                  "COD_CONTO_ALTRO_RATEO_DARE",
                                  "COD_CONTO_ALTRO_RATEO_AVERE",
                                  "TIPO_PARAMETRIZZAZIONE",
                                  "DATA_INIZIO",
                                  "DATA_FINE",
                                  "COD_CONTO_RIF_CAMBIO_SI",
                                  "FLAG_NO_PROPORZIONALIZZARE",
                                  "TIPO_CONTROLLO_NOTE",
                                  "FLAG_CALCOLA_LORDO_DA_IC",
                                  "LINK_DOCUMENTO",
                                  "CLASSE",
                                  "TIPO_MENSILIZZAZIONE",
                                  "COD_CONTO_RIF_MENS",
                                  "COD_CONTO_GERARCHIA_RIF_MENS",
                                  "COD_CONTO_ELEGER_RIF_MENS",
                                  "MENS_SCENARIO_RIF",
                                  "MENS_FILTRA_DEST1",
                                  "MENS_FILTRA_DEST2",
                                  "MENS_FILTRA_DEST3",
                                  "MENS_FILTRA_DEST4",
                                  "MENS_FILTRA_DEST5",
                                  "MENS_FILTRA_CATEGORIA",
                                  "MENS_FILTRA_AZI_CTP",
                                  "MENS_FILTRA_DEST2_CTP",
                                  "FLAG_CONTROLLO_CAMBIO",
                                  "FLAG_AZIENDA_NODO",
                                  "COD_AZIENDA") AS
SELECT RB_F_TGK_SANITIZE_CODE(GL_KEY_CODE) AS "COD_CONTO",
       COALESCE(GL_KEY_CODE, RB_F_TGK_SANITIZE_CODE(GL_KEY_CODE)) AS DESC_CONTO0,
       COALESCE(GL_KEY_CODE, RB_F_TGK_SANITIZE_CODE(GL_KEY_CODE)) AS DESC_CONTO1,
       CAST(NULL AS VARCHAR2(2000BYTE)) AS "DESC_CONTO2",
       CAST(NULL AS VARCHAR2(2000BYTE)) AS "DESC_CONTO3",
       GL_KEY_CODE AS DESC2_CONTO0,
       GL_KEY_CODE AS DESC2_CONTO1,
       CAST(NULL AS VARCHAR2(600BYTE)) AS "DESC2_CONTO2",
       CAST(NULL AS VARCHAR2(600BYTE)) AS "DESC2_CONTO3",
       CAST('P' AS VARCHAR2(1BYTE)) AS "NATURA_CONTO",
       CAST('N' AS VARCHAR2(1BYTE)) AS "TIPO_CONTO",
       CAST('1' AS VARCHAR2(1BYTE)) AS "TIPO_CONVERSIONE",
       CAST('X' AS VARCHAR2(1BYTE)) AS "SEGNO_STANDARD",
       CAST(NULL AS NUMBER(1,0)) AS "FLAG_IC",
       CAST(NULL AS VARCHAR2(1BYTE)) AS "TIPO_CAPIENZA_IC",
       CAST(NULL AS NUMBER(1,0)) AS "FLAG_CONTROLLO_SEGNO_IC",
       CAST(NULL AS VARCHAR2(5BYTE)) AS "COD_CTP_REGOLA",
       CAST(NULL AS NUMBER(1,0)) AS "FLAG_IC_AUTO",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "TIPO_LIM_DEST1",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "TIPO_LIM_DEST2",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "TIPO_LIM_DEST3",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "TIPO_LIM_DEST4",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "TIPO_LIM_DEST5",
       CAST(NULL AS NUMBER(1,0)) AS "FLAG_RIVALUTAZIONE",
       CAST(NULL AS VARCHAR2(330BYTE)) AS "ATTRIBUTO1",
       CAST(NULL AS VARCHAR2(330BYTE)) AS "ATTRIBUTO2",
       CAST(NULL AS VARCHAR2(330BYTE)) AS "ATTRIBUTO3",
       CAST(NULL AS VARCHAR2(330BYTE)) AS "ATTRIBUTO4",
       CAST(NULL AS VARCHAR2(330BYTE)) AS "ATTRIBUTO5",
       CAST(NULL AS VARCHAR2(30BYTE)) AS "COD_CONTO_RATEO_DARE",
       CAST(NULL AS VARCHAR2(30BYTE)) AS "COD_CONTO_RATEO_AVERE",
       CAST(NULL AS VARCHAR2(30BYTE)) AS "COD_CONTO_RIVAL_DARE",
       CAST(NULL AS VARCHAR2(30BYTE)) AS "COD_CONTO_RIVAL_AVERE",
       CAST(NULL AS VARCHAR2(30BYTE)) AS "COD_CONTO_FLUSSO_DARE",
       CAST(NULL AS VARCHAR2(30BYTE)) AS "COD_CONTO_FLUSSO_AVERE",
       CAST(NULL AS VARCHAR2(30BYTE)) AS "COD_CONTO_LIQUIDITA_DARE",
       CAST(NULL AS VARCHAR2(30BYTE)) AS "COD_CONTO_LIQUIDITA_AVERE",
       CAST(NULL AS VARCHAR2(30BYTE)) AS "COD_CONTO_SP_DARE",
       CAST(NULL AS VARCHAR2(30BYTE)) AS "COD_CONTO_SP_AVERE",
       CAST(NULL AS VARCHAR2(30BYTE)) AS "COD_CONTO_ALTRO_DARE",
       CAST(NULL AS VARCHAR2(30BYTE)) AS "COD_CONTO_ALTRO_AVERE",
       CAST(NULL AS VARCHAR2(7BYTE)) AS "COD_SOTTOVOCE_1",
       CAST(NULL AS VARCHAR2(80BYTE)) AS "PROVENIENZA",
       CAST(NULL AS VARCHAR2(30BYTE)) AS "USERUPD",
       CAST(NULL AS DATE) AS "DATEUPD",
       CAST(NULL AS VARCHAR2(7BYTE)) AS "COD_SOTTOVOCE_M",
       CAST(NULL AS VARCHAR2(7BYTE)) AS "COD_SOTTOVOCE_MIC1",
       CAST(NULL AS VARCHAR2(7BYTE)) AS "COD_SOTTOVOCE_W",
       CAST(NULL AS VARCHAR2(7BYTE)) AS "COD_SOTTOVOCE_Y",
       CAST(NULL AS VARCHAR2(7BYTE)) AS "COD_SOTTOVOCE_4",
       CAST(NULL AS VARCHAR2(7BYTE)) AS "COD_SOTTOVOCE_5",
       CAST(NULL AS NUMBER(1,0)) AS "FLAG_CAMBIO_SEGNO_M",
       CAST(NULL AS NUMBER(1,0)) AS "FLAG_CAMBIO_SEGNO_MIC1",
       CAST(NULL AS NUMBER(1,0)) AS "FLAG_CAMBIO_SEGNO_1",
       CAST(NULL AS NUMBER(1,0)) AS "FLAG_CAMBIO_SEGNO_W",
       CAST(NULL AS NUMBER(1,0)) AS "FLAG_CAMBIO_SEGNO_Y",
       CAST(NULL AS NUMBER(1,0)) AS "FLAG_CAMBIO_SEGNO_4",
       CAST(NULL AS NUMBER(1,0)) AS "FLAG_CAMBIO_SEGNO_5",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "BASE_INFORMATIVA_M",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "BASE_INFORMATIVA_MIC1",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "BASE_INFORMATIVA_1",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "BASE_INFORMATIVA_W",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "BASE_INFORMATIVA_Y",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "BASE_INFORMATIVA_4",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "BASE_INFORMATIVA_5",
       CAST(NULL AS VARCHAR2(30BYTE)) AS "COD_CONTO_ALTRO_RATEO_DARE",
       CAST(NULL AS VARCHAR2(30BYTE)) AS "COD_CONTO_ALTRO_RATEO_AVERE",
       CAST(NULL AS VARCHAR2(1BYTE)) AS "TIPO_PARAMETRIZZAZIONE",
       CAST(NULL AS DATE) AS DATA_INIZIO,
       CAST(NULL AS DATE) AS DATA_FINE,
       CAST(NULL AS VARCHAR2(30BYTE)) AS "COD_CONTO_RIF_CAMBIO_SI",
       CAST(NULL AS NUMBER(1,0)) AS "FLAG_NO_PROPORZIONALIZZARE",
       CAST(NULL AS VARCHAR2(1BYTE)) AS "TIPO_CONTROLLO_NOTE",
       CAST(NULL AS NUMBER(1,0)) AS "FLAG_CALCOLA_LORDO_DA_IC",
       CAST(NULL AS VARCHAR2(2000BYTE)) AS "LINK_DOCUMENTO",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "CLASSE",
       CAST(NULL AS VARCHAR2(3BYTE)) AS "TIPO_MENSILIZZAZIONE",
       CAST(NULL AS VARCHAR2(30BYTE)) AS "COD_CONTO_RIF_MENS",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "COD_CONTO_GERARCHIA_RIF_MENS",
       CAST(NULL AS VARCHAR2(30BYTE)) AS "COD_CONTO_ELEGER_RIF_MENS",
       CAST(NULL AS VARCHAR2(150BYTE)) AS "MENS_SCENARIO_RIF",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "MENS_FILTRA_DEST1",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "MENS_FILTRA_DEST2",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "MENS_FILTRA_DEST3",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "MENS_FILTRA_DEST4",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "MENS_FILTRA_DEST5",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "MENS_FILTRA_CATEGORIA",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "MENS_FILTRA_AZI_CTP",
       CAST(NULL AS VARCHAR2(2BYTE)) AS "MENS_FILTRA_DEST2_CTP",
       CAST(NULL AS NUMBER(1,0)) AS "FLAG_CONTROLLO_CAMBIO",
       CAST(NULL AS NUMBER(1,0)) AS "FLAG_AZIENDA_NODO",
       RB_F_TGK_SANITIZE_CODE(BUSINESS_UNIT) AS COD_AZIENDA
FROM
  ( SELECT GL_KEY_CODE,
           BUSINESS_UNIT
   FROM RB_MV_HST_CASH_01_GL_KEY_CODE
   UNION SELECT GL_KEY_CODE,
                BUSINESS_UNIT
   FROM RB_MV_HST_GL_01_GL_KEY_CODE
   UNION SELECT GL_KEY_CODE,
                BUSINESS_UNIT
   FROM RB_MV_HST_LOAN_GL_KEY_CODE
   UNION SELECT GL_KEY_CODE,
                BUSINESS_UNIT
   FROM RB_MV_HST_SECURITY_GL_KEY_CODE
   UNION SELECT GL_KEY_CODE,
                BUSINESS_UNIT
   FROM RB_MV_HST_OFF_BS_GL_KEY_CODE
   UNION SELECT GL_KEY_CODE,
                BUSINESS_UNIT
   FROM RB_MV_HST_DER_GL_KEY_CODE
   UNION SELECT GL_KEY_CODE,
                BUSINESS_UNIT
   FROM RB_MV_HST_BOR_GL_KEY_CODE
   UNION SELECT GL_KEY_CODE,
                BUSINESS_UNIT
   FROM RB_MV_HST_OREO_GL_KEY_CODE
   UNION SELECT GL_KEY_CODE,
                BUSINESS_UNIT
   FROM RB_MV_HST_DEPOSITS_GL_KEY_CODE ) GLKC
;

