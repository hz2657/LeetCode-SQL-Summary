
SELECT user_id, MAX(date)
FROM login
GROUP BY user_id
ORDER BY user_id; 

