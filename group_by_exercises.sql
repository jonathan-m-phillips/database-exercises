USE employees;

SELECT DISTINCT title
FROM titles;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E';

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%';

SELECT COUNT(DISTINCT first_name, last_name)
FROM employees
ORDER BY COUNT(*);

SELECT CONCAT(COUNT(*), ' ', gender)
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
GROUP BY gender
ORDER BY COUNT(*);