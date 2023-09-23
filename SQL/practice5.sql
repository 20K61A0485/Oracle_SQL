
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
