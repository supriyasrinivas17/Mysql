“salary greater than ALL employees in dept 20”

SELECT emp_name, emp_id, salary, dept_id
FROM emp_salary
WHERE salary > ALL (
    SELECT salary FROM emp_salary WHERE dept_id = 20
);


“salary greater than ANY employee in dept 20”
SELECT emp_name, emp_id, salary, dept_id
FROM emp_salary
WHERE salary > ANY (
    SELECT salary FROM emp_salary WHERE dept_id = 20
);
“salary greater than the highest salary in dept 20”

SELECT emp_name, emp_id, salary, dept_id
FROM emp_salary
WHERE salary > (
    SELECT MAX(salary) FROM emp_salary WHERE dept_id = 20
);

"employees in the same department as Mary or Bob"
SELECT emp_name, emp_id
FROM employee
WHERE dept IN (
    SELECT dept 
    FROM employee 
    WHERE emp_name IN ('Mary', 'Bob')
);

List employees who earn less than the average salary of all employees.
  SELECT emp_name, salary
FROM employee
WHERE salary < (SELECT AVG(salary) FROM employee);

"For each employee, show first_name and their salary compared to the average salary of their department (Higher / Lower)."
SELECT e.emp_name,
       e.salary,
       CASE 
           WHEN e.salary > (SELECT AVG(salary) 
                            FROM employee 
                            WHERE dept = e.dept) THEN 'Higher'
           ELSE 'Lower'
       END AS salary_comparison
FROM employee e;
