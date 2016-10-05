-- 문자열 함수

select lower('Database Management System') from dual;
select first_name, lower(first_name) from employees;
--소문자로
select upper('Database Management System') from dual;
select last_name, upper(last_name) from employees;
--대문자로
select initcap('database management system') from dual;
--첫글자 대문자
select concat( concat(first_name,' '), last_name) from employees;
select first_name || ' ' || last_name from employees;

select substr('Database Management System',2,4) from dual;
--0부터 시작하지 않는다
select length('Database Management System') from dual;
--길이
select instr(lower('Database Management System'), 'sys') from dual;
--몇번째
select employee_id, LPAD(salary,10,'*') from employees;
select employee_id, RPAD(salary,10,'*') from employees;

select trim('#'from'####Data##base####') from dual;
--앞뒤 공백(문제) 제거
select trim(' ' from 'Data base     ') from dual;
select '---' || trim(' ' from 'Data base     ')||'---' from dual;
--공백제거
select '---' || ltrim('   Data base     ',' ')||'---' from dual;
select '---' || rtrim('   Data base     ',' ')||'---' from dual;
--ltrim은 앞 트림  rtrim은 뒤 트림
select replace('Database Management System', 'System','Sys.') from dual;
--문자 대체
