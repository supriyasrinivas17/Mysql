select emp.first_name,s.salary
from employee_demographics as emp
left join employee_salary as s
on emp.employee_id = s.employee_id

union

select emp.first_name,s.salary
from employee_demographics as emp
right join  employee_salary as s
on emp.employee_id = s.employee_id;
