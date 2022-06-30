drop table "GPC"."CX_TEST_CICD_SCRIPT";

CREATE TABLE "GPC"."CX_TEST_CICD_SCRIPT"
(
  ID NUMBER NOT NULL
  , NAME VARCHAR2(20)
  , TABLECHANGED VARCHAR2(20)
  );
insert into "GPC"."CX_TEST_CICD_SCRIPT" values (13, 'stella', 'changed');
insert into "GPC"."CX_TEST_CICD_SCRIPT" values (12, 'stella1', 'other changed');


@../Procedures/secure_dml.sql;
