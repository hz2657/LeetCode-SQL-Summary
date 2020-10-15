# ---V2---IMPROVED--- USE CASE WHEN TO CALCULATE SUM OF CANCELED TRIPS-- 
SELECT Request_at AS Day, ROUND(SUM(CASE WHEN Status LIKE 'cancelled_%' THEN 1 ELSE 0 END)/COUNT(*),2) AS 'Cancellation Rate' 
FROM Trips
WHERE Client_Id NOT IN (SELECT Users_Id FROM Users WHERE Banned = 'Yes')
AND Driver_Id  NOT IN (SELECT Users_Id FROM Users WHERE Banned = 'Yes')
AND Request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY Request_at;



# ---V1---
SELECT DISTINCT T1.Request_at AS Day, ROUND(COALESCE(T2.Cancellation_Rate, 0),2) AS 'Cancellation Rate'
FROM
(SELECT Request_at
FROM Trips) AS T1
LEFT JOIN
(
SELECT TABLE2.Request_at AS Request_at, TABLE1.CANCELED_PER_DAY/TABLE2.TOTAL_per_day AS Cancellation_Rate
FROM 
(SELECT Request_at, COUNT(*) AS CANCELED_PER_DAY
FROM Trips
WHERE Client_Id NOT IN (SELECT Users_Id FROM Users WHERE Banned = 'Yes') 
AND Driver_Id NOT IN (SELECT Users_Id FROM Users WHERE Banned = 'Yes') 
AND Status != 'completed' 
GROUP BY Request_at) TABLE1, 
(SELECT Request_at, COUNT(*) AS TOTAL_per_day
FROM Trips
WHERE Client_Id NOT IN (SELECT Users_Id FROM Users WHERE Banned = 'Yes') 
AND Driver_Id NOT IN (SELECT Users_Id FROM Users WHERE Banned = 'Yes') 
GROUP BY Request_at) TABLE2 
WHERE TABLE1.Request_at = TABLE2.Request_at
) AS T2
ON T1.Request_at = T2.Request_at
WHERE T1.Request_at  BETWEEN '2013-10-01' AND '2013-10-03'; 
