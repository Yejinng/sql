-- CASE/DECODE 문

select job_id from employees;
select distinct job_id from employees;
-- distinct 중복되는거 제외

--CASE문
select employee_id, 
	   salary,
	   CASE job_id WHEN 'FI_ACCOUNT' THEN salary + salary * 0.1
	   			   WHEN 'AC_MGR' THEN salary + salary * 0.2
				   WHEN 'AD_VP' THEN salary + salary * 0.5
			  	   ELSE	salary
		END	as "이번달 급여"
FROM employees;
	   	
--DECODE문
select employee_id, 
	   salary,
	   DECODE (job_id , 'FI_ACCOUNT', salary + salary * 0.1,
	   			  		'AC_MGR', 	  salary + salary * 0.2,
				   		'AD_VP', 	  salary + salary * 0.5,
			  	  					  salary ) as "이번달 급여"
FROM employees;