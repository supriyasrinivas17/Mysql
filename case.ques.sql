Simple CASE

"Compares one column/expr with specific values."

SELECT emp_name, dept_id,
       CASE dept_id
           WHEN 10 THEN 'HR'
           WHEN 20 THEN 'Finance'
           WHEN 30 THEN 'IT'
           ELSE 'Other'
       END AS dept_name
FROM employee;
Searched CASE

"Checks multiple conditions (more flexible)."

SELECT emp_name, salary,
       CASE 
           WHEN salary > 50000 THEN 'High'
           WHEN salary BETWEEN 30000 AND 50000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_level
FROM employee;
"CASE with Aggregates"
SELECT 
   SUM(CASE WHEN salary < 30000 THEN 1 ELSE 0 END) AS Low_Salaries,
   SUM(CASE WHEN salary BETWEEN 30000 AND 60000 THEN 1 ELSE 0 END) AS Medium_Salaries,
   SUM(CASE WHEN salary > 60000 THEN 1 ELSE 0 END) AS High_Salaries
FROM employee;
