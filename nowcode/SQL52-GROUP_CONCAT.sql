SELECT dept_no, GROUP_CONCAT(emp_no, ',')
FROM dept_emp
GROUP BY dept_no；

