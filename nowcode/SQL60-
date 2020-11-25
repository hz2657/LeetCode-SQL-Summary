
----methods 1-----
SELECT S1.emp_no, S1.salary, SUM(S2.salary)
FROM salaries S1, salaries S2
WHERE S1.emp_no>=S2.emp_no
AND S1.to_date = '9999-01-01' AND S2.to_date = '9999-01-01'   # 注意条件
GROUP BY S1.emp_no # sum()后面需要使用groupby
;


----methods 2：windows function-----

SELECT emp_no, salary, SUM(salary) OVER (ORDER BY emp_no)
FROM salaries 
WHERE to_date = '9999-01-01'


