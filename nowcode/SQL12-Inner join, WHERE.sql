SELECT d1.dept_no, d1.emp_no, s1.salary
FROM dept_emp as d1
INNER JOIN salaries as s1 USING(emp_no)
WHERE d1.to_date='9999-01-01'
AND s1.to_date='9999-01-01'
AND s1.salary in (SELECT MAX(s2.salary)
FROM dept_emp as d2 INNER JOIN salaries as s2
ON d2.emp_no=s2.emp_no
WHERE d2.to_date='9999-01-01'
AND s2.to_date='9999-01-01'
AND d2.dept_no = d1.dept_no   ##### condition from outter table
)
ORDER BY d1.dept_no;
