SELECT
  CASE
   WHEN A.DATA_SOURCE IS NULL AND P.DATA_SOURCE IS NOT NULL
      THEN CAST('OLD' AS VARCHAR(8))
   WHEN P.DATA_SOURCE IS NULL AND A.DATA_SOURCE IS NOT NULL
      THEN CAST('NEW' AS VARCHAR(8))
   WHEN  A.IMPORTO <> P.IMPORTO
          OR A.IMPORTO IS NULL AND P.IMPORTO IS NOT NULL
          OR A.IMPORTO IS NOT NULL AND P.IMPORTO IS NULL
      THEN CAST('VARIANCE' AS VARCHAR(8))
    WHEN  A.IMPORTO_VALUTA_ORIGINARIA <> P.IMPORTO_VALUTA_ORIGINARIA
      OR A.IMPORTO_VALUTA_ORIGINARIA IS NULL AND P.IMPORTO_VALUTA_ORIGINARIA IS NOT NULL
      OR A.IMPORTO_VALUTA_ORIGINARIA IS NOT NULL AND P.IMPORTO_VALUTA_ORIGINARIA IS NULL
    THEN CAST('VARIANCE' AS VARCHAR(8))
    ELSE CAST('OK' AS VARCHAR(8))
  END AS VARIANCE_INDICATOR,
  COALESCE(A.DATA_SOURCE, P.DATA_SOURCE) AS DATA_SOURCE,
  COALESCE(A.COD_CONTO, P.COD_CONTO) AS COD_CONTO,
  COALESCE(A.COD_AZIENDA, P.COD_AZIENDA) AS COD_AZIENDA,
  COALESCE(A.COD_AZI_CTP, P.COD_AZI_CTP) AS COD_AZI_CTP,
  COALESCE(A.COD_CATEGORIA, P.COD_CATEGORIA) AS COD_CATEGORIA,
  COALESCE(A.COD_DEST1, P.COD_DEST1) AS COD_DEST1,
	CASE
		WHEN SUBSTR(COALESCE(A.COD_DEST2, P.COD_DEST2), 1, 3) = 'BLC'
			THEN SUBSTR(COALESCE(A.COD_DEST2, P.COD_DEST2), 5)
		ELSE RB_F_TGK_SANITIZE_CODE(NULL)
	END AS OPERATING_UNIT,
	CASE
		WHEN SUBSTR(COALESCE(A.COD_DEST2, P.COD_DEST2), 1, 3) = 'DPT'
			THEN SUBSTR(COALESCE(A.COD_DEST2, P.COD_DEST2), 5)
		ELSE RB_F_TGK_SANITIZE_CODE(NULL)
	END AS DEPTID,
	CASE
		WHEN SUBSTR(COALESCE(A.COD_DEST2_CTP, P.COD_DEST2_CTP), 1, 3) = 'BLC'
			THEN SUBSTR(COALESCE(A.COD_DEST2_CTP, P.COD_DEST2_CTP), 5)
		ELSE RB_F_TGK_SANITIZE_CODE(NULL)
	END AS AFFILIATE_OBU,
	CASE
		WHEN SUBSTR(COALESCE(A.COD_DEST2_CTP, P.COD_DEST2_CTP), 1, 3) = 'DPT'
			THEN SUBSTR(COALESCE(A.COD_DEST2_CTP, P.COD_DEST2_CTP), 5)
		ELSE NULL
	END AS AFFILIATE_DEPTID,
  COALESCE(A.COD_DEST3, P.COD_DEST3) AS COD_DEST3,
  COALESCE(A.COD_DEST4, P.COD_DEST4) AS COD_DEST4,
  COALESCE(A.COD_DEST5, P.COD_DEST5) AS COD_DEST5,
  COALESCE(A.COD_VALUTA, P.COD_VALUTA) AS COD_VALUTA,
  COALESCE(A.COD_VALUTA_ORIGINARIA, P.COD_VALUTA_ORIGINARIA) AS COD_VALUTA_ORIGINARIA,
  COALESCE(A.NOTE, P.NOTE) AS NOTE,
  COALESCE(A.IMPORTO, 0) - COALESCE(P.IMPORTO, 0) AS IMPORTO,
  COALESCE(A.IMPORTO_VALUTA_ORIGINARIA, 0) - COALESCE(P.IMPORTO_VALUTA_ORIGINARIA, 0) AS IMPORTO_VALUTA_ORIGINARIA,
  ${CONCATENATE($Account.code, " (", PARENT($Account(HIERARCHY("RE"))).code, " - ", PARENT($Account(HIERARCHY("RE"))).desc, ": ", $Account.attribute4, " - ", $Account.attribute5, ")")} AS LINE_ITEM
FROM
(
  SELECT
    DATA.SOURCE AS DATA_SOURCE,
    DATA.COD_CONTO,
    DATA.COD_AZIENDA,
    DATA.COD_AZI_CTP,
    DATA.COD_CATEGORIA,
    DATA.COD_DEST1,
    DATA.COD_DEST2,
    DATA.COD_DEST2_CTP,
    DATA.COD_DEST3,
    DATA.COD_DEST4,
    DATA.COD_DEST5,
    DATA.COD_VALUTA,
    DATA.COD_VALUTA_ORIGINARIA,
    DATA.NOTE,
    SUM(DATA.IMPORTO_1) AS IMPORTO,
    SUM(DATA.IMPORTO_2) AS IMPORTO_VALUTA_ORIGINARIA
  FROM
	  RB_DRILL_INSTRUMENT DRILL
  INNER JOIN
	  RB_V_GL_AND_MANUAL_IC DATA
	  ON
		DRILL.OID_FORM_DATI = DATA.OID_FORM_DATI
  WHERE
	  DRILL.COD_SCENARIO = ${A1}
	  AND DRILL.COD_PERIODO = ${B1}
	  AND DRILL.COD_AZIENDA IN (${$Entity.code})
    AND DRILL.COD_CONTO IN (${$Account.code})
	  AND DRILL.COD_DEST1 IN (${$Cust_Dim1.code})
	  AND DRILL.COD_DEST2 IN (${$Cust_Dim2.code})
	  AND DRILL.COD_DEST3 IN (${$Cust_Dim3.code})
	  AND DRILL.COD_DEST4 IN (${$Cust_Dim4.code})
	  AND DRILL.COD_DEST5 IN (${$Cust_Dim5.code})
	  AND DRILL.COD_CATEGORIA IN (${$Category.code})
  GROUP BY
    DATA.SOURCE,
    DATA.COD_CONTO,
    DATA.COD_AZIENDA,
    DATA.COD_AZI_CTP,
    DATA.COD_CATEGORIA,
    DATA.COD_DEST1,
    DATA.COD_DEST2,
    DATA.COD_DEST2_CTP,
    DATA.COD_DEST3,
    DATA.COD_DEST4,
    DATA.COD_DEST5,
    DATA.COD_VALUTA,
    DATA.COD_VALUTA_ORIGINARIA,
    DATA.NOTE
	UNION ALL
   SELECT
    'ADJUSTMENT' AS DATA_SOURCE,
    DATA.COD_CONTO,
    DATA.COD_AZIENDA,
    DATA.COD_AZI_CTP,
    DATA.COD_CATEGORIA,
    DATA.COD_DEST1,
    DATA.COD_DEST2,
    DATA.COD_DEST2_CTP,
    DATA.COD_DEST3,
    DATA.COD_DEST4,
    DATA.COD_DEST5,
    DATA.COD_VALUTA,
    DATA.COD_VALUTA2 AS COD_VALUTA_ORIGINARIA,
    DATA.NOTE,
    SUM(DATA.IMPORTO2) * 1000 AS IMPORTO,
    SUM(DATA.IMPORTO2) * 1000 AS IMPORTO_VALUTA_ORIGINARIA
  FROM
    DATI_RETT_RIGA DATA
  WHERE
	  DATA.COD_SCENARIO = ${A1}
	  AND DATA.COD_PERIODO = ${B1}
	  AND DATA.COD_AZIENDA IN (${$Entity.code})
	  AND DATA.COD_CONTO IN (${$Account.code})
	  AND DATA.COD_DEST1 IN (${$Cust_Dim1.code})
	  AND DATA.COD_DEST2 IN (${$Cust_Dim2.code})
	  AND DATA.COD_DEST3 IN (${$Cust_Dim3.code})
	  AND DATA.COD_DEST4 IN (${$Cust_Dim4.code})
	  AND DATA.COD_DEST5 IN (${$Cust_Dim5.code})
	  AND DATA.COD_CATEGORIA IN (${$Category.code})
  GROUP BY
    DATA.COD_CONTO,
    DATA.COD_AZIENDA,
    DATA.COD_AZI_CTP,
    DATA.COD_CATEGORIA,
    DATA.COD_DEST1,
    DATA.COD_DEST2,
    DATA.COD_DEST2_CTP,
    DATA.COD_DEST3,
    DATA.COD_DEST4,
    DATA.COD_DEST5,
    DATA.COD_VALUTA,
    DATA.COD_VALUTA2,
    DATA.NOTE
) A
FULL OUTER JOIN
(
  SELECT
    DATA.SOURCE AS DATA_SOURCE,
    DATA.COD_CONTO,
    DATA.COD_AZIENDA,
    DATA.COD_AZI_CTP,
    DATA.COD_CATEGORIA,
    DATA.COD_DEST1,
    DATA.COD_DEST2,
    DATA.COD_DEST2_CTP,
    DATA.COD_DEST3,
    DATA.COD_DEST4,
    DATA.COD_DEST5,
    DATA.COD_VALUTA,
    DATA.COD_VALUTA_ORIGINARIA,
    DATA.NOTE,
    SUM(DATA.IMPORTO_1) AS IMPORTO,
    SUM(DATA.IMPORTO_2) AS IMPORTO_VALUTA_ORIGINARIA
  FROM
	  RB_DRILL_INSTRUMENT DRILL
  INNER JOIN
	  RB_V_GL_AND_MANUAL_IC DATA
	  ON
		DRILL.OID_FORM_DATI = DATA.OID_FORM_DATI
  WHERE
	  DRILL.COD_SCENARIO = ${A2}
	  AND DRILL.COD_PERIODO = ${B2}
	  AND DRILL.COD_AZIENDA IN (${$Entity.code})
    AND DRILL.COD_CONTO IN (${$Account.code})
	  AND DRILL.COD_DEST1 IN (${$Cust_Dim1.code})
	  AND DRILL.COD_DEST2 IN (${$Cust_Dim2.code})
	  AND DRILL.COD_DEST3 IN (${$Cust_Dim3.code})
	  AND DRILL.COD_DEST4 IN (${$Cust_Dim4.code})
	  AND DRILL.COD_DEST5 IN (${$Cust_Dim5.code})
	  AND DRILL.COD_CATEGORIA IN (${$Category.code})
  GROUP BY
    DATA.SOURCE,
    DATA.COD_CONTO,
    DATA.COD_AZIENDA,
    DATA.COD_AZI_CTP,
    DATA.COD_CATEGORIA,
    DATA.COD_DEST1,
    DATA.COD_DEST2,
    DATA.COD_DEST2_CTP,
    DATA.COD_DEST3,
    DATA.COD_DEST4,
    DATA.COD_DEST5,
    DATA.COD_VALUTA,
    DATA.COD_VALUTA_ORIGINARIA,
    DATA.NOTE
	UNION ALL
   SELECT
    'ADJUSTMENT' AS DATA_SOURCE,
    DATA.COD_CONTO,
    DATA.COD_AZIENDA,
    DATA.COD_AZI_CTP,
    DATA.COD_CATEGORIA,
    DATA.COD_DEST1,
    DATA.COD_DEST2,
    DATA.COD_DEST2_CTP,
    DATA.COD_DEST3,
    DATA.COD_DEST4,
    DATA.COD_DEST5,
    DATA.COD_VALUTA,
    DATA.COD_VALUTA2 AS COD_VALUTA_ORIGINARIA,
    DATA.NOTE,
    SUM(DATA.IMPORTO2) * 1000 AS IMPORTO,
    SUM(DATA.IMPORTO2) * 1000 AS IMPORTO_VALUTA_ORIGINARIA
  FROM
    DATI_RETT_RIGA DATA
  WHERE
	  DATA.COD_SCENARIO = ${A2}
	  AND DATA.COD_PERIODO = ${B2}
	  AND DATA.COD_AZIENDA IN (${$Entity.code})
	  AND DATA.COD_CONTO IN (${$Account.code})
	  AND DATA.COD_DEST1 IN (${$Cust_Dim1.code})
	  AND DATA.COD_DEST2 IN (${$Cust_Dim2.code})
	  AND DATA.COD_DEST3 IN (${$Cust_Dim3.code})
	  AND DATA.COD_DEST4 IN (${$Cust_Dim4.code})
	  AND DATA.COD_DEST5 IN (${$Cust_Dim5.code})
	  AND DATA.COD_CATEGORIA IN (${$Category.code})
  GROUP BY
    DATA.COD_CONTO,
    DATA.COD_AZIENDA,
    DATA.COD_AZI_CTP,
    DATA.COD_CATEGORIA,
    DATA.COD_DEST1,
    DATA.COD_DEST2,
    DATA.COD_DEST2_CTP,
    DATA.COD_DEST3,
    DATA.COD_DEST4,
    DATA.COD_DEST5,
    DATA.COD_VALUTA,
    DATA.COD_VALUTA2,
    DATA.NOTE
  ) P
ON
  A.DATA_SOURCE = P.DATA_SOURCE
  AND A.COD_CONTO = P.COD_CONTO
  AND A.COD_AZIENDA = P.COD_AZIENDA
  AND A.COD_AZI_CTP = P.COD_AZI_CTP
  AND A.COD_CATEGORIA = P.COD_CATEGORIA
  AND A.COD_DEST1 = P.COD_DEST1
  AND A.COD_DEST2 = P.COD_DEST2
  AND A.COD_DEST2_CTP = P.COD_DEST2_CTP
  AND A.COD_DEST3 = P.COD_DEST3
  AND A.COD_DEST4 = P.COD_DEST4
  AND A.COD_DEST5 = P.COD_DEST5
  AND A.COD_VALUTA = P.COD_VALUTA
  AND A.COD_VALUTA_ORIGINARIA = P.COD_VALUTA_ORIGINARIA
  AND A.NOTE = P.NOTE