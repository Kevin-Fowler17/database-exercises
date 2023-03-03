USE ymir_employees;

SELECT *
FROM employees as e
WHERE e.hire_date IN (
    SELECT e2.hire_date
    FROM employees as e2
    where e2.emp_no = 101010);

SELECT e.first_name, t.title
FROM employees as e
    INNER JOIN titles as t on e.emp_no = t.emp_no
WHERE first_name IN (
    SELECT e2.first_name
    FROM employees as e2
    where e2.first_name = 'Aamod');

SELECT t.title, COUNT(t.title)
FROM employees as e
         INNER JOIN titles as t on e.emp_no = t.emp_no
WHERE first_name IN (
    SELECT e2.first_name
    FROM employees as e2
    where e2.first_name = 'Aamod')
GROUP BY (title);

SELECT e.first_name, e.last_name
FROM employees as e
WHERE e.gender = 'f' AND e.emp_no IN (
    SELECT dm.emp_no FROM dept_manager as dm
    WHERE year(dm.to_date) = 9999);

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE to_date LIKE '9%' AND emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'f'));


# SELECT first_name, last_name, birth_date
# FROM employees
# WHERE emp_no IN (
#     SELECT emp_no
#     FROM dept_manager
# )
# LIMIT 10;
#
# USE ymir_kevin;
#
# INSERT INTO users (name, email, role_id)
# VALUES('fer', 'fer@codeup.com',
#        (SELECT id FROM roles WHERE name = 'commenter')
#       );
#
# UPDATE users
# SET role_id = (SELECT id FROM roles WHERE name = 'admin')
# WHERE email = 'fer@codeup.com';
