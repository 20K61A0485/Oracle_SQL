create sequence jhaanc 
start with 10
minvalue 5
maxvalue 20
increment by 1
nocycle;

create sequence jhanc1 
start with 10
minvalue 5
maxvalue 20
increment by -1
nocycle;
select jhanc1 .nextval from dual;
select jhanc1.currval from dual;
--select sysdate  from dual
--alter table dual update sysdate to Date;
create table time(Date Date);
insert into time values(sysdate);
select * from time;

select salary as sAl from employees;
select salary  sAl from employees;
select salary "sAl" from employees;

select sysdate "Date" FROM dual;

select sysdate as "Date" FROM dual;
select employee_id,last_name,salary,(salary+salary*0.155)  "New Salary" from employees;
select last_name salary,(salary+salary*0.155) as "New salary" ,(salary*0.155) as Increse from employees;
select last_name as "Name",length(last_name) as "Length" from employees where last_name like 'J%'or  last_name like 'A%' or last_name like 'M%';
select last_name as "Name",length(last_name) as "Length" from employees where last_name like upper('&var%');
select last_name,round(months_between(sysdate,Hire_date)) from employees;
select last_name,lpad(salary,15,'$') from employees;
select last_name||''||rpad( '',salary/1000,'*') from employees;
select last_name ,trunc((sysdate-hire_date)/7,0) "Tenure" from employees;