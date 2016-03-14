--------------------------------------------------
--  DDL for FUNCTION RB_F_TGK_GET_LEAVES_ACCOUNT
--------------------------------------------------

CREATE OR REPLACE FUNCTION RB_F_TGK_GET_LEAVES_ACCOUNT (
  HIERARCHY_CODE IN VARCHAR2,
  HIERARCHY_NODE_CODE IN VARCHAR2
)
RETURN RB_VARCHAR2_TABLE PIPELINED
AS
--  This function will return a table of a sigle column (COLUMN_VALUE)
--  of all Elements that belongs to a certain HIERARCHY_NODE_CODE in a given
--  HIERARCHY_CODE
BEGIN
  FOR R IN (
    SELECT
      A.COD_CONTO
    FROM
      (
        SELECT DISTINCT
          COD_CONTO_GERARCHIA,
          COD_CONTO_ELEGER
        FROM
          CONTO_GERARCHIA
        WHERE
          COD_CONTO_GERARCHIA = HIERARCHY_CODE
        START WITH COD_CONTO_ELEGER = HIERARCHY_NODE_CODE
        CONNECT BY PRIOR COD_CONTO_ELEGER = COD_CONTO_ELEGER_PADRE
      ) H
      INNER JOIN
      CONTO_GERARCHIA_ABBI A
      ON
          H.COD_CONTO_GERARCHIA = A.COD_CONTO_GERARCHIA
      AND H.COD_CONTO_ELEGER = A.COD_CONTO_ELEGER
  ) LOOP
  
    PIPE ROW(R.COD_CONTO);
  
  END LOOP;
  
  RETURN;
END;