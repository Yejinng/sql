-- transaction type

commit;

set transaction read only;
-- 읽기전용
select *from book;

delete from book;

commit;
SET TRANSACTION READ WRITE;

select * from book;
insert into book values(3, '토지3', sysdate, '대여가능', 1);