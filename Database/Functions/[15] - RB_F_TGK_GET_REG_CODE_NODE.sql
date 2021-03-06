--------------------------------------------------------
--  DDL for FUNCTION RB_F_TGK_GET_REG_CODE_NODE
--------------------------------------------------------

CREATE OR REPLACE FUNCTION RB_F_TGK_GET_REG_CODE_NODE (
  COD_DEST5 IN VARCHAR2,
  HIERARCHY_CODE IN VARCHAR2,
  HIERARCHY_LEVEL IN INT
)
RETURN VARCHAR2 IS
--  This function returns the node at level HIERARCHY_LEVEL
--  in hierarchy HIERARCHY_CODE for Product COD_DEST5
  HIERARCHY_NODE VARCHAR2(30);
BEGIN
  
  SELECT
    H.COD_DEST5_ELEGER INTO RB_F_TGK_GET_REG_CODE_NODE.HIERARCHY_NODE
  FROM
    (
      SELECT
        COD_DEST5_GERARCHIA,
        COD_DEST5_ELEGER,
        LEVEL AS "LEVEL"
      FROM
        (
          SELECT 
            COD_DEST5_GERARCHIA,
            COD_DEST5_ELEGER,
            COD_DEST5_ELEGER_PADRE
          FROM
            DEST5_GERARCHIA
          WHERE
            COD_DEST5_GERARCHIA = RB_F_TGK_GET_REG_CODE_NODE.HIERARCHY_CODE
        )
      START WITH COD_DEST5_ELEGER = (
        SELECT
          COD_DEST5_ELEGER
        FROM
          DEST5_GERARCHIA_ABBI
        WHERE
              COD_DEST5_GERARCHIA = RB_F_TGK_GET_REG_CODE_NODE.HIERARCHY_CODE
          AND COD_DEST5 = RB_F_TGK_GET_REG_CODE_NODE.COD_DEST5
      )
      CONNECT BY PRIOR COD_DEST5_ELEGER_PADRE = COD_DEST5_ELEGER
    ) H,
    (
      SELECT
        MAX(LEVEL) AS "LEVEL"
      FROM
        (
          SELECT 
            COD_DEST5_GERARCHIA,
            COD_DEST5_ELEGER,
            COD_DEST5_ELEGER_PADRE
          FROM
            DEST5_GERARCHIA
          WHERE
            COD_DEST5_GERARCHIA = RB_F_TGK_GET_REG_CODE_NODE.HIERARCHY_CODE
        )
      START WITH COD_DEST5_ELEGER = (
        SELECT
          COD_DEST5_ELEGER
        FROM
          DEST5_GERARCHIA_ABBI
        WHERE
              COD_DEST5_GERARCHIA = RB_F_TGK_GET_REG_CODE_NODE.HIERARCHY_CODE
          AND COD_DEST5 = RB_F_TGK_GET_REG_CODE_NODE.COD_DEST5
      )
      CONNECT BY PRIOR COD_DEST5_ELEGER_PADRE = COD_DEST5_ELEGER
    ) M
  WHERE
    M."LEVEL" - H."LEVEL" + 1 = RB_F_TGK_GET_REG_CODE_NODE.HIERARCHY_LEVEL
    OR - H."LEVEL" = RB_F_TGK_GET_REG_CODE_NODE.HIERARCHY_LEVEL
  ;
  
  RETURN(RB_F_TGK_GET_REG_CODE_NODE.HIERARCHY_NODE);
END;