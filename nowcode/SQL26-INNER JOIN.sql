

SELECT E.dept_no, D.dept_name, T.title, COUNT(T.title)
FROM dept_emp E INNER JOIN departments D USING(dept_no)
INNER JOIN titles T ON E.emp_no = T.emp_no 
WHERE E.to_date = '9999-01-01' AND T.to_date = '9999-01-01'
GROUP BY E.dept_no, D.dept_name, T.title
ORDER BY E.dept_no;

