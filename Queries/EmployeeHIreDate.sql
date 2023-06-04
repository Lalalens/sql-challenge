SELECT * 
FROM employees

SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE EXTRACT(YEAR FROM hire_date) = 1986