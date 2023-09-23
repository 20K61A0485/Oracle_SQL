select * from employees;

//Create the table
create table jhansi(name varchar2(30),Regd_no varchar2(15),Branch varchar2(3),Email varchar2(20));

//Insert the values into the Table
insert into jhansi values('M.J.N.V.D.Sambhavi','20K61A0485','ECE','jhansi485@sasi.ac.in');
insert into friends values('&name','&number','&branch','&mail');
insert into jhansi(name,regd_no) values('&name','&number');

//Using DDL statements
select * from friends;  
alter table jhansi modify Email varchar2(30);
update jhansi set regd_no='20K61A0497' where Name='Nimmalapudi Lakshmi Narayana';  
ROLLBACK;
insert into jhansi values('M.J.N.V.D.Sambhavi','20K61A0485','ECE','jhansi485@sasi.ac.in');
TRUNCATE TABLE JHANSI;
insert into jhansi values('M.J.N.V.D.Sambhavi','20K61A0485','ECE','jhansi485@sasi.ac.in');
delete from jhansi where regd_no='20K61A0499';
alter table jhansi modify branch varchar(4);
rename jhansi to friends;
create table toppers as select* from friends;
select * from toppers; 
alter table toppers rename column Email to Gmail;
alter table toppers add Section varchar(3);
update toppers set branch='ECE', SECTION='A' where name='Panchakarla Harika' ;
alter table toppers add year varchar(4);

create synonym sambhavi for mannidi;
create table mannidi(id number(2),last_name varchar2(30),salary number(5));
insert into sambhavi values('&id_2','&name_30','&sal_5');
rename jhansi to mannidi;
select * from sambhavi;
delete from mannidi where id=86;