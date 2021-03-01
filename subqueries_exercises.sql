use employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no=101010
);

SELECT first_name, last_name, t.title
FROM employees as e
    join titles as t
         ON t.emp_no=e.emp_no
WHERE first_name IN (
    SELECT first_name
    FROM employees
    WHERE first_name='Aamod'
);

SELECT COUNT(t.title) as 'Count', title
FROM employees as e
         join titles as t
              ON t.emp_no=e.emp_no
WHERE first_name IN (
    SELECT first_name
    FROM employees
    WHERE first_name='Aamod'
)
GROUP BY t.title;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE gender='F' AND to_date='9999-01-01'
)
