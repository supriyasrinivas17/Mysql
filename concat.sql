
select first_name,last_name,
concat(first_name,last_name)
from employee_demographics;

select first_name,last_name,
concat(first_name," " ,last_name)
from employee_demographics;

select first_name,last_name,
concat(first_name," - ",last_name)
from employee_demographics;
