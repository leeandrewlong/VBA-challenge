--1.
SELECT 
employee.emp_id,
employee.last_name,
employee.first_name,
employee.sex,
salary.salary
FROM
employee 
INNER JOIN 
salary
ON employee.emp_id = salary.emp_id;

--2.
SELECT 
first_name,
last_name,
hire_date
FROM 
employee
WHERE 
RIGHT(hire_date,4) = '1986';

--3.
SELECT
department.dept_id,
department.dept_name,
dept_manager.emp_id,
employee.first_name,
employee.last_name
FROM department
INNER JOIN dept_manager ON department.dept_id = dept_manager.dept_id
INNER JOIN employee ON dept_manager.emp_id = employee.emp_id;


--4.
SELECT 
employee.first_name,
employee.last_name,
employee.emp_id, 
department.dept_name
FROM employee
INNER JOIN dept_emp ON employee.emp_id = dept_emp.emp_id
INNER JOIN department ON dept_emp.dept_id = department.dept_id

--5.
SELECT 
first_name,
last_name,
sex
FROM
employee
WHERE 
(first_name LIKE 'Hercules') AND (Left(last_name,1) = 'B');

--6.
SELECT
e.emp_id,
e.last_name,
e.first_name,
d.dept_name
FROM
department AS d
FULL JOIN dept_emp AS ed ON d.dept_id =ed.dept_id
FULL JOIN employee AS e ON ed.emp_id = e.emp_id
WHERE
d.dept_name = 'Sales';

--7.
SELECT 
employee.first_name,
employee.last_name,
employee.emp_id,
department.dept_name
FROM employee
INNER JOIN dept_emp ON employee.emp_id = dept_emp.emp_id
INNER JOIN department ON dept_emp.dept_id = department.dept_id
WHERE dept_name in ('Sales', 'Development');

--8.
SELECT 
last_name, count(last_name) AS NameFrequency
FROM Employee
GROUP BY last_name
ORDER BY count(last_name) DESC ;




