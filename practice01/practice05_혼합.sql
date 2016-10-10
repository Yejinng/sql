-- practice05 혼합

-- 1.
select (a.first_name ||' '|| a.last_name) as "NAME", a.salary, b.DEPARTMENT_NAME
	from employees a, departments b
	where hire_date = (select max(hire_date) from employees)
	and a.DEPARTMENT_ID = b.DEPARTMENT_ID;
	
-- 2. 
select department_id, avg(salary) 
	from employees
	group by department_id;
select a.employee_id, a.last_name, a.salary
	from employees a, (select department_id, avg(salary) as salary
							from employees group by department_id) b
	where a.salary > b.salary;	
-- 3.
select employee_id, max(avg_salary)
	from (select department_id, avg(salary) as "avg_salary"
		from employees group by department_id) group by department_id;
	
select b.EMPLOYEE_ID, b.FIRST_NAME, b.LAST_NAME, c.JOB_TITLE, b.SALARY
	from employees b, jobs c
	where b.job_id = c.job_id
	having b.department_id = (select department_id, max(avg_salary)from (select department_id, avg(salary) as avg_salary
														from employees 
														group by department_id)
														group by department_id);

-- 4. 
select b.department_name
	from employees a, departments b 
	where department_id = (select department_id
							from employees
							having avg(salary) = (select max(a.avg_salary)
							from (select department_id, avg(salary) as avg_salary	
									from employees group by department_id)))
	and a.DEPARTMENT_ID = b.DEPARTMENT_ID;
									
-- 5.
select region_name;