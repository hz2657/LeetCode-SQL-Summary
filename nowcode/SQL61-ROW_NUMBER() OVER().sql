# 注意要求说的是输出时不需排序。

SELECT first_name
FROM employees
WHERE emp_no IN 
(SELECT emp_no
FROM(SELECT *, ROW_NUMBER() OVER(ORDER BY first_name) AS r
FROM employees) TABLE1
WHERE r%2 <> 0);
