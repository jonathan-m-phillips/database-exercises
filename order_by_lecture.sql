USE employees;

SELECT emp_no, first_name, last_name
FROM employees
ORDER BY last_name DESC, first_name ASC, emp_no DESC;