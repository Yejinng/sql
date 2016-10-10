-- constraints
-- 

drop table book;
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

alter table book add constraint c_book_pk primary key (no);
alter table book add constraint c_book_check check (state in('대여중', '대여가능'));
alter table book add constraint c_book_fk foreign key (author_no) references author(no);