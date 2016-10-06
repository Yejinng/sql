-- date ==> 문자열	(변환함수)

select employee_id, hire_date from employees;

select employee_id, 
	to_char(hire_date, 'yyyy-MM-dd- hh:mm:ss')
	from employees;
	
select employee_id, 
	to_char(hire_date, 'yyyy"년" MM"월" dd"일" hh"시" mm"분" ss"초"')
	from employees;
-- hh(12) 생략되어있는 거임
select employee_id, 
	to_char(hire_date, 'yyyy"년" MM"월" dd"일" hh24"시" mm"분" ss"초" day')
	from employees;
	
	select employee_id, 
	to_char(hire_date, 'yyyy"년" MM"월" dd"일" day ddd"일째 되는날"')
	from employees;
	
select employee_id, to_char(hire_date, 'year:syear')
	from employees;
	
select employee_id, to_char(hire_date, 'RR')
	from employees;


