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

select max(salary) from employees where rownum=2 order by salary desc;

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

create table ramana(last_name varchar2(30),regd_no varchar(3),salary number(6));
insert into table1 values('venkata',45000);
alter table ramana modify regd_no varchar2(10);
insert into table1 values('&name','&g','&sal');
select * from table1;
rename ramana to table1;
update table1 set regd_no= 4466 where last_name='k';
--alter table table1 set regd_no='20K61A0497' where regd_no='20k497';
insert into table1(last_name,salary) values('&name','&sal');
delete from table1 where last_name='k';
update table1 set last_name='jhansi' where salary=67;
rollback;
truncate table table1;
rollback;

create table jhansi2(name1 varchar2(20),regd_no varchar2(15),mb_number number(11));
insert into jhansi2 values('&name','&num',&number);
savepoint a;
insert into jhansi2 values('jhansi','485',1234567899);
savepoint b;
insert into jhansi2 values('jhanc','480',1234567879);
savepoint c;
rollback to b;
select * from jhansi2;
drop table jhansi2;
create table sqls(id_num number(4) primary key,last_name varchar2(20) not null,mobile_num number(10) unique);
insert into sqls values(123,'abc',123456789);
insert into sqls values(12,'abc',123456780);
select * from sqls;  
------------------------
create table database1(numes number(5) ,last_num varchar2(20),mb_number number(20));
create table database2(sums number(5) ,last_nume varchar2(20),mb_number number(20));
insert into database2 values(&na,'&l',&n);
select * from database1;
select * from database2;

alter table database1 add constraint id_fk foreign key(mb_number) references database2(mb_number) on delete cascade; 

create synonym class2 for sqls;
select* from sqls;
delete  from class2 where id_num=123;

select last_name from employees where last_name >'Jones';
select * from employees
order by last_name;
select last_name,salary from employees where salary between 5000 and 10000 order by last_name ;
select last_name from employees order by last_name desc;

select hire_date hg from employees order by hg desc;
SELECT last_name, department_id, salary
FROM employees
ORDER BY department_id , salary DESC; 
select &name from employees where last_name = '&hsdbchj';

set verify on
DEFINE employee_num = 198
DEFINE employee_num2 = 102
SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE employee_id in (&employee_num,&employee_num2);

undefine employee_num2;

select upper(last_name) from employees;

select upper(last_name) from employees where last_name='Abel';
select * from employees;

select substr('lakshmi narayana',2) from dual;
select length('lakshmi narayana') from dual;

select instr('lakshmi narayana','a') from dual;

select lpad(last_name,10,'*')||rpad(' ',10,'*') from employees;

select trim('    lakshmi narayana    ') from dual;


select trim(leading ' ' from '    narayana           ') from dual;

select trim(trailing ' ' from '    narayana           ') from dual;

select trim('w' from 'HelloworldH') from dual;


SELECT replace('lakshmi narayana', 'la','vb') from dual; 


select last_name from employees ;
select last_name,salary from employees where upper(last_name)=upper('&name');

select substr('jhansi',2,1) from dual;


select instr('ramanaramanaramana','a',1,9) from dual;


select count(*) from employees;

select translate('ramana','ramn','1234') from dual;


select round(5475.5361,-1) from dual;

select round(3456.456,2),round(9398.99999,2),round(54351.4567,-2) from dual;

select round(5435.9978,2) from dual;

select trunc(97.222222222,-1) from dual;
select round(97.222222222,-1) from dual;

select mod(4,2) from dual; 

select floor(99.999999999999999999999991) from dual;
select ceil(99.999999999999999999999991) from dual;
-----------------------------------
SELECT last_name, hire_date
FROM employees
WHERE hire_date < '01-FEB-08';

select systimestamp from dual;


SELECT last_name, round((SYSDATE-hire_date)/7) AS WEEKS
FROM employees
WHERE department_id = 90;

select to_char((sysdate-26-01-04),'yy') from dual;

select months_between(sysdate,'26-01-04') from dual;

select add_months(sysdate,2) from dual;

select next_day(sysdate,5) from dual;

select last_day('01-01-23') from dual;




select trunc(sysdate,'month') from dual;

select to_char(sysdate,'"Today is " fmddth yyyy mi am ') from dual;

select last_name||to_char(hire_date,' "hired on " fmddth month "of" yyyy HH12:mi:ss ') xyz from employees;


