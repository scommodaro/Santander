--
-- drop_database_objects.sql
--
SPOOL drop_database_objects2.log

SET ECHO OFF
SET FEEDBACK ON
SET NULL '<Null>'
SET PAGESIZE 999
SET SERVEROUTPUT ON SIZE 1000000

-- Conditionally drop tables and sequences.
DECLARE
  vSQL VARCHAR2(200);
BEGIN
  FOR i IN (SELECT table_name
            FROM   user_tables
            WHERE  table_name NOT IN ('MIGRACAO','MIGRACAO_PEOPLE','MIGRACAO_RC_CALL_CENTER','TESTA_CAMUNDA')) 
  LOOP 
    vSQL := 'DROP TABLE '||i.table_name||' CASCADE CONSTRAINTS';
    EXECUTE IMMEDIATE vSQL;
    DBMS_OUTPUT.PUT_LINE(vSQL);
  END LOOP;
  FOR i IN (SELECT sequence_name
            FROM   user_sequences
            WHERE  sequence_name not in ('ISEQ$$_94318','ISEQ$$_94321','ISEQ$$_94323','ISEQ$$_94325', 'ISEQ$$_101580')) 
  LOOP 
    vSQL := 'DROP SEQUENCE '||i.sequence_name;
    EXECUTE IMMEDIATE vSQL;
    DBMS_OUTPUT.PUT_LINE(vSQL);
  END LOOP;
END;
/

SPOOL OFF
