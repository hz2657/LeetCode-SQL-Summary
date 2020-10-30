SELECT E.emp_no, (S2.salary - S1.salary) AS growth
FROM employees E 
INNER JOIN salaries S1 ON  E.emp_no = S1.emp_no AND S1.from_date = E.hire_date
INNER  JOIN salaries S2 ON E.emp_no = S2.emp_no AND S2.to_date = '9999-01-01'
ORDER BY growth;
