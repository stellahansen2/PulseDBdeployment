rem @"deploy_pulse_ui.sql";

DEFINE db_version = "'1.01.25.00'";

SET TIMING ON;

SPOOL 'deploy_log_ui_01012500.txt'

SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY HH24:MI:SS') SCRIPT_BEGIN_TIME FROM dual; 

-- Begin DDL

-- End DDL

-- Begin Meta Data

-- End Meta Data

-- Begin Views/Procedures/Packages/Functions/Triggers

-- End Views/Procedures/Packages/Functions/Triggers

-- Audit

SET VERIFY OFF;

MERGE INTO pulse_db_version x
USING (SELECT '1.01.25.00' db_version FROM dual) y
ON (x.db_version = y.db_version)
WHEN MATCHED THEN UPDATE SET install_date = SYSDATE, version_desc = '46 Pulse Performance and Behavior Optimization'
WHEN NOT MATCHED THEN INSERT (db_version, install_date, version_desc) VALUES ('1.01.25.00', SYSDATE, '46 Pulse Performance and Behavior Optimization');

COMMIT;

EXEC DBMS_UTILITY.COMPILE_SCHEMA('PULSE_TEST');

SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY HH24:MI:SS') SCRIPT_END_TIME FROM dual; 

SPOOL OFF;

SET TIMING OFF;
