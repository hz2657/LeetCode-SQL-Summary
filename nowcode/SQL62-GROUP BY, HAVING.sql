

SELECT DISTINCT number
FROM grade
GROUP BY number     #-----先aggregrate, 再group by, 再having设条件
HAVING COUNT(number)>=3;




