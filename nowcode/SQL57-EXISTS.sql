
SELECT * FROM employees
WHERE NOT EXISTS (SELECT emp_no FROM dept_emp WHERE dept_emp.emp_no = employees.emp_no);


# exists对外表用loop逐条查询，每次查询都会查看exists的条件语句，当 exists里的条件语句能够返回记录行时(无论记录行是的多少，只要能返回)，条件就为真

