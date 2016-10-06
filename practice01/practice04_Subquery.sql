-- practice04 서브쿼리

-- 1.
select count(*)
	from employees
	where salary < (select avg(salary) from employees);
	
-- 2. 
select employee_id, last_name, salary
	from employees
	where (department_id, salary) in( select department_id, max(salary)
										from employees group by department_id)
	order by salary desc;
	
-- 3.
select a.JOB_TITLE, b.연봉
	from jobs a , (select job_id, sum(salary) as "연봉"
					from employees group by job_id) b
	where a.job_id = b.job_id
	order by 연봉 desc;
	
-- 4.
select a.employee_id, a.last_name, a.salary
	from employees a, ( select department_id, avg(salary)as avg_salary
										from employees group by department_id) b
	where a.SALARY > b.avg_salary
	and	a.DEPARTMENT_ID = b.department_id;
		
-- 4. 자신의 부서의 평균연본보다 크거나 같은 직원들의 사번, 아이디 , 이름 , 연봉
select employee_id, nvl(a.DEPARTMENT_ID,0), last_name, salary
	from employees a, (select department_id, avg(salary) as avg_salary
							from employees group by department_id) b
	where a.DEPARTMENT_ID = b.department_id 
	and a.SALARY >=  b.avg_salary;