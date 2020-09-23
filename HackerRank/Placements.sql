SELECT S.name
FROM Students S JOIN Friends F USING (ID) 
    JOIN Packages P1 ON P1.ID = S.ID 
    JOIN Packages P2 ON F.Friend_ID = P2.ID
WHERE P2.Salary > P1.Salary
ORDER BY P2.Salary;

