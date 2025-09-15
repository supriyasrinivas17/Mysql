CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`()
BEGIN
	select*
	from employee_salary
	where salary>=50000;
	select *
	from employee_salary
	where salary>=10000;
  
END



DELIMITER $$
create procedure large_salary4(p_employee_id int)
BEGIN
	select*
	from employee_salary
	where employee_id = p_employee_id ;
	
END $$    
DELIMITER ;


call large_salary4(1);
