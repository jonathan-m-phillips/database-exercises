USE employees;

SELECT first_name, last_name, hire_date, emp_no
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);


SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'aamod');


SELECT DISTINCT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'aamod');


SELECT CONCAT(first_name, ' ', last_name) as 'Full Name'
FROM employees
WHERE gender = 'F' AND emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date LIKE '9999%'
);

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE to_date LIKE '9999%'
      AND emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'))
ORDER BY dept_name;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE salary IN (
        SELECT MAX(salary)
        FROM salaries));