select to_char(salary,'9999,9.9.99') from employees;

select *from employees;

select hire_date from employees;

SELECT last_name, hire_date
FROM employees
WHERE hire_date = TO_DATE(' 17 June    2003');

select * from employees;
select salary,last_name||' earns '||to_char(salary,'fm$99,99,999.00')|| ' monthly but wants '||to_char((salary*3),'fm$99,99,999.00')||'.' as "Dream Salaries" from employees;///1


select last_name,hire_date,//2
to_char(hire_date,'fmday ,"the" fmddspth "of" fmmonth,yyyy') 
"REVIEW" FROM EMPLOYEES;

select last_name,hire_date,upper(to_char(hire_date,'day')) as "DAY" from employees;//3

select last_name ,nvl2(commission_pct,to_char(commission_pct),'No Commission')  "COMM" from employees;


select first_name,last_name, nullif(length(first_name),length(last_name)) name from employees;

select distinct job_id from employees ;//5
select JOB_ID ,decode(job_id,'AD_PRES','A',
'ST_MAN','B',
'IT_PROG','B',
'SA_REP','D',
'ST_CLERK','E',
0) "Grade" from employees;

select job_id ,(case  when job_id='AD_PRESS' THEN 'A'//6
when job_id='ST_CLERK' then 'E'
when job_id='ST_MAN' then 'B'
else '0'
end) "GRADE" from employees;

select department_id,count(*) from employees group by department_id having count(*) >3;

select department_id,count(*) from employees group by department_id having department_id=60 order by department_id;
select * from employees;
 SELECT AVG(salary), MAX(salary),
MIN(salary), SUM(salary)
FROM employees
WHERE job_id LIKE '%REP%' having sum(salary)>24000;
select distinct job_id from employees;


select e.department_id,e.last_name,d.department_name,d.department_id
from employees e join departments d 
on e.department_id=d.department_id 
 order by 1;




select e.department_id,e.last_name,d.department_name,l.city
from employees e join departments d 
on e.department_id=d.department_id 
join locations l on d.location_id=l.location_id order by 1;


select * from employees; 



select e.last_name employee,m.last_name manager
from employees e  join employees m
on m.employee_id=e.manager_id;

SELECT department_id, department_name,
location_id, city
FROM departments
NATURAL JOIN locations ;

select * from departments;
select * from employees;
select * from locations;


SELECT e.employee_id, e.last_name, e.department_id, e.manager_id,
d.department_id, d.location_id
FROM departments d JOIN employees e 
ON (e.manager_id = d.department_id)
AND e.manager_id = 149; 

select e.last_name employee,m.last_name manager
from employees e  cross join employees m ;

select e.last_name,e.first_name,d.department_id,d.manager_id from employees e join departments d on e.department_id=d.department_id;

select department_id,count(*) from employees where department_id=250 group by department_id ;

select e.last_name,m.last_name from employees e join employees m on m.employee_id=e.manager_id;

select e.last_name,e.first_name,d.department_id,d.manager_id from employees e join departments d on e.department_id=d.department_id;

select round(max(salary)) "Maximum",round(min(salary)) "Minimum",round(sum(salary))"Sum",round(avg(salary)) "Average" from employees;///////4

select job_id,min(salary) "Minimum",max(salary) "Maximum",sum(salary) "Sum", avg(salary) "Average" from employees group  by job_id ;//////5

select job_id,count(*) from employees group by job_id;///////THIS IS THE EXAMPLE OF 6th ONE
select job_id,count(*) from employees group by job_id HAVING job_id='&job';///////6

select count(*) "Managers" from employees group by department_id;

select  (max(salary)-min(salary)) "Difference" from employees ;///////8

select manager_id,min(salary)from employees group by manager_id having min(salary)<=6000;/////9

select count(*) as "Total" ,count(1995) as "1995", count(1996) as "1996", count(1997) as "1997", count(1998) as "1998" 
from employees ;
having count(hire_date like ('%1995')) or 
count (hire_date in ('%1996')) or count(hire_date in ('%1997'))
or count(hire_date in ('%1998'));

