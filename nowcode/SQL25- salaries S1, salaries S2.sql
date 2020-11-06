
SELECT E.emp_no, M.emp_no AS manager_no, S1.salary, S2.salary
FROM dept_emp E, dept_manager M, salaries S1, salaries S2
WHERE E.dept_no = M.dept_no
AND S1.emp_no = E.emp_no AND S2.emp_no = M.emp_no
AND E.to_date='9999-01-01' AND M.to_date='9999-01-01' AND S1.to_date='9999-01-01' AND S2.to_date='9999-01-01'
AND S1.salary > S2.salary; 
