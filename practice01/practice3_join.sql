-- practice03 조인

-- 1. 106
select a.EMPLOYEE_ID, a.FIRST_NAME, b.DEPARTMENT_NAME, man.FIRST_NAME
	from employees a, departments b, employees man
	where a.EMPLOYEE_ID = man.MANAGER_ID
	and a.DEPARTMENT_ID = b.DEPARTMENT_ID;
	
-- 2. 25
select b.REGION_NAME as "지역이름",a.COUNTRY_NAME as "나라이름"
	from countries a, regions b
	where a.REGION_ID = b.REGION_ID
	order by 지역이름 desc, 나라이름 desc;
	
-- 3. 11개
select b.DEPARTMENT_ID, b.DEPARTMENT_NAME, a.FIRST_NAME, c.CITY, d.COUNTRY_NAME, e.REGION_NAME
	from departments b,employees a,  locations c, countries d, regions e
	where b.MANAGER_ID = a.EMPLOYEE_ID	
	and b.LOCATION_ID = c.LOCATION_ID
	and c.COUNTRY_ID = d.COUNTRY_ID
	and d.REGION_ID =e.REGION_ID ;
	
-- 4. 2
select c.EMPLOYEE_ID, (c.FIRST_NAME ||' '|| c.LAST_NAME) as "NAME"
	from job_history a, jobs b, employees c
	where b.JOB_TITLE = 'Public Accountant'
	and a.EMPLOYEE_ID = c.EMPLOYEE_ID
	and b.JOB_ID = a.JOB_ID;
	
-- 5. 11
select a.EMPLOYEE_ID, a.FIRST_NAME, a.LAST_NAME, b.DEPARTMENT_NAME
	from employees a, departments b
	where a.EMPLOYEE_ID = b.DEPARTMENT_ID
	order by a.LAST_NAME;
	
-- 6. 68
select a.EMPLOYEE_ID, a.LAST_NAME, to_char(a.HIRE_DATE, 'YYYY"년" MM"월" dd"일"') as "HIRE_DATE" 
	from employees a, employees man
	where a.EMPLOYEE_ID = man.MANAGER_ID
	and a.HIRE_DATE < man.HIRE_DATE;
	
	
	
	
	
	
	
	
	