# 175. Combine Two Tables
SELECT FirstName, LastName, City, State
FROM Person LEFT OUTER JOIN Address 
ON Person.PersonId = Address.PersonId;

# 176. Second Highest Salary
# Write your MySQL query statement below
SELECT max(SALARY) AS SecondHighestSalary 
FROM Employee 
WHERE Salary < (SELECT max(Salary) FROM Employee);

# 181. Employees Earning More Than Their Managers
SELECT E1.Name AS Employee
FROM Employee AS E1, Employee AS E2
WHERE E2.Id = E1.ManagerId AND E1.Salary > E2.Salary




