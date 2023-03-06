USE ymir_employees;

SELECT d.dept_name as 'Departments', CONCAT(e.first_name, ' ', e.last_name)
FROM departments as d
INNER JOIN dept_manager dm on d.dept_no = dm.dept_no
INNER JOIN employees e on dm.emp_no = e.emp_no
WHERE year(dm.to_date) = 9999;

SELECT d.dept_name as 'Departments', CONCAT(e.first_name, ' ', e.last_name)
FROM departments as d
INNER JOIN dept_manager dm on d.dept_no = dm.dept_no
INNER JOIN employees e on dm.emp_no = e.emp_no
WHERE year(dm.to_date) = 9999 AND e.gender = 'f';

SELECT t.title, COUNT(t.title)
FROM titles as t
INNER JOIN dept_emp de on t.emp_no = de.emp_no
INNER JOIN employees e on t.emp_no = e.emp_no
WHERE year(t.to_date) = 9999 AND year(de.to_date) = 9999 AND dept_no = 'd009'
GROUP BY t.title
ORDER BY COUNT(t.title) desc;

SELECT d.dept_name as 'Departments', CONCAT(e.first_name, ' ', e.last_name), s.salary as 'Salary'
FROM departments as d
INNER JOIN dept_manager dm on d.dept_no = dm.dept_no
INNER JOIN employees e on dm.emp_no = e.emp_no
INNER JOIN salaries s on e.emp_no = s.emp_no
WHERE year(dm.to_date) = 9999 AND year(s.to_date) = 9999;

SELECT CONCAT(e.first_name, ' ', e.last_name) as 'Employee', d.dept_name as 'Department', CONCAT(ee.first_name, ' ', ee.last_name) as Manager
FROM employees as e
# INNER JOIN dept_emp as de ON de.emp_no = e.emp_no
# INNER JOIN departments as d ON d.dept_no = de.dept_no
# INNER JOIN dept_manager as dm ON dm.dept_no = d.dept_no
# INNER JOIN employees as em ON em.emp_no = dm.emp_no
INNER JOIN dept_emp de on e.emp_no = de.emp_no
INNER JOIN departments d on de.dept_no = d.dept_no
INNER JOIN dept_manager dm on dm.dept_no = d.dept_no
INNER JOIN employees ee on dm.emp_no = ee.emp_no
WHERE year(de.to_date) = 9999 AND year(dm.to_date) = 9999;