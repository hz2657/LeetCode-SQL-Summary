
SELECT dept_no, GROUP_CONCAT(emp_no, ',')    # 输出结果：在一个cell里每一个value用逗号隔开，10001,10002
FROM dept_emp
GROUP BY dept_no；

