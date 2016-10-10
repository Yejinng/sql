-- create table---------------------------------------------------------

create table book(
	no		 number(10),
	title 	 varchar2(120),
	author 	 varchar2(80),
	pub_date date
);

-- insert---------------------------------------------------------------
insert 
	into book
	values (1, '토지', '박경리', to_date('2005-03-12','yyyy-mm-dd'));

insert
	into book(title, no, author, pub_date)
	values('슬램덩크', 2, '다케이코', to_date('2006-04-05','yyyy-mm-dd'));
	
-- delete---------------------------------------------------------------
delete 
	from book;
	--where author = '박경리';
	
-- update---------------------------------------------------------------
update book
	set title = '슬램덩크2',
		pub_date = to_date('2007-04-05','yyyy-mm-dd')
	where title = '슬램덩크';
	
-- commit 저장느낌----------------------------------------------------------
commit;

-- rollback 지운거 되살리기----------------------------------------------------
-- delete와 update는 where절로 막 바뀌는거 방지하고 rollback으로 되돌릴 수 있다
rollback;

------------------------------------------------------------------------
select * from book; 

