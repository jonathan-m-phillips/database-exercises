USE employees;

SELECT * FROM employees WHERE hire_date = '1985-01-01';

SELECT first_name
FROM employees
WHERE first_name LIKE '%sus%';