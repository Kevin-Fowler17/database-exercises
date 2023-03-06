USE ymir_employees;

SELECT *
FROM employees as e
WHERE e.hire_date IN (
    SELECT hire_date
    FROM employees as e2
    WHERE e2.emp_no = 101010
);

SELECT t.title
FROM titles t
 INNER JOIN employees e on t.emp_no = e.emp_no
WHERE e.first_name IN (
    SELECT e2.first_name
    FROM employees e2
    WHERE e2.first_name = 'Aamod');

SELECT t.title, count(t.title)
FROM titles t
INNER JOIN employees e on t.emp_no = e.emp_no
WHERE e.first_name IN (
    SELECT e2.first_name
    FROM employees e2
    WHERE e2.first_name = 'Aamod')
GROUP BY t.title;

SELECT e.first_name, e.last_name
FROM employees e
WHERE e.gender = 'f' and e.emp_no IN (
    SELECT dm.emp_no
    FROM dept_manager dm
    WHERE year(dm.to_date) = 9999
    );

SELECT d.dept_name
FROM departments d
WHERE d.dept_no IN (
    SELECT dm.dept_no
    FROM dept_manager dm
    WHERE year(dm.to_date) = 9999 and dm.emp_no IN (
        SELECT e.emp_no
        FROM employees e
        WHERE e.gender = 'f'))