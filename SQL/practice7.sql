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

