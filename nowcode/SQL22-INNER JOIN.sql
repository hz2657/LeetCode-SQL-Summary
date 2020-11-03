
SELECT TABLE1.dept_no, D.dept_name, TABLE1.su
FROM 
(SELECT E.dept_no AS dept_no, COUNT(*) AS su
FROM salaries S INNER JOIN dept_emp E USING(emp_no)   ## ---- USE INNER JOIN HERE----- CUZ WE NEED BOTH SALARY AND EMPLOY_INFO, EMPLOYEE INFO IS A MIDDLE BRIDGE
GROUP BY E.dept_no) TABLE1
LEFT JOIN departments D USING (dept_no);


