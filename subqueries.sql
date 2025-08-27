select *from 
parks_and_recreation.employee_demographics
where employee_id in
(select employee_id 
from employee_salary
where dept_id = 1);

select first_name,salary,
(select avg(salary)
from employee_salary)
from employee_salary;

SELECT AVG(`MAX(age)`)
FROM (
    SELECT gender, 
           AVG(age), 
           MAX(age), 
           MIN(age), 
           COUNT(age)
    FROM employee_demographics
    GROUP BY gender
) AS Agg_table;



SELECT AVG(max_age)
FROM (
    SELECT gender, 
           AVG(age), 
           MAX(age) as max_age, 
           MIN(age), 
           COUNT(age)
    FROM employee_demographics
    GROUP BY gender
) AS Agg_table;
