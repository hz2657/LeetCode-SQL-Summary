/*LEFT JOIN*/

SELECT contest_id, hacker_id, name, A, B, C,D
FROM Contests 
INNER JOIN (SELECT contest_id,  SUM(total_submissions) A, SUM(total_accepted_submissions) B, SUM(total_views) C, SUM(total_unique_views) D
FROM Contests INNER JOIN Colleges USING (contest_id) 
INNER JOIN Challenges USING (college_id) 
LEFT JOIN (SELECT challenge_id, SUM(total_views) total_views, SUM(total_unique_views) total_unique_views FROM View_Stats GROUP BY challenge_id) TABLE1 USING (challenge_id) 
LEFT JOIN (SELECT challenge_id, SUM(total_submissions) total_submissions, SUM(total_accepted_submissions) total_accepted_submissions FROM Submission_Stats GROUP BY challenge_id) TABLE2 USING (challenge_id) 
GROUP BY contest_id
HAVING (A+B+C+D) <>0
ORDER BY contest_id) FOO USING (contest_id)
ORDER BY contest_id

