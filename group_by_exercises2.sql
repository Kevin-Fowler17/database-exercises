USE ymir_employees;

SELECT DISTINCT title
FROM titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY last_name;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY first_name, last_name;

select count(last_name), last_name
FROM employees
WHERE last_name like '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name
order by last_name;

SELECT count(gender), gender
FROM employees
WHERE (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya')
group by gender;