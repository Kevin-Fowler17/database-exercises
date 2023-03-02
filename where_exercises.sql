USE ymir_employees;

USE ymir_employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya');

SELECT emp_no, first_name, last_name
FROM employees
WHERE (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya') and gender = 'm';

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' or last_name LIKE '%E';

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' and last_name LIKE '%E';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' and not last_name LIKE '%qu%';