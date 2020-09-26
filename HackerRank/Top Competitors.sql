SELECT H.hacker_id, H.name
FROM Submissions S
INNER JOIN Challenges C USING (challenge_id) 
INNER JOIN Difficulty D Using (difficulty_level)
INNER JOIN Hackers H ON S.hacker_id = H.hacker_id
WHERE S.score = D.score 
GROUP BY H.hacker_id, H.name
HAVING COUNT(S.hacker_id)>1
ORDER BY COUNT(S.hacker_id) DESC, S.hacker_id




