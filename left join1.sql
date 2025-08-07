
use parks_and_recreation;
select * from employee_demographics;
select*from employee_salary;
select employee_demographics.first_name,employee_salary.salary,employee_demographics.employee_id
 from employee_salary
left join employee_demographics
on employee_demographics.employee_id = employee_salary.employee_id;
