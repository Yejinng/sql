-- constraints 제약조건

-- not null -------------------------------------------------------------
drop table book cascade constraint;
create table book(
	no        number(10) not null,
	title     varchar2(120),
	pub_date  date,
	state	  varchar2(50) not null,
	author_no number(10),
	--constraint c_book_u unique(no)	-- unique
	primary key(no),	--primary key
	constraint c_book_check check( state in ('대여중', '대여가능')),
	constraint c_book_fk foreign key (author_no) references author(no)	-- on delete cascade
	on delete set null
);

insert 
	into book
	values (null, '토지', '박경리', to_date('2005-03-12','yyyy-mm-dd'));
	-- primary 는 null값도 X , unique는 null값 OK!
insert 
	into book
	values (1, '토지1', to_date('2005-03-12','yyyy-mm-dd'),'대여중',1 );
insert 
	into book
	values (2, '토지2', to_date('2005-03-12','yyyy-mm-dd'),'대여가능',1);
	-- primary 는 중복값 에러 -> 위에랑 no가 겹친다
insert 
	into book
	values (3, '논어', to_date('2005-03-12','yyyy-mm-dd'),'대여가능',2);
	
select * from book;
	
delete from author where no = 2;

drop table author cascade constraint;
create table author(
	no		number(10),
	name	varchar2(20) not null,
	primary key(no)
	); 
insert into author values( 1, '박경리');
insert into author values( 2, '공자');

select * from author;
	
	