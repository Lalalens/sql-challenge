--Frequency count of last names
SELECT last_name, COUNT(last_name) AS "name freq"
FROM employees
GROUP BY last_name
ORDER BY "name freq" DESC