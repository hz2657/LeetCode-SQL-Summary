
SELECT date, ROUND(failed/total,3)
FROM 
(SELECT date, COUNT(*) AS failed
FROM email
WHERE type = 'no_completed' AND receive_id NOT IN (SELECT id FROM user WHERE is_blacklist = 1)
GROUP BY date) TABLE1 INNER JOIN
(SELECT date, COUNT(*) AS total
FROM email
WHERE receive_id NOT IN (SELECT id FROM user WHERE is_blacklist = 1)
GROUP BY date) TABLE2 USING(date)
ORDER BY date; 

