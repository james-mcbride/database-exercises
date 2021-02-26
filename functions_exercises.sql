USE employees;
SELECT * FROM EMPLOYEES ORDER BY last_name, first_name;
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya' ) ORDER BY last_name, first_name;

SELECT CONCAT(first_name, last_name) FROM employees WHERE last_name like 'E%' AND last_name like '%E' ;

SELECT * FROM employees WHERE last_name like 'E%' AND last_name like '%E' ORDER BY emp_no DESC;


SELECT * from employees where hire_date like '199%';

SELECT CONCAT('Hire date: ', hire_date, ' WORKED: ',datediff(curdate(), hire_date ), ' days') from employees where birth_date like '%12-25';

SELECT * from employees where birth_date like '%12-25' AND hire_date like '199%' ORDER BY birth_date, hire_date DESC;


SELECT * from employees where last_name like '%q%' AND last_name NOT LIKE '%qu%';

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '199%';

SELECT first_name, count(first_name)
FROM employees
GROUP BY first_name
ORDER BY count(first_name) DESC;