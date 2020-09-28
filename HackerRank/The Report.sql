SELECT CASE 
        WHEN Grade>7 THEN Name
        WHEN Grade<=7 THEN NULL
       END, Grade, Marks 
FROM(
SELECT S.Name AS Name, G.Grade AS Grade, S.Marks AS Marks
FROM Students S, Grades G
WHERE S.Marks BETWEEN G.Min_Mark AND G.Max_Mark
ORDER BY G.Grade DESC, S.Name, S.Marks
) AS FOO

