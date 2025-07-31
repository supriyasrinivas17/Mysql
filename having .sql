 select *
 from parks_and_recreation.employee_salary;
 select first_name,avg(salary) as avg_salary
from parks_and_recreation.employee_salary
group by first_name
having avg_salary>50000;
select employee_id,sum(salary) as total_salary
from parks_and_recreation.employee_salary
group by employee_id
having total_salary>70000;
