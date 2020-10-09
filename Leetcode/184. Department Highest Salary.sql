
SELECT D.Name AS Department, E.Name AS Employee, E.Salary AS Salary 
FROM
(SELECT DepartmentId, MAX(Salary) MAX_VALUE FROM Employee GROUP BY DepartmentId) TABLE1,
Employee E,
Department D
WHERE E.DepartmentId = TABLE1.DepartmentId AND TABLE1.MAX_VALUE = E.Salary
AND D.Id = E.DepartmentId;
