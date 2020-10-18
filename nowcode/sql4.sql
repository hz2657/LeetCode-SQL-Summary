#---V1--
SELECT E.last_name, E.first_name, D.dept_no
FROM dept_emp D INNER JOIN employees E USING(emp_no); 

#---V2--
SELECT E.last_name, E.first_name, D.dept_no
FROM dept_emp D, employees E 
WHERE D.emp_no = E.emp_no; 
