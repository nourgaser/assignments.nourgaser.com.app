--question 1
select last_name, salary from employees where salary>12000;
--question 2
select last_name, department_id from employees where employee_id=176;
--question 3
select last_name, salary from employees where salary < 5000 or salary > 12000;
--question 4
select last_name, job_id, hire_date from employees 
where last_name='Matos' or last_name='Taylor' 
order by hire_date;
--question 5
select last_name, department_id from employees
where department_id=50 or department_id=20 
order by last_name;
--question 6
select last_name "Employee", salary "Monthly Salary" from employees
where salary >= 5000 and salary <=12000
and department_id=20 or department_id=50;
--question 7
select last_name, hire_date from employees
where hire_date between TO_DATE('1994-01-01', 'YYYY-MM-DD') 
and TO_DATE('1994-12-31', 'YYYY-MM-DD');
--question 8
select last_name, job_id from employees where manager_id is null;
--question 9
select last_name, salary, commission_pct from employees
where commission_pct is not null 
order by salary desc;
--you can't order by two things.

--question 10
select INITCAP(last_name) "Employee Name", length(last_name) "Employee Name Length" from employees
where REGEXP_LIKE (last_name, '[JAM].*')
order by last_name;
--question 11
accept salary num prompt 'Enter the salary >';
select last_name, salary from employees
where salary > '$salary';
--question 12
accept dep_id num prompt 'Enter the department id >';
accept sort_by char prompt 'What do you want to sort by? >';
select employee_id, last_name, salary, department_id from employees
where department_id='&dep_id'
order by &sort_by;
--question 13
select last_name from employees
where REGEXP_LIKE (last_name, '^..a.*');
--question 14
select last_name from employees
where REGEXP_LIKE (last_name, '(.*a.*e.*)|(.*e.*a.*)');
--question 15
select last_name, job_id, salary from employees
where job_id IN('SA_REP', 'ST_CLERK')
and salary not IN(2500, 3500, 7000);
--question 16
select last_name, salary, commission_pct from employees
where commission_pct=0.2;
--question 17
select sysdate "Date" from dual;
--question 18
select employee_id, last_name, salary, ROUND(salary*1.155, 0) "New Salary" from employees;
--question 19
select employee_id, last_name, salary, ROUND(salary*1.155, 0) "New Salary",
(ROUND(salary*1.155, 0)-salary) "Increase" from employees;
--question 20
select initcap(last_name) "Employee Name", length(last_name) "Employee Name Length" from employees
where REGEXP_LIKE (last_name, '[JAM].*')
order by last_name;
--question 21
accept firstLetter char format 'A1' prompt 'Enter the first letter >';
select initcap(last_name) "Employee Name", length(last_name) "Employee Name Length" from employees
where REGEXP_LIKE (last_name, '^(&firstLetter).*')
order by last_name;
--question 22
select last_name, ROUND(MONTHS_BETWEEN(SYSDATE,hire_date), 0) MONTHS_WORKED from employees
order by MONTHS_WORKED;
--question 23
select last_name || ' earns ' || salary || ' monthly but wants ' || 3*salary || '.' as "Dream Salaries" from employees;
--question 24
select last_name, LPAD('$' || salary, 15, ' ') "Salary" from employees;
--question 25 --- nope
 
--question 26 --- nope
select last_name, hire_date, TO_CHAR(hire_date, 'DAY') DAY from employees
order by TRUNC(DAY);
--question 27
select last_name, nvl(TO_CHAR(commission_pct), 'No Commission,') COMM from employees;
--question 28

--question 29

--question 30
