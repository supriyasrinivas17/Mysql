select first_name,replace(last_name,'a','z')
from employee_demographics;
select*from
parks_and_recreation.employee_demographics;
select first_name,locate('a',last_name),
substring(first_name,1,3)
from employee_demographics;
