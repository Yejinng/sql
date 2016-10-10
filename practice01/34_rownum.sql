-- rownum

-- 문제 직원중에 월급이 상위 10~20위 까지 골라낸다.

-- 문제 rownum이 세팅된 이후에 order by가 실행되므로 순서가 엉키게 됨
select employee_id, salary, rownum
	from employees
	order by salary desc;
	
-- 해결방법( where 절에서 rownum 조건이 안맞기 떄문에 선택된 row가 하나도 없음 -> 문제)
select employee_id, salary, rownum
from(
select employee_id, salary
	from employees
	order by salary desc)
where 10<= rownum and rownum<= 20;

-- 최종 해결 방법
select *
from (select employee_id, salary, rownum rn
	from(select employee_id, salary
			from employees
			order by salary desc))
where 10<= rn and rn<= 20;

-- 만들어진 rownum에서 골라내야 함 rn!!!