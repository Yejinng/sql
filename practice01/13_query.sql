--  문)각 부서별로 최고 연봉을 받는 직원의 이름과 연봉을 출력

select employee_id, salary
 from employees
 where (department_id, salary) in (select department_id, max(salary)
 										from employees
					 					group by department_id);
					 
select department_id, max(salary)
	from employees
	group by department_id; 

select a.FIRST_NAME, a.SALARY
	from employees a,
		( select department_id, max(salary) as max_salary
			from employees
			group by department_id ) b
	where a.DEPARTMENT_ID = b.department_id
	and a.salary = b.max_salary;
	
select first_name, salary
	from employees
	where salary  