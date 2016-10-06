-- multi row subquery

select * from employees;

-- 문) job_id가 'IT_PROG'직원들이 받는 연봉보다 많이 받는 직원을 출력 ===> >ALL, <ALL (=ALL은 안씀)
select salary from employees where job_id = 'IT_PROG';

select first_name, salary
	from employees
	where salary > ALL(select salary from employees where job_id = 'IT_PROG');
	
-- 문) job_id가 'IT_PROG'직원들이 받는 연봉과 같은 연봉을 받는 직원을 출력 ===> (not) in, <any =any >any(하나일때)
select first_name, salary
	from employees
	where salary in(select salary from employees where job_id = 'IT_PROG');
	
select first_name, salary
	from employees
	where salary = any(select salary from employees where job_id = 'IT_PROG');
	
select first_name, salary
	from employees
	where exists(select salary from employees where job_id = 'IT_PROG');
-- exists 비교하는게 없고 subauery에 row값이 존재하면 출력된다