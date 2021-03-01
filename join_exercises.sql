USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'DEPARTMENT MANAGER', d.dept_name AS 'DEPARTMENT NAME'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender='F'  ORDER BY d.dept_name;

SELECT t.title AS 'TITLE', COUNT(t.title) AS 'COUNT
', d.dept_name AS 'DEPARTMENT NAME'
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
        JOIN titles as t
                ON t.emp_no=e.emp_no
WHERE de.to_date = '9999-01-01' AND d.dept_name='Customer Service' AND T.to_date='9999-01-01'
GROUP BY t.title;

SELECT d.dept_name AS 'DEPARTMENT NAME',CONCAT(e.first_name, ' ', e.last_name)  AS 'NAME', s.salary AS 'SALARY', t.title AS 'TITLE'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
         JOIN titles as t
              ON t.emp_no=e.emp_no
        JOIN salaries as s
                ON s.emp_no=e.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date='9999-01-01' AND t.title='Manager'
ORDER BY d.dept_name;