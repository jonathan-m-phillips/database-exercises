use employees;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;

SELECT e.first_name, e.last_name, e.birth_date
FROM employees as e
    RIGHT JOIN dept_manager dm on e.emp_no = dm.emp_no
LIMIT 10;

SELECT first_name, last_name, birth_date
FROM employees
WHERE birth_date LIKE '%12-15' AND emp_no IN (
    SELECT emp_no FROM dept_emp WHERE dept_no IN (
        SELECT dept_no FROM departments WHERE dept_name = 'Customer Service'
    )
);

SELECT e.first_name, e.last_name, e.birth_date, d.dept_name
FROM employees as e
JOIN dept_emp de on e.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
WHERE e.birth_date LIKE '%-12-25' AND d.dept_name = 'Customer Service';

SELECT CONCAT(first_name, ' ', last_name) as 'Full Name'
FROM employees
WHERE gender = 'F' AND emp_no IN (
    SELECT emp_no FROM dept_manager WHERE to_date LIKE '9999%'
);