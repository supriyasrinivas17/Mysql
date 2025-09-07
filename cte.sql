select* from parks_and_recreation.employee_demographics;
select* from parks_and_recreation.employee_salary;


with cte_example as
(
select gender,avg(salary) over(partition by gender)
from employee_demographics as dem
  join employee_salary as sal
  on dem.employee_id=sal.employee_id
  )
  select* from cte_example;
  
  with cte_example as
(
select gender,avg(salary) ,max(salary) as max_salary,min(salary)
from employee_demographics as dem
  join employee_salary as sal
  on dem.employee_id=sal.employee_id
  group by gender
  )
  select avg(max_salary) from cte_example;
  
  
