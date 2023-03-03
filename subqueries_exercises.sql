USE ymir_employees;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;


# SELECT first_name, last_name, birth_date
# FROM employees
# WHERE emp_no IN (
#     SELECT emp_no
#     FROM dept_manager
# )
# LIMIT 10;

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
