USE ymir_employees;

# SELECT emp_no, first_name, last_name
# FROM employees
# WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# SELECT last_name
# FROM employees
# WHERE last_name LIKE 'E%';

# SELECT last_name
# FROM employees
# WHERE last_name LIKE '%q%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya')
ORDER BY first_name;

SELECT emp_no, first_name, last_name
FROM employees
WHERE (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya')
ORDER BY first_name, last_name;

SELECT emp_no, first_name, last_name
FROM employees
WHERE (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya')
ORDER BY last_name, first_name;

SELECT *
FROM employees
WHERE last_name LIKE 'E%' or last_name LIKE '%E'
ORDER BY emp_no;
