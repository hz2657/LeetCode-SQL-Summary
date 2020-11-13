SELECT AVG(salary)
FROM salaries
WHERE to_date = '9999-01-01'
AND salary NOT IN (SELECT MAX(salary) FROM salaries WHERE to_date = '9999-01-01')
AND salary NOT IN (SELECT MIN(salary) FROM salaries WHERE to_date = '9999-01-01')

