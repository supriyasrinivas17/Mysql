select first_name, upper(last_name)
from employee_demographics;
select first_name, lower(last_name)
from employee_demographics;
select first_name,lower(last_name)
from employee_demographics
where upper(substring(first_name = 'bre'));
