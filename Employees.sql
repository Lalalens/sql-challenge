--Create Titles table
CREATE TABLE titles(
	title_id VARCHAR(40) NOT NULL, 
	title VARCHAR(40) NOT NULL,
	PRIMARY KEY (title_id)
);
SELECT *
FROM titles

--Create the employees table
CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(40) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	sex VARCHAR (1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
SELECT *
FROM employees

--Create the department table
CREATE TABLE departments(
	dept_no VARCHAR (40) NOT NULL,
	dept_name VARCHAR (40) NOT NULL,
	PRIMARY KEY(dept_no)
);
SELECT *
FROM departments

--Create the Department Employees table
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR (40) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT *
FROM dept_emp

--Create Department Managers Table
CREATE TABLE dept_manager(
	dept_no VARCHAR (40) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT *
FROM dept_manager

--Create salaries table
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * 
FROM salaries

--Create inner join to return employee info with slary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries as s on
e.emp_no=s.emp_no;

--Employees hired in the year 1986
SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE EXTRACT(YEAR FROM hire_date) = 1986

--Create an inner join to return manager information
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no

--Create an inner join to employee department information
SELECT dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON dept_emp.dept_no = dept_emp.dept_no

--Employees with the name Hercules and last anme begins with B
SELECT first_name, last_name
FROM EMPLOYEES 
WHERE first_name = Hercules and last_name != B