USE employees;

SELECT * FROM employees WHERE (first_name='Irena' OR first_name='Vidya' OR first_name='Maya' )AND gender='F';

SELECT * FROM employees WHERE last_name like 'E%' OR last_name like '%E' ;

SELECT * FROM employees WHERE last_name like 'E%' AND last_name like '%E' ;


SELECT * from employees where hire_date like '199%';

SELECT * from employees where birth_date like '%12-25';

SELECT * from employees where birth_date like '%12-25' AND hire_date like '199%';


SELECT * from employees where last_name like '%q%' AND last_name NOT LIKE '%qu%';