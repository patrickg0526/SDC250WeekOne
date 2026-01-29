-- Patrick Gonzalez
-- SDC250 PA 1.8: WHERE and ORDER BY Clause

-- Query 1: Employees in SAL, SHP, or ACT departments
SELECT first_name, last_name, dept_code
FROM l_employees
WHERE dept_code IN ('SAL', 'SHP', 'ACT');

-- Query 2: Employees with IDs between 201 and 205
SELECT employee_id, first_name, last_name
FROM l_employees
WHERE employee_id BETWEEN 201 AND 205
ORDER BY employee_id;

-- Query 3: Employees whose ID contains the number 1
SELECT employee_id, first_name, last_name
FROM l_employees
WHERE TO_CHAR(employee_id) LIKE '%1%'
ORDER BY employee_id;

-- Query 4: Employees without a manager
SELECT *
FROM l_employees
WHERE manager_id IS NULL;

-- Query 5: Departments ordered alphabetically
SELECT department_name AS dept
FROM l_departments
ORDER BY 1 ASC;
