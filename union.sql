select*from
parks_and_recreation.employee_demographics;
select*from 
parks_and_recreation.employee_salary;
select first_name,last_name
from employee_demographics
where age>40 and gender = 'female'
union 
select first_name,last_name
from employee_salary
