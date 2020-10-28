#---v1
SELECT emp_no, salary
FROM (SELECT *, RANK() OVER(ORDER BY salary DESC) r
FROM salaries
WHERE to_date='9999-01-01') AS FOO
WHERE r = 2; 

#---v0
SELECT emp_no, salary
FROM salaries
WHERE to_date='9999-01-01'
ORDER BY salary DESC
LIMIT 1 OFFSET 1
