-- Create a new table
CREATE TABLE departments (
  dept_no VARCHAR(30) NOT NULL,
  dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

--delete any prev tables
DROP TABLE dept_emp;
--create table
CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp

--delete any prev tables
DROP TABLE dept_manager;
--create table
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--drop existing table
DROP TABLE employees;
--create new table
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
SELECT * FROM employees

--drop existing table
DROP TABLE salaries;
--create new table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--drop existing table
DROP TABLE titles;
--create new table
CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR(20) NOT NULL,
	PRIMARY KEY (title_id)
);
