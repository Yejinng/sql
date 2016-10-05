-- NULL 관련 함수

select nvl( null, 0) from dual;
select nvl( 1, 0) from dual;

select employee_id, 
	nvl( commission_pct, 0),
	nvl( commission_pct, 0)*salary 
	from employees;
	
select nvl2( null, 10, 0) from dual;
-- null이면 0 not null이면 10
select employee_id, nvl2( commission_pct, commission_pct*salary, 0) 
	as "이번달에 지급할 월급"
	from employees;

select nullif(5, 3+2) from dual;
select nullif(6, 3+2) from dual;
-- 식이 같으면 null 다르면 6

select coalesce(null, null, 3, 4, 5)from dual;
select coalesce(1, null, 3, 4, 5)from dual;
-- null을 안만날때까지 가서 not null값 출력

select employee_id, nvl(manager_id, '매니저 없음') from employees;
-- string을 입력해서 오류남
select employee_id, nvl(to_char(manager_id), '매니저 없음') from employees;
-- to_char로 바꿔준후 오류 안남


