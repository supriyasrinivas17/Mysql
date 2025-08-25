select * from
parks_and_recreation.employee_demographics;

select first_name,last_name,age,
case
    when age <20 then 'teen'
    when age>21 then 'young'
    when age between 30 and 50 then 'adult'
    end
    from employee_demographics;


select * from
parks_and_recreation.employee_demographics;

select first_name,last_name,age,
case
    when age <20 then 'teen'
    when age>21 then 'young'
    when age between 30 and 50 then 'adult'
end  as  age_bracket
from employee_demographics;


select * from
parks_and_recreation.employee_demographics;

select first_name,last_name,age,
case
    when age <20 then 'teen'
    when age>21 then 'young'
    when age between 30 and 50 then 'adult'
end  as  age_bracket
from employee_demographics;
select * from 
parks_and_recreation.employee_salary ;
select first_name,last_name,salary,
CASE
    when salary <50000 then salary+(salary*0.05)
    
END as pay_scale
from employee_salary;

select * from
parks_and_recreation.employee_demographics;

select first_name,last_name,age,
case
    when age <20 then 'teen'
    when age>21 then 'young'
    when age between 30 and 50 then 'adult'
end  as  age_bracket
from employee_demographics;
select * from 
parks_and_recreation.employee_salary ;
select first_name,last_name,salary,
CASE
    when salary <50000 then salary*1.05
    when salary >50000 then salary*1.07
    
    
END as incremented
from employee_salary;
