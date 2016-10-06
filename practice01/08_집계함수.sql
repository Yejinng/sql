-- 집계

select avg(salary)
	from employees
	order by avg(salary) desc;	

select department_id, avg(salary)as "평균연봉"
	from employees
	-- where
	group by department_id
	order by "평균연봉" desc;
	
select department_id, avg(salary)as "평균연봉", max(salary) as "최고연봉", min(salary) as "최소연봉"
	from employees
	-- where
	group by department_id
	order by "평균연봉" desc;
	
select department_id, avg(salary)
	from employees
	group by department_id
	HAVING avg(salary) > 5000;
