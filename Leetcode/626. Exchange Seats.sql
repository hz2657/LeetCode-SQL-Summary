SELECT s1.id, 
CASE
    WHEN id%2 = 0 THEN (SELECT student FROM seat s2 WHERE s2.id = s1.id - 1)
    WHEN (id%2 <> 0 AND id <> (SELECT MAX(id) FROM seat)) THEN (SELECT student FROM seat s2 WHERE s2.id = s1.id + 1)
    ELSE student
END AS student   # VERY important
FROM seat s1;
