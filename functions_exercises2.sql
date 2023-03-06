USE ymir_employees;

# SELECT emp_no, first_name, last_name
# FROM employees
# WHERE (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya')
# ORDER BY first_name;
#
# SELECT emp_no, first_name, last_name
# FROM employees
# WHERE (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya')
# ORDER BY first_name, last_name;
#
# SELECT emp_no, first_name, last_name
# FROM employees
# WHERE (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya')
# ORDER BY last_name, first_name;
#
# SELECT *
# FROM employees
# WHERE last_name LIKE 'E%' or last_name LIKE '%E'
# ORDER BY emp_no;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE month(birth_date) = 12 AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND year(hire_date) BETWEEN 1990 AND 1999;

SELECT *
FROM employees
WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND year(hire_date) BETWEEN 1990 AND 1999
ORDER BY birth_date, hire_date DESC;


SELECT *, DATEDIFF(now(), birth_date) AS 'Day at company'
FROM employees
WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND year(hire_date) BETWEEN 1990 AND 1999;
