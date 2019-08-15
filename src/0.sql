begin transaction;
create virtual table posts using fts4(id, title, body, tokenize=icu ja_JP);
insert into posts values(1, '最初のタイトルです', '最初の本文です。');
insert into posts values(2, '二番目のタイトルです', '二番目の本文です。');
commit;

select * from posts where posts match '最初';
select * from posts where posts match 'タイトル';
select * from posts where posts match 'title:タイトル';
select * from posts where posts match 'title:タイト*';
select * from posts where posts match 'body:タイトル';
select * from posts where posts match '最初 タイトル';

select * from posts('タイトル');
select * from posts('title:タイトル');

select * from posts where posts match 'title:タイトル AND body:本文';
select * from posts where posts match '最初 AND タイトル';
select * from posts where posts match '最初' AND 'タイトル';
select * from posts where posts match 'NOT 最初';

select * from posts where posts match '最初 OR 二番目';

