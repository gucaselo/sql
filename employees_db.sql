-- Create Titles ID table
CREATE TABLE titles (
title_id VARCHAR(50) PRIMARY KEY,
title VARCHAR(100)
);

-- Create Employees Table
CREATE TABLE employees (
emp_no INT PRIMARY KEY,
emp_title_id VARCHAR(50),
birth_date DATE,
first_name VARCHAR(25),
last_name VARCHAR(25),
sex VARCHAR(10),
hire_date DATE,
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create Salaries Table
CREATE TABLE salaries (
emp_no INT,
salary INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create Departments table
CREATE TABLE departments (
dept_no VARCHAR(50) PRIMARY KEY,
dept_name VARCHAR(100)
);

-- Create Dept_Employees table
CREATE TABLE dept_employees (
emp_no INT,
dept_no VARCHAR(50),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create Dept_Manager table
CREATE TABLE dept_manager (
dept_no VARCHAR(50),
emp_no INT,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Used drop table if a data type conflict happened 
DROP TABLE dept_manager, dept_employees, departments, salaries, employees, titles;

-- Check created tables
SELECT *
FROM employees

SELECT *
FROM titles

SELECT *
FROM departments

SELECT *
FROM salaries

-- Check if any duplicates in emp_no
SELECT emp_no, COUNT(emp_title_id) AS "employee_number"
FROM employees
GROUP BY emp_no
ORDER BY employee_number DESC
LIMIT 10;