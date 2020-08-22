# 175. Combine Two Tables - Join
SELECT FirstName, LastName, City, State
FROM Person LEFT OUTER JOIN Address 
ON Person.PersonId = Address.PersonId;

# 176. Second Highest Salary - WHERE
# Write your MySQL query statement below
SELECT max(SALARY) AS SecondHighestSalary 
FROM Employee 
WHERE Salary < (SELECT max(Salary) FROM Employee);

# 181. Employees Earning More Than Their Managers  # WHERE
SELECT E1.Name AS Employee
FROM Employee AS E1, Employee AS E2
WHERE E2.Id = E1.ManagerId AND E1.Salary > E2.Salary

# 182. Duplicate Emails  # GROUP BY, HAVING 
SELECT Email FROM Person 
GROUP BY Email
HAVING COUNT(Email) >= 2;

# 183. Customers Who Never Order  # WHERE_NOT IN (__)
SELECT Name AS Customers
FROM Customers
WHERE Id NOT IN  (SELECT CustomerId FROM Orders)

