
SELECT S2.emp_no, S2.from_date, (S2.salary-S1.salary) AS salary_growth
FROM salaries S1, salaries S2
WHERE S1.emp_no = S2.emp_no AND S1.to_date = S2.from_date
AND salary_growth > 5000
ORDER BY salary_growth DESC; 

