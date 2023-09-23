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