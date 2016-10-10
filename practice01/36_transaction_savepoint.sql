-- transaction savepoint

commit;

select * from book;

-- DML1
insert into book values(3, '토지3', sysdate, '대여중', 1);

-- savepoint a
savepoint a;

-- DML2
delete from book where no =3;

-- savepoint b 
savepoint b;

-- DML3
insert into book values(3, '토지4', sysdate, '대여중', 1);

-- test
rollback to b;
select * from book;
rollback to a;
select * from book;
rollback;
select * from book;