-- verify the tables are loaded 

select * from employees

select * from departments


select * from dept_manager

select 
	salary,
	emp_no
from salaries

-- #### Data Analysis

-- Once you have a complete database, do the following:

-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT
	employees.emp_no,
	last_name,
	first_name,
	gender,
	salary
FROM
	employees 
INNER JOIN salaries on employees.emp_no = salaries.emp_no;



-- 2. List employees who were hired in 1986.
select date_part('year', hire_date) 
from employees;

SELECT
	employees.emp_no,
	last_name,
	first_name,
	gender,
	hire_date
FROM
	employees 
WHERE 
	date_part('year', hire_date)  = 1986

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT
	dept_manager.dept_no,
	dept_manager.emp_no,
	departments.dept_name,
	employees.last_name,
	employees.first_name,
	employees.hire_date,
	dept_manager.to_date
FROM
	dept_manager
INNER JOIN departments on dept_manager.dept_no = departments.dept_no
INNER JOIN employees on dept_manager.emp_no = employees.emp_no;
	
from dept_manager

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM
	employees
INNER JOIN dept_emp on employees.emp_no = dept_emp.emp_no
INNER JOIN departments on dept_emp.dept_no = departments.dept_no;
	

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name
FROM
	employees
WHERE
	employees.first_name = 'Hercules' AND employees.last_name LIKE 'B%';


-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM
	employees
INNER JOIN dept_emp on employees.emp_no = dept_emp.emp_no
INNER JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE
	departments.dept_name = 'Sales';


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM
	employees
INNER JOIN dept_emp on employees.emp_no = dept_emp.emp_no
INNER JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE
	departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT
	last_name,
	COUNT(last_name)
FROM
	employees
GROUP By
	last_name
ORDER By
	COUNT(last_name) DESC; 



