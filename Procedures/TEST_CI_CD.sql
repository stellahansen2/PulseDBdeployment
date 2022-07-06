

create or replace PROCEDURE TEST_CI_CD AS 

cursor csr_test is
  select name,TABLECHANGED from CX_TEST_CICD_SCRIPT;

BEGIN

FOR csr_test_v IN csr_test LOOP
    
          begin
            update CX_TEST_CICD_SCRIPT
              set  name = CONCAT(name, '_changed')
                 
            where TABLECHANGED = 'changed';
              
          EXCEPTION when OTHERS then
            null;  
          end;  
          
    end LOOP;
    
    commit;

  
END TEST_CI_CD;
