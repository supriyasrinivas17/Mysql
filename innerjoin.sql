select*
from parks_and_recreation.employee_demographics;
select*
from parks_and_recreation.employee_salary;
select s.occupation,s.salary
from employee_demographics as e
inner join employee_salary as s
on e.employee_id=s.employee_id;
