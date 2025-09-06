select* from parks_and_recreation.employee_demographics;
select* from parks_and_recreation.employee_salary;
select age
from employee_demographics
group by age;
select gender,avg(salary)
from employee_demographics as dem
  join employee_salary as sal
  on dem.employee_id=sal.employee_id
  group by gender;
select gender,avg(salary) over (partition by gender)
from employee_demographics as dem
  join employee_salary as sal
  on dem.employee_id=sal.employee_id;
  
  select gender,sum(salary) over (partition by gender)
from employee_demographics as dem
  join employee_salary as sal
  on dem.employee_id=sal.employee_id;
  select dem.age,dem.first_name,sal.salary,
  sum(salary) over (partition by gender)
  from employee_demographics as dem
  join employee_salary as sal
  on dem.first_name = sal.first_name;
  select dem.age,dem.first_name,sal.salary,
  sum(salary) over (partition by gender) as sum_salary
  from employee_demographics as dem
  join employee_salary as sal
  on dem.employee_id = sal.employee_id;
   select dem.age,dem.first_name,sal.salary,
  sum(salary) over (partition by gender order by dem.employee_id) as sum_salary
  from employee_demographics as dem
  join employee_salary as sal
  on dem.employee_id = sal.employee_id;
  
     select dem.age,dem.first_name,sal.salary,
  row_number() over ()
  from employee_demographics as dem
  join employee_salary as sal
  on dem.employee_id = sal.employee_id;
  
	select dem.age,dem.first_name,sal.salary,
  row_number() over (partition by gender)
  from employee_demographics as dem
  join employee_salary as sal
  on dem.employee_id = sal.employee_id;
  
  	select dem.age,dem.first_name,sal.salary,
  row_number() over (partition by gender order by age)
  from employee_demographics as dem
  join employee_salary as sal
  on dem.employee_id = sal.employee_id;
  
SELECT dem.age,
       dem.first_name,
       sal.salary,
       dem.employee_id,
       dem.gender,
       ROW_NUMBER() OVER (PARTITION BY gender ORDER BY salary) AS row_num,
       RANK() OVER (PARTITION BY gender ORDER BY salary desc) AS rank_salary
FROM employee_demographics AS dem
JOIN employee_salary AS sal
  ON dem.employee_id = sal.employee_id;
  SELECT dem.age,
       dem.first_name,
       sal.salary,
       dem.employee_id,
       dem.gender,
       ROW_NUMBER() OVER (PARTITION BY gender ORDER BY salary) AS row_num,
       RANK() OVER (PARTITION BY gender ORDER BY salary desc) AS RANK_NUM,
        DENSE_RANK() OVER (PARTITION BY gender ORDER BY salary) AS DESNSE_NUM
FROM employee_demographics AS dem
JOIN employee_salary AS sal
  ON dem.employee_id = sal.employee_id;


SELECT dem.first_name,sal.salary,
       LAG(salary) OVER (PARTITION BY gender ORDER BY salary) AS prev_salary,
       LEAD(salary) OVER (PARTITION BY gender ORDER BY salary) AS next_salary
FROM employee_demographics AS dem
JOIN employee_salary AS sal
  ON dem.employee_id = sal.employee_id;
  
  SELECT dem.first_name, sal.salary,
       NTILE(4) OVER (PARTITION BY gender ORDER BY salary) AS quartile
FROM employee_demographics AS dem
JOIN employee_salary AS sal
  ON dem.employee_id = sal.employee_id;


  


  