select distinct job_id  as "Job" ,(case when to_char(hire_date) yyyy then hire_date null
;
select * from employees ;
select * from departments ;
select * from locations ;
select * from countries;


select l.location_id,l.street_address,l.city,l.state_province,c.country_name 
from locations  l natural join countries  c ; /////1

select e.last_name,e.department_id,d.department_name
from employees e join departments d on e.department_id=d.department_id;////2

select e.last_name,e.job_id,d.department_id,d.department_name
from employees e join departments d on e.department_id=d.department_id 
 join locations l on d.location_id=l.location_id 
where city='Toronto';/////3

select e.last_name "Employee",e.employee_id "EMP#",m.last_name "Manager",m.employee_id 
from employees e join employees m on e.manager_id=m.employee_id;/////4

select e.last_name,e.manager_id,m.last_name,m.manager_id 
from employees e join employees m on e.manager_id=m.employee_id; /////5

select * from employees;

select e.department_id as "DEPARTMENT" , e.last_name as "EMPLOYEE" ,m.last_name
from employees e cross join employees m  order by DEPARTMENT;/////6

select * from employees where job_id like '%null';            

select max(salary) from employees;

select last_name,salary from employees where salary=
(select max(salary) from employees where salary<(select max(salary) from employees)) ;

select job_id,sum(salary) from employees group by job_id having
 sum(salary)>(select sum(salary)from employees
where job_id LIKE '%CLERK%'); 

--whose employee job is same as the job of 'Ellen' and who are earning salary more than 'Ellen' salary
select * from employees where job_id=
(select job_id from employees where first_name='Ellen') and salary>
(select salary from employees where first_name='Ellen');
 select max(salary) from employees;

select last_name,salary from employees where rownum<=5 order by salary desc;

select job_id,sum(salary) from employees group by job_id having sum(salary) >
(select sum(salary)from employees where job_id like '%CLERK%');

select * from employees;
select * from departments where department_id not in
(select  distinct department_id from employees where department_id is not null);

select count(distinct department_id ) from employees;

select * from employees where employee_id in
(select manager_id from employees group by manager_id);


select * from employees where employee_id in
(select manager_id from employees);

CREATE INDEX id_jhansi
ON jhansi (name,regd_no);

select add_months(sysdate,2) from dual;

select next_day(sysdate,5) from dual;

select trunc(sysdate,'year') from dual;



SELECT last_name, round((SYSDATE-hire_date)/7) AS WEEKS
FROM employees
WHERE department_id = 90;

select * from departments; 

select department_id ,department_name from 
(select department_id,department_name from departments 
where department_name like 'P%' and department_id=30);

select department_id,department_name  from departments 
where department_name like 'P%' and department_id=30;

select department_id,department_name  from departments 
where department_name like 'P%' or department_id=30;

----PRACTICE 7
select * from employees;
select * from departments;

select max(salary) from employees;
SELECT last_name , hire_date from employees where last_name =INITCAP('&name');

SELECT employee_id,last_name,salary from employees having salary>avg(salary) group by employee_id,last_name,salary order by salary;

select employee_id,last_name ,salary from employees where salary >(select avg(salary) from employees )order by salary;

select employee_id,last_name from employees where last_name like '%u%';

select last_name ,department_id,job_id from employees where department_id in
(select department_id  from departments where location_id='&location_id');

select e.last_name,d.department_id,l.location_id from employees e join departments d on e.department_id=d.department_id 
join locations l on d.location_id=l.location_id  where l.location_id=&location_id;


select e.last_name,e.salary,e.manager_id from employees e join employees m on e.manager_id=m.employee_id where m.employee_id=100;

select last_name,salary manager_id from employees where manager_id in(select employee_id from employees where last_name ='King');

select department_id ,last_name,job_id from employees where department_id in ( select department_id from departments where department_name ='Executive');

select employee_id,last_name ,salary from employees where salary>(select avg(salary) from employees )and  last_name like '%u%';

select department_id from DEPARTMENTS MINUS select department_id from EMPLOYEES where JOB_ID   =('ST_CLERK');

select* from departments;
select * from countries;
SELECT country_id,country_name from countries  union select location_id from departments where d.location_id is null;

SELECT country_id, country_name
FROM countries MINUS SELECT country_id, country_name
FROM countries c
JOIN locations l
USING(country_id)
JOIN departments d
USING(location_id)
WHERE department_id IS NOT NULL;

select * from tablee;
create table tablee1(names1 varchar2(100));
insert into tablee(names1) values("fgf"),("dfvvc"),("fhffg");
insert into tablee1(names1) values(a);
alter table tablee modify names1 varchar2(100); 


 