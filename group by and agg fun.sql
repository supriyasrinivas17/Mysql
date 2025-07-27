SELECT * FROM parks_and_recreation.employee_demographics;
select age
from employee_demographics;
select gender,max(age)
from employee_demographics
group by gender;
select employee_id,min(salary)
from employee_salary
group by employee_id;
select employee_id,count(occupation)
from employee_salary
group by employee_id;

