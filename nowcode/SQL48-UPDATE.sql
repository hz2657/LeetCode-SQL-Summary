


UPDATE salaries
SET salary = salary * 1.1
WHERE to_date='9999-01-01'
AND emp_no IN (SELECT emp_no FROM emp_bonus);



