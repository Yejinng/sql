-- 숫자 => 문자열

SELECT employee_id, salary FROM employees;

SELECT employee_id, TO_CHAR (salary, '9999') FROM employees;
-- 자릿수 넘어가면 #으로 표시된다
SELECT employee_id, TO_CHAR (salary, '99999') FROM employees;
-- 자릿수 설정, 천원단위 표시가능
SELECT employee_id, TO_CHAR (salary, '09999') FROM employees;
-- 최고단위를 비워두고 싶지 않을때
SELECT employee_id, TO_CHAR (salary, '99,999') FROM employees;

select to_char(3.14158921, '9.99') from dual;
select to_char(3.14158921, '9.9999') from dual;
-- 반올림
SELECT employee_id, TO_CHAR (salary, 'FM99999') FROM employees;
-- 앞쪽에 공백이 없어진다
SELECT employee_id, TO_CHAR (salary, '$99999') FROM employees;
-- 달러
SELECT employee_id, TO_CHAR (salary, 'L99999') FROM employees;
-- 원화
SELECT TO_CHAR (-12345, '99999MI') FROM dual;
SELECT TO_CHAR (12345, 'S99999') FROM dual;
SELECT TO_CHAR (-12345, 'S99999') FROM dual;
SELECT TO_CHAR (0, 'S99999') FROM dual;
-- 음수
SELECT TO_CHAR (-12345, '99999PR') FROM dual;
-- 음수에 괄호
SELECT TO_CHAR (1234, 'RN') FROM dual;
SELECT TO_CHAR (1234, 'rn') FROM dual;
-- 로마자 대소문자에 따라 다름(RN/rn)
SELECT TO_CHAR (12345, 'XXXXX') FROM dual;
-- 16진수


