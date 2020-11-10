

SELECT (last_name || ' ' || first_name) AS Name
FROM employees;


---OR 
SELECT CONCAT(last_name, first_name) AS Name
FROM employees;
