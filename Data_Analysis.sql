-- Employee details ( employee number, last name, first name, sex, and salary)
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no = s.emp_no

-- Employees hired in 1986 details (first name, last name, and hire date)
SELECT first_name, last_name, hire_date
FROM employees
WHERE sex = 'M'; --Need to change for a year filter

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT e.last_name, e.first_name
FROM employees AS d
INNER JOIN employees AS e ON
e.emp_no = s.emp_no




SELECT *
FROM dept_manager