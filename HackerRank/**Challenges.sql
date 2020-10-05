SELECT H.hacker_id, H.name, FOO.Total_count
FROM Hackers H, 
(SELECT C.hacker_id, COUNT(C.challenge_id) AS Total_count
FROM Challenges C
GROUP BY C.hacker_id
HAVING Total_count = (SELECT MAX(TEMP.COUNT1)
                        FROM (SELECT C1.hacker_id, COUNT(C1.challenge_id) AS COUNT1
                             FROM Challenges C1
                             GROUP BY C1.hacker_id) AS TEMP)
 OR Total_count IN (
     SELECT FOO2.cnt
     FROM (
     SELECT hacker_id, COUNT(challenge_id) cnt
     FROM Challenges 
     GROUP BY hacker_id) AS FOO2 
     GROUP BY FOO2.cnt
     HAVING COUNT(FOO2.cnt) = 1
     
 )
) AS FOO
WHERE FOO.hacker_id = H.hacker_id
ORDER BY FOO.Total_count DESC, H.hacker_id; 



