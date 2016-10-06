-- subquery

select * from employees;

-- 문) 이름(first_name)이  Lex사원보다 월급이 많은 직원들 이름과 월급
--select salary from employees where first_name = 'Lex';
--select first_name, salary from employees where salary > 17000; 
select first_name, salary
	from employees
	where salary > (select salary from employees where first_name = 'Lex');

select first_name, salary
	from employees
	where salary = (select salary from employees where first_name = 'Lex');
	--같다
select first_name, salary
	from employees
	where salary < (select salary from employees where first_name = 'Lex');
	--작다
select first_name, salary
	from employees
	where salary <> (select salary from employees where first_name = 'Lex');
	--같지 않다
-- 문) 전체 직원의 평균 연봉보다 더 많이 받은 직원의 이름과 연봉
select avg(salary) from employees;
select first_name || ' ' || last_name as "이름", salary as "연봉"
	from employees
	where salary > (select avg(salary) from employees);







	