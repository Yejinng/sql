-- 숫자함수

select abs(-5) from dual;
--절대값
select ceil(4.01) from dual;
--n보다 크거나 같은 최소정수 
select floor(4.99) from dual;
--n보다 작거나 같은 최소정수(가우스)
select mod(99999,6) from dual;
--나머지
select power(2,10) from dual;
--2의 10승
select round(3.3364,2) from dual;
--반올림
select trunc(3.3864,1) from dual;
--버림
select sign(-99999) from dual;
select sign(99999) from dual;
select sign(0) from dual;
--부호
