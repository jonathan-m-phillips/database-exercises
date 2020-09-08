USE employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
ORDER BY last_name DESC
LIMIT 10 OFFSET 5;