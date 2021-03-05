# Employees SQL Database
Created a SQL Database from information stored in six csv files from employees from the 1980s and 1990s.

#### Data Modeling:
Sketched out an ERD of the tables using the [ERD App](http://www.quickdatabasediagrams.com/).

ERD Diagam description:
* Primary and Composite keys are identified by a bold blue color on the column name and a key symbol next to it.
* Foreign keys are identified by a bold black color on the column name (No key symbol is shown next to it).

#### Data Engineering:
Created a database called Employees_db using PostgreSQL and a table schema for each of the csv files. Primary, Foreign and Composite keys where specified when needed.

#### Data Analysis:
Performed various queries to obtain specific information stored within the recently created database. 
Queries performed:
* Employee details (employee number, last name, first name, sex, and salary)
* Employees hired in 1986 details (first name, last name, and hire date)
* Managers detail information (department number, department name, the manager's employee number, last name, first name)
* Employees detail information (employee number, last name, first name, and department name)
* Employees whose first name is "Hercules and last names begin with "B" (first name, last name, and sex)
* Employees in the Sales department infromation (employee number, last name, first name, and department name)
* Employees in the Sales and Development departments information (employee number, last name, first name, and department name)
* Frequency count of employee last names in descending order
