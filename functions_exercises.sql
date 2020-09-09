USE employees;

SELECT first_name, last_name, emp_no
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no;


SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%12-25'
ORDER BY DATEDIFF(NOW(), hire_date) DESC;

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%12-25'
ORDER BY DATEDIFF(CURDATE(), hire_date) DESC;