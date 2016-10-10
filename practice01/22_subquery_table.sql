-- create table as
create table employees_backup as(
	select *
		from employees
);

select * from employees_backup;


----------------------------------------
-- create table as -- drop!
create table employees_temp as(
	select *
		from employees
);

drop table employees_temp;
--	drop은 되돌릴 수 없다, roㅣㅣback 안됨

select * from employees_temp;