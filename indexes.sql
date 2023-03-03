USE ymir_employees;

DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE titles;
DESCRIBE current_dept_emp;
DESCRIBE dept_emp_latest_date;

USE ymir_kevin;

create unique index idx_artist_album
    on ymir_kevin.albums (artist, album_name);