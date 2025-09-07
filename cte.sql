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


with cte_example as
  (
  select employee_id,gender,birth_date
  from employee_demographics
  where birth_date >'1985-01-01'
  ),
  cte_example2 as
  (
  select employee_id,salary
  from employee_salary
  where salary>50000
  )
  select*from 
  cte_example as ct
  join cte_example2 as ct2
  on ct.employee_id = ct2.employee_id;
  
  
  with cte_example (Gender,AVG_salary) as
(
select gender,avg(salary) over(partition by gender)
from employee_demographics as dem
  join employee_salary as sal
  on dem.employee_id=sal.employee_id
  )
  select* from cte_example;

  
  
