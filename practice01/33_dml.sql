--DML

-- 2) update

select * from employees where department_id = 50;

update employees
   set first_name = 'yejinng',
       salary = salary * 1.1,
   	   commission_pct = 0
	-- salary = (select max(salary)from employees)
 where department_id = 50 ;
  
-- 3) delete
-- 에러: 참조키가 있는 경우 삭제 할 수 없음
-- delete from eployees;
 
commit;
rollback;