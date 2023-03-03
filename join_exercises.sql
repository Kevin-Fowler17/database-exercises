USE ymir_employees;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
         JOIN departments AS d ON dm.dept_no = d.dept_no
WHERE year(dm.to_date) = 9999;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
         JOIN departments AS d ON dm.dept_no = d.dept_no
WHERE year(dm.to_date) = 9999 AND e.gender = 'f';


SELECT t.title, COUNT(title)
FROM titles AS t
         JOIN employees AS e ON e.emp_no = t.emp_no
         JOIN dept_emp AS de ON e.emp_no = de.emp_no
WHERE year(t.to_date) = 9999 AND de.dept_no = 'd009' AND year(de.to_date) = 9999
GROUP BY title
ORDER BY COUNT(title) DESC;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM employees as e
         JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
         JOIN departments AS d ON dm.dept_no = d.dept_no
         JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE year(dm.to_date) = 9999 AND year(s.to_date) = 9999;


SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS 'Department', CONCAT(em.first_name, ' ', em.last_name) AS 'Manager'
FROM employees as e
         JOIN dept_emp as de ON de.emp_no = e.emp_no
         JOIN departments as d ON d.dept_no = de.dept_no
         JOIN dept_manager as dm ON dm.dept_no = d.dept_no
         JOIN employees as em ON em.emp_no = dm.emp_no
WHERE year(de.to_date) = 9999 AND year(dm.to_date) = 9999
ORDER BY d.dept_name;






# USE ymir_kevin;
#
# INSERT INTO `users` (`name`, `email`, `role_id`) VALUES
#                                                      ('tonya','tonya@example.com', 2),
#                                                      ('emily','emily@example.com', 2),
#                                                      ('madison','madison@example.com', 2),
#                                                      ('olivia','olivia@example.com', null);
#
# SELECT users.name as user_name, roles.name as role_name
# FROM users
#          INNER JOIN roles ON users.role_id = roles.id;
#
# SELECT users.name as user_name, roles.name as role_name
# FROM users
#          LEFT JOIN roles ON users.role_id = roles.id;
#
# SELECT users.name as user_name, roles.name as role_name
# FROM users
#          RIGHT JOIN roles ON users.role_id = roles.id;