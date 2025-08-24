select *
from parks_and_recreation.employee_demographics;
select first_name,
right(first_name,4),
left(first_name,4)
from employee_demographics;
select first_name,
right(first_name,4),
left(first_name,4),
SUBSTRING(first_name,1,3),
birth_date,
substring(birth_date,6,2) as month,
substring(birth_date,1,4) as year
from employee_demographics;
