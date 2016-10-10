-- isolation type

select * from book;

commit;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
update book set title = '토지5' where no = 2;
commit;

