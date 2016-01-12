SELECT
    A.COD_SCENARIO,
    A.COD_PERIODO,
    CGG.DESC_CONTO_ELEGER0 AS DESC_CONTO_ELEGER00,
    C.ATTRIBUTO5 AS FED_CALL_CODE,
    CG.DESC_CONTO_ELEGER0,
    A.DATA_SOURCE,
    A.COD_AZIENDA AS BUSINESS_UNIT,
    A.COD_AZI_CTP AS AFFILIATE,
    A.COD_CONTO AS GL_KEY_CODE,
    A.COD_CATEGORIA AS CATEGORY,
    A.COD_DEST1 AS GL_ACCOUNT,
    CASE
        WHEN SUBSTR(A.COD_DEST2, 3) = 'BLC'
            THEN SUBSTR(A.COD_DEST2, 5)
        ELSE NULL
    END AS OPERATING_UNIT,
    CASE
        WHEN SUBSTR(A.COD_DEST2, 3) = 'DPT'
            THEN SUBSTR(A.COD_DEST2, 5)
        ELSE NULL
    END AS DEPTID,
    CASE
        WHEN SUBSTR(A.COD_DEST2_CTP, 3) = 'BLC'
            THEN SUBSTR(A.COD_DEST2_CTP, 5)
        ELSE NULL
    END AS AFFILIATE_OBU,
    CASE
        WHEN SUBSTR(A.COD_DEST2_CTP, 3) = 'DPT'
            THEN SUBSTR(A.COD_DEST2_CTP, 5)
        ELSE NULL
    END AS AFFILIATE_DEPTID,
    A.COD_DEST3 AS PRODUCT,
    A.COD_DEST4 AS CUSTOMER_CLASS,
    A.COD_DEST5 AS CALL_CODE,
    A.NOTE AS PROJECTID,
    A.COD_VALUTA AS BASE_CURRENCY,
    A.IMPORTO AS BASE_EQUIVALENT,
    A.COD_VALUTA_ORIGINARIA AS CURRENCY_CD,
    A.IMPORTO_VALUTA_ORIGINARIA AS FOREIGN_EQUIVALENT
FROM 
    (
        SELECT
            'ADJUSTMENTS' AS DATA_SOURCE,
            D.COD_CONTO AS COD_CONTO_REP,
            D.COD_SCENARIO,
            D.COD_PERIODO,
            D.COD_AZIENDA,
            D.COD_AZI_CTP,
            D.COD_CONTO,
            COD_CATEGORIA,
            COD_DEST1,
            D.COD_DEST2,
            D.COD_DEST2_CTP,
            D.COD_DEST3,
            D.COD_DEST4,
            D.COD_DEST5,
            NOTE,
            COD_VALUTA,
            D.IMPORTO * 1000 AS IMPORTO,
            D.COD_VALUTA2 AS COD_VALUTA_ORIGINARIA,
            D.IMPORTO2 * 1000 AS IMPORTO_VALUTA_ORIGINARIA
        FROM
            DATI_RETT_RIGA D
            INNER JOIN
            (
                SELECT DISTINCT
                    DRILL.COD_SCENARIO,
                    DRILL.COD_PERIODO,
                    DRILL.COD_CONTO
                FROM
                    RB_DRILL_INSTRUMENT DRILL
                    INNER JOIN
                    DATI_SALDI_LORDI FD
                    ON
                        DRILL.OID_FORM_DATI = FD.OID_DATI_SALDI_LORDI
          WHERE
            DRILL.COD_AZIENDA IN (${$Entity.code})
            ) DRILL
            ON
                D.COD_SCENARIO = DRILL.COD_SCENARIO
                AND D.COD_PERIODO = DRILL.COD_PERIODO
                AND D.COD_CONTO = DRILL.COD_CONTO
        WHERE
            D.COD_SCENARIO IN (${$Scenario.code})
            AND D.COD_PERIODO IN (${$Period.code})
      AND D.COD_AZIENDA IN (${$Entity.code})
            AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 3) = ${A1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 4) = ${B1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 7) IS NULL
            AND D.COD_CATEGORIA IN ('ADJ_REP_R', 'ADJ_REP_NR')
        UNION ALL
        SELECT
            'ORIGINAL' AS DATA_SOURCE,
      A.COD_CONTO AS COD_CONTO_REP,
            B.COD_SCENARIO,
            B.COD_PERIODO,
            B.COD_AZIENDA,
            B.COD_AZI_CTP,
            B.COD_CONTO,
      B.COD_CATEGORIA,
            B.COD_DEST1,
            B.COD_DEST2,
            B.COD_DEST2_CTP,
      B.COD_DEST3,
            B.COD_DEST4,
            B.COD_DEST5,
            B.NOTE,
            B.COD_VALUTA,
            SUM(B.IMPORTO),
            B.COD_VALUTA_ORIGINARIA,
            SUM(B.IMPORTO_VALUTA_ORIGINARIA)
    FROM
            (
        SELECT DISTINCT
          COD_SCENARIO,
          COD_PERIODO,
          COD_CONTO
        FROM
          DATI_SALDI_LORDI
        WHERE
          COD_CATEGORIA = 'ORI_REP'
          AND PROVENIENZA LIKE REPLACE(
CASE
WHEN
${B1} = 'RAL'
THEN
'MAP_REP_' || ${A1} || '_' || SUBSTR(${B1},1,2) || '_%'
ELSE
'MAP_REP_' || ${A1} || '_' || ${B1} || '_%'
END
, '-', '_')
          AND COD_AZIENDA IN (${$Entity.code})
      )  C
      INNER JOIN
      RB_DRILL_INSTRUMENT A
      ON
        A.COD_SCENARIO = C.COD_SCENARIO
        AND A.COD_PERIODO = C.COD_PERIODO
        AND A.COD_CONTO = C.COD_CONTO
      INNER JOIN
      RB_V_APP_GL B
      ON
        A.OID_FORM_DATI = B.OID_DATI_SALDI_LORDI
    WHERE
      A.COD_SCENARIO IN (${$Scenario.code})
      AND A.COD_PERIODO IN (${$Period.code})
      AND A.COD_AZIENDA IN (${$Entity.code})
      AND A.PROVENIENZA LIKE REPLACE(
CASE
WHEN
${B1} = 'RAL'
THEN
'MAP_REP_' || ${A1} || '_' || SUBSTR(${B1},1,2) || '_%'
ELSE
'MAP_REP_' || ${A1} || '_' || ${B1} || '_%'
END
, '-', '_')
      AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 3) = ${A1}
      AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 4) = ${B1}
      AND RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO, 'RE', 7) IS NULL
      AND A.COD_CATEGORIA IN ('ORI_REP')
    GROUP BY
      A.COD_CONTO,
            B.COD_SCENARIO,
            B.COD_PERIODO,
            B.COD_AZIENDA,
            B.COD_AZI_CTP,
            B.COD_CONTO,
      B.COD_CATEGORIA,
            B.COD_DEST1,
            B.COD_DEST2,
            B.COD_DEST2_CTP,
      B.COD_DEST3,
            B.COD_DEST4,
            B.COD_DEST5,
            B.NOTE,
            B.COD_VALUTA,
            B.COD_VALUTA_ORIGINARIA
        UNION ALL
        SELECT
            'ROUNDING' AS DATA_SOURCE,
            D.COD_CONTO AS COD_CONTO_REP,
            D.COD_SCENARIO,
            D.COD_PERIODO,
            D.COD_AZIENDA,
            NULL AS COD_AZI_CTP,
            D.COD_CONTO,
            D.COD_CATEGORIA,
            D.COD_DEST1,
            D.COD_DEST2,
            NULL AS COD_DEST2_CTP,
            D.COD_DEST3,
            D.COD_DEST4,
            D.COD_DEST5,
            D.NOTE,
            D.COD_VALUTA,
            D.IMPORTO * 1000 AS IMPORTO,
            D.COD_VALUTA_ORIGINARIA,
            D.IMPORTO_VALUTA_ORIGINARIA * 1000 AS IMPORTO_VALUTA_ORIGINARIA
        FROM
            DATI_SALDI_LORDI D
            INNER JOIN
            (
                SELECT DISTINCT
                    DRILL.COD_SCENARIO,
                    DRILL.COD_PERIODO,
                    DRILL.COD_CONTO
                FROM
                    RB_DRILL_INSTRUMENT DRILL
                    INNER JOIN
                    DATI_SALDI_LORDI FD
                    ON
                        DRILL.OID_FORM_DATI = FD.OID_DATI_SALDI_LORDI
          WHERE
            DRILL.COD_AZIENDA IN (${$Entity.code})
            ) DRILL
            ON
                D.COD_SCENARIO = DRILL.COD_SCENARIO
                AND D.COD_PERIODO = DRILL.COD_PERIODO
                AND D.COD_CONTO = DRILL.COD_CONTO
        WHERE
            D.COD_SCENARIO IN (${$Scenario.code})
            AND D.COD_PERIODO IN (${$Period.code})
      AND D.COD_AZIENDA IN (${$Entity.code})
            AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 3) = ${A1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 4) = ${B1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 7) IS NULL
            AND D.COD_CATEGORIA IN ('ORI_REP')
            AND D.PROVENIENZA = 'PROC_BALANCING'
      UNION ALL
      SELECT
            'OVERWRITE' AS DATA_SOURCE,
            D.COD_CONTO AS COD_CONTO_REP,
            D.COD_SCENARIO,
            D.COD_PERIODO,
            D.COD_AZIENDA,
            NULL AS COD_AZI_CTP,
            D.COD_CONTO,
            D.COD_CATEGORIA,
            D.COD_DEST1,
            D.COD_DEST2,
            NULL AS COD_DEST2_CTP,
            D.COD_DEST3,
            D.COD_DEST4,
            D.COD_DEST5,
            D.NOTE,
            D.COD_VALUTA,
            D.IMPORTO * 1000 AS IMPORTO,
            D.COD_VALUTA_ORIGINARIA,
            D.IMPORTO_VALUTA_ORIGINARIA * 1000 AS IMPORTO_VALUTA_ORIGINARIA
        FROM
            DATI_SALDI_LORDI D
            INNER JOIN
            (
                SELECT DISTINCT
                    DRILL.COD_SCENARIO,
                    DRILL.COD_PERIODO,
                    DRILL.COD_CONTO
                FROM
                    RB_DRILL_INSTRUMENT DRILL
                    INNER JOIN
                    DATI_SALDI_LORDI FD
                    ON
                        DRILL.OID_FORM_DATI = FD.OID_DATI_SALDI_LORDI
          WHERE
            DRILL.COD_AZIENDA IN (${$Entity.code})
            ) DRILL
            ON
                D.COD_SCENARIO = DRILL.COD_SCENARIO
                AND D.COD_PERIODO = DRILL.COD_PERIODO
                AND D.COD_CONTO = DRILL.COD_CONTO
        WHERE
            D.COD_SCENARIO IN (${$Scenario.code})
            AND D.COD_PERIODO IN (${$Period.code})
      AND D.COD_AZIENDA IN (${$Entity.code})
            AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 3) = ${A1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 4) = ${B1}
            AND RB_F_TGK_GET_ACCOUNT_NODE(D.COD_CONTO, 'RE', 7) IS NULL
            AND D.COD_CATEGORIA = 'ORI_REP'
            AND D.PROVENIENZA NOT LIKE REPLACE(
CASE
WHEN
${B1} = 'RAL'
THEN
'MAP_REP_' || ${A1} || '_' || SUBSTR(${B1},1,2) || '_%'
ELSE
'MAP_REP_' || ${A1} || '_' || ${B1} || '_%'
END
, '-', '_')
            AND D.PROVENIENZA <> 'PROC_BALANCING'
    ) A
    LEFT OUTER JOIN
    CONTO_GERARCHIA CG
    ON
      RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO_REP, 'RE', 6) = CG.COD_CONTO_ELEGER
    LEFT OUTER JOIN
    CONTO_GERARCHIA CGG
    ON
      RB_F_TGK_GET_ACCOUNT_NODE(A.COD_CONTO_REP, 'RE', 5) = CGG.COD_CONTO_ELEGER
    LEFT OUTER JOIN
    CONTO C
    ON
      A.COD_CONTO_REP = C.COD_CONTO
WHERE
    CG.COD_CONTO_GERARCHIA = 'RE'
    AND CGG.COD_CONTO_GERARCHIA = 'RE'
ORDER BY
    CGG.DESC_CONTO_ELEGER0 ASC,
    C.ATTRIBUTO5 ASC,
    CG.DESC_CONTO_ELEGER0 ASC,
    A.COD_SCENARIO ASC,
    A.COD_PERIODO ASC,
    A.DATA_SOURCE DESC