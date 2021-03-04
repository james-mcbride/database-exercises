USE titles;
SELECT DISTINCT title from titles;


USE employees;
SELECT * from employees;
SELECT DISTINCT first_name,last_name FROM employees WHERE last_name LIKE '%E' AND last_name LIKE 'E%' ORDER BY last_name;

SELECT  COUNT(DISTINCT last_name) from employees where last_name like '%q%' AND last_name NOT LIKE '%qu%';

SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya' )  GROUP BY first_name;
