select* 
from parks_and_recreation.employee_demographics;
select*
from parks_and_recreation.employee_salary;
select emp.salary,dem.first_name
from employee_salary as emp
left join employee_demographics as dem
on emp.employee_id = dem.employee_id;

