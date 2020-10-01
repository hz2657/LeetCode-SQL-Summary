SELECT H.hacker_id, H.name, SUM(FOO.max_score)
FROM Hackers H 
JOIN (
SELECT S.hacker_id, S.challenge_id, MAX(S.score) AS max_score
FROM Submissions S
GROUP BY S.hacker_id, S.challenge_id
) FOO
USING(hacker_id)
GROUP BY H.hacker_id, H.name
HAVING SUM(FOO.max_score) <> 0
ORDER BY SUM(FOO.max_score) DESC, H.hacker_id;
