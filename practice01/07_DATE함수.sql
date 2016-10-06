-- date

select * from employees;
select employee_id, hire_date from employees;

select value
	from nls_session_parameters
	where parameter = 'NLS_DATE_FORMAT';
-- RR/MM/DD 포맷이 나옴
select ADD_MONTHS('16/10/05',2) from dual;
select ADD_MONTHS('2016-10-05',2) from dual;
select ADD_MONTHS(SYSDATE,2) from dual;
--날짜에 n달 더함	/  현재 날짜에 2달 더함	/포맷에 맞춰서 적어주는게 좋음 
select LAST_DAY(SYSDATE)from dual;
--()달의 마지막날
select MONTHS_BETWEEN(ADD_MONTHS(SYSDATE,2),SYSDATE) from dual;

select employee_id, job_id,MONTHS_BETWEEN(end_date,start_date)
	from job_history
	order by MONTHS_BETWEEN(end_date,start_date) desc;
--일한 시간 순서대로
select next_day('95/09/01',1) from dual;
--요일은 숫자로 나타내야함 1=>SUN, 2=>MON, 3=>TUE, 4=>WED, 5=>THU, 6=>FRI, 7=>SAT
