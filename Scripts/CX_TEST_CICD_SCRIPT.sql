drop table "GPC"."CX_TEST_CICD_SCRIPT";

CREATE TABLE "GPC"."CX_TEST_CICD_SCRIPT"
(
  ID NUMBER NOT NULL
  , NAME VARCHAR2(20)
  , TABLECHANGED VARCHAR2(20)
  );
insert into "GPC"."CX_TEST_CICD_SCRIPT" values (10, 'Stella', 'changed');
insert into "GPC"."CX_TEST_CICD_SCRIPT" values (11, 'Rushil', 'not changed');
insert into "GPC"."CX_TEST_CICD_SCRIPT" values (12, 'Zach', 'not changed');
insert into "GPC"."CX_TEST_CICD_SCRIPT" values (13, 'Abby', 'changed');
insert into "GPC"."CX_TEST_CICD_SCRIPT" values (14, 'Christian', 'changed');

