-- join

select a.employee_id, 
	   a.department_id, 
	   a.first_name, 
	   b.department_name
	from employees a, departments b				--join 조건이 필요함
	where a.DEPARTMENT_ID = b.DEPARTMENT_ID		--join 조건
	--dapartment_id가 employees와 departments 모두있다 alias이용해 원하는 테이블의 컬럼을 가져온다 (a,b이용)
	and a.salary > 5000;						--row 선택조건
	
-- Inner join
select count(*)
	from employees a, departments b
	where a.DEPARTMENT_ID = b.DEPARTMENT_ID;
	
-- Outer join
select count(*)
	from employees a, departments b
	where a.DEPARTMENT_ID (+)= b.DEPARTMENT_ID;
	
select a.EMPLOYEE_ID, b.DEPARTMENT_NAME
	from employees a, departments b
	where a.DEPARTMENT_ID (+)= b.DEPARTMENT_ID;
	
select nvl(a.first_name,'소속 사원이 없음'), b.DEPARTMENT_NAME
	from employees a, departments b
	where a.DEPARTMENT_ID (+)= b.DEPARTMENT_ID;
	--(+)더많은 쪽에 준다
	
-- self join
select emp.FIRST_NAME, man.FIRST_NAME
	from employees emp, employees man
	where emp.MANAGER_ID = man.EMPLOYEE_ID;
	
select emp.FIRST_NAME, nvl(man.FIRST_NAME,'none manager')
	from employees emp, employees man
	where man.EMPLOYEE_ID (+)= emp.MANAGER_ID; 
	
select * from employees where manager_id is null;
	

	
	
