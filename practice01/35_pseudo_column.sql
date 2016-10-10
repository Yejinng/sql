-- pseudo column

select sysdate from author;

-- sysdate 사용예
insert into board
	values (1, '안녕', '밥은 먹고 다니냐',sysdate);
	
-- user 
select user from dual;

-- rowid, rownum
select no, title, rownum from book
	order by title desc; 