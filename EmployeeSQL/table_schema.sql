-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).
drop Table departments
drop Table dept_emp
drop Table dept-manager
drop Table employees
drop Table salaries
drop table titles

CREATE TABLE departments (
    dept_no VARCHAR(10)   NOT NULL,
    dept_name VARCHAR(35)   NOT NULL
);
select * from departments

CREATE TABLE dept_emp (
    emp_no int   NOT NULL,
    dept_no VARCHAR(10)   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);

select * from dept_emp

CREATE TABLE dept_manager (
    dept_no VARCHAR(10) NOT NULL,
    emp_no int   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);

CREATE TABLE employees (
    emp_no int   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR(35)   NOT NULL,
    last_name VARCHAR(35)   NOT NULL,
    gender VARCHAR(3)   NOT NULL,
    hire_date DATE   NOT NULL
);

CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);

CREATE TABLE titles (
    emp_no int   NOT NULL,
    title VARCHAR(35)   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);

select * from titles


