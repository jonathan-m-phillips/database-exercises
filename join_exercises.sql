USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01';

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.gender = 'F' ORDER BY  dept_name;

SELECT t.title AS `Title`, COUNT(*) AS `Count`
FROM titles as t
         JOIN employees as e
              ON t.emp_no = e.emp_no
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date LIKE '9999%' AND d.dept_name = 'Customer Service'
    AND t.to_date LIKE '9999%'
GROUP BY t.title
ORDER BY t.title;

SELECT d.dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name)
    AS `Department Manager Name`, s.salary as `Salary`
FROM employees as e
         JOIN salaries as s
              ON s.emp_no = e.emp_no
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

# bonus

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name
    AS `Department Name`, CONCAT(e2.first_name, ' ', e2.last_name) AS `Department Manager Name`
FROM employees as e
         JOIN dept_emp AS de
              ON e.emp_no = de.emp_no
         JOIN departments AS d
              ON d.dept_no = de.dept_no
         JOIN dept_manager AS dm
              ON d.dept_no = dm.dept_no
         JOIN employees AS e2
              ON e2.emp_no = dm.emp_no
WHERE de.to_date LIKE '9999%' and dm.to_date LIKE '9999%'
ORDER BY e.last_name ASC;