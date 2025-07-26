select*
from parks_and_recreation.employee_salary;
select*
from employee_salary
where salary>50000
;
select *
from employee_salary
where occupation = 'Nurse'
;
select *
from employee_salary
where dept_id =1
;
select*
from employee_salary
where dept_id>1
;
select*
from employee_demographics;
select *
from employee_demographics
where age>40;
select*
from employee_demographics
where gender = 'female'
;
select*
from employee_demographics
where gender = 'female'
and age >40
;
select*
from employee_demographics
where gender = 'male'
and age >50
;
select*
from employee_demographics
where (gender = 'female'and age >40) or age<60
;
select*
from employee_demographics
where (employee_id = 10 and age >40) or age>60
;
