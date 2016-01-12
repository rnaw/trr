create or replace FUNCTION RB_F_TGK_WAITME (
  IN_TIME INT := 60 --num seconds
)
RETURN INT
IS
  v_now TIMESTAMP;
BEGIN
  
  LOCK TABLE "_LOCK"
  IN EXCLUSIVE MODE;

  SELECT
    SYSDATE() 
  INTO v_now
  FROM
    DUAL
  ;

  LOOP
    EXIT WHEN v_now + (IN_TIME * (1/86400)) <= SYSDATE();
  END LOOP;

  RETURN 1;

EXCEPTION
WHEN OTHERS THEN
  raise_application_error(-20001,'An error was encountered - '||SQLCODE||' -ERROR- '||SQLERRM);
END;