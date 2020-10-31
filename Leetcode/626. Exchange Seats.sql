SELECT s1.id, 
CASE
    WHEN id%2 = 0 THEN (SELECT student FROM seat s2 WHERE s2.id = s1.id - 1)
    WHEN (id%2 <> 0 AND id <> (SELECT MAX(id) FROM seat)) THEN (SELECT student FROM seat s2 WHERE s2.id = s1.id + 1)
    ELSE student
END AS student   # VERY important
FROM seat s1;

 #---or
                               
SELECT S1.id, 
CASE 
    WHEN S1.id%2 = 0 THEN (SELECT student FROM seat S2 WHERE S2.id=S1.id-1)
    WHEN S1.id = (SELECT MAX(id) FROM seat) THEN student
    ELSE (SELECT student FROM seat S3 WHERE S3.id=S1.id+1)
END AS student 
FROM seat S1;
