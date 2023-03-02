USE ymir_employees;

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

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
ORDER BY emp_no;

SELECT *
FROM employees
WHERE last_name LIKE 'E%' or last_name LIKE '%E'
ORDER BY emp_no DESC ;

SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY birth_date;

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY hire_date;

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY hire_date DESC, birth_date DESC;

SELECT *,
    DATEDIFF(NOW(), hire_date) AS days_working_at_company
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY hire_date DESC, birth_date DESC;