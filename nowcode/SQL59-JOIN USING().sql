


SELECT E.emp_no, E.first_name, E.last_name, B.btype, S.salary, 
(CASE WHEN B.btype = 1 THEN S.salary*0.1
WHEN B.btype = 2 THEN S.salary*0.2
ELSE S.salary*0.3 END) AS bonus          # bonus, not salary + bonus 
FROM employees E INNER JOIN emp_bonus B USING(emp_no)
INNER JOIN salaries S
ON E.emp_no = S.emp_no AND S.to_date = '9999-01-01'; 


