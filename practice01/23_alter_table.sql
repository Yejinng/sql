-- alter table

-- 컬럼 추가 ----------------------------------------------------
alter table book add(pubs varchar2(120));
-- 컬럼 변경 ----------------------------------------------------
alter table book modify(pubs varchar2(200));
-- 컬럼 삭제 ----------------------------------------------------
alter table book drop(pubs);
alter table book drop column pubs;
-- 컬럼 이름 변경 --------------------------------------------------
alter table book rename column pubs to publishing;
-------------------------------------------------------------
select * from book;