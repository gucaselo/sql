-- Employee details ( employee number, last name, first name, sex, and salary)
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no = s.emp_no;

-- Employees hired in 1986 details (first name, last name, and hire date)
SELECT first_name, last_name, hire_date
FROM employees
WHERE sex = 'M'; --Need to change for a year filter;

-- Managers detail information (department number, department name, the manager's employee number, last name, first name).
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name 
FROM dept_manager AS dm
INNER JOIN employees AS e ON
dm.emp_no = e.emp_no
INNER JOIN departments AS d ON
dm.dept_no = d.dept_no;


-- Employees detail information (employee number, last name, first name, and department name).
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name 
FROM dept_employees AS de
INNER JOIN employees AS e ON
de.emp_no = e.emp_no
INNER JOIN departments AS d ON
de.dept_no = d.dept_no;


-- Employees whose first name is "Hercules and last names begin with "B" (first name, last name, and sex).
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%';


-- Employees in the Sales department infromation (employee number, last name, first name, and department name).
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_employees AS de ON
e.emp_no = de.emp_no
INNER JOIN departments AS d ON
de.dept_no = d.dept_no
WHERE dept_name = 'Sales';

-- Employees in the Sales and Development departments information (employee number, last name, first name, and department name).
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_employees AS de ON
e.emp_no = de.emp_no
INNER JOIN departments AS d ON
de.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- Frequency count of employee last names.
SELECT last_name, count(last_name) AS last_name_freq
FROM employees
GROUP BY last_name
ORDER BY last_name_freq DESC;


SELECT *
FROM dept_employees

SELECT *
FROM employees

SELECT *
FROM departments