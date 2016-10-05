--practice집계

-- 1.
select  max(salary) as "최고임금", min(salary) as "최저임금", max(salary)- min(salary) as "최고임금 - 최저임금"
	from employees;

-- 2.
select to_char(max(hire_date),'YYYY"년" MM"월" dd"일"')
	from employees;
	
-- 3.
select department_id, AVG(salary)as "평균임금", MAX(salary) as "최고임금", MIN(salary) as "최저임금"
	from employees
	group by department_id
	order by "평균임금"desc, "최고임금"desc, "최저임금" desc;
	
-- 4.
select job_id, AVG(salary)as "평균임금", MAX(salary) as "최고임금", MIN(salary) as "최저임금"
	from employees
	group by job_id
	order by "평균임금" desc, "최고임금" desc, "최저임금" desc;
	
-- 5.
select to_char(min(hire_date),'YYYY"년" MM"월" DD"일"')
	from employees;

-- 6.
select department_id as "부서", avg(salary)as "평균임금", min(salary) as "최저임금", avg(salary) - min(salary) as "평균임금 - 최저임금"
	from employees
	group by department_id
	having abs(avg(salary) - min(salary))< 2000
	order by avg(salary) - min(salary) desc;
	
-- 7.
select job_id, (max(salary) - min(salary)) as "최고임금 - 최저임금"
	from employees
	group by job_id
	order by "최고임금 - 최저임금" desc;
select  job_title, (max_salary - min_salary) as "최고임금 - 최저임금"
	from jobs
	where job_id = 'SA_REP';

-- 7.별해

		