-- ansi sql문 (1999 syntax)

-- natural join (테이블의 칼럼이름이 같은 경우에만...)
	  select count(*) --a.FIRST_NAME, b.DEPARTMENT_NAME
	    from employees a
natural join departments b;
-- 
select count(*) --a.FIRST_NAME, b.DEPARTMENT_NAME
  from employees a
  join departments b
 using (department_id);
--Inner join 표준 sql문
select count(*) --a.FIRST_NAME, b.DEPARTMENT_NAME
  from employees a
  join departments b
	on a.department_id = b.department_id;
	
-- Outer join 표준 sql문
		  select count(*)
			from employees a 
right outer join departments b
			  on a.DEPARTMENT_ID = b.DEPARTMENT_ID;
	
		 select count(*)
		   from departments b 
left outer join employees a 
			 on a.DEPARTMENT_ID = b.DEPARTMENT_ID;