SELECT D.Name AS Department, TABLE1.Name AS Employee, TABLE1.Salary
FROM (
SELECT *, DENSE_RANK() OVER(PARTITION BY DepartmentId ORDER BY Salary DESC) AS r
FROM Employee ) TABLE1
INNER JOIN Department D ON TABLE1.DepartmentId = D.Id
WHERE TABLE1.r <= 3; 
