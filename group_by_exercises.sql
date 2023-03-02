USE ymir_employees;

SELECT COUNT(*) FROM employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY last_name;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY last_name;

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' and not last_name LIKE '%qu%'
GROUP BY last_name;

# DISTINCT is redundant with GROUP BY
# SELECT DISTINCT COUNT(last_name), last_name
SELECT COUNT(last_name), last_name
FROM employees
WHERE last_name LIKE '%q%' and not last_name LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;

# SELECT DISTINCT COUNT(last_name), last_name
SELECT COUNT(gender), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

