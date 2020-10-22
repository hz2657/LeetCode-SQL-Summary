SELECT E.emp_no, S.salary
FROM salaries S, employees E
WHERE S.emp_no = E.emp_no AND E.hire_date = S.from_date
ORDER BY S.emp_no DESC
