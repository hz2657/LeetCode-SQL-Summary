

SELECT emp_no, salary, DENSE_RANK() OVER(ORDER BY salary DESC) AS rank #  DENSE_RANK() OVER()
FROM salaries
WHERE to_date='9999-01-01'
ORDER BY rank, emp_no;


