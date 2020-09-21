---The Blunder
----CEIL: The CEIL() function returns the smallest integer value that is bigger than or equal to a number;
---- REPLACE 0 with ''
SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, 0, '')))
FROM EMPLOYEES 

---Top Earners
----GROUP BY 1, 1 means first column 
SELECT (months*salary) AS total_salary, COUNT(*)
FROM Employee 
GROUP BY 1
ORDER BY total_salary DESC
LIMIT 1;

---Weather Observation Station 2
------ SUM FIRST THEN ROUND    
SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2) 
FROM STATION;
                                     
---Weather Observation Station 14
----Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to  decimal places.
SELECT ROUND(MAX(LAT_N),4)
FROM STATION
WHERE LAT_N < 137.2345;

---Weather Observation Station 15
------WHERE _IN ()
SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N IN (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345);
                                      
---Weather Observation Station 17
SELECT ROUND(LONG_W,4)
FROM STATION 
WHERE LAT_N = (SELECT MIN(LAT_N) FROM STATION WHERE LAT_N >38.7780)

---Weather Observation Station 18
---- Manhattan Distance: The distance between two points measured along axes at right angles. In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|.
SELECT ROUND(ABS(MIN(LAT_N)-MAX(LAT_N)) + ABS(MIN(LONG_W)-MAX(LONG_W)),4)
FROM STATION; 
                                    
---Weather Observation Station 19
---- Euclidean distance is the "ordinary" straight-line distance between two points in Euclidean space  
---- POWER(___, 2): SQUARE                                               
SELECT ROUND( SQRT(POWER(MIN(LAT_N) - MAX(LAT_N),2) +POWER(MIN(LONG_W) - MAX(LONG_W),2)), 4)
FROM STATION;                                              
                     
                   
---Weather Observation Station 20
---- Median
---- user-defined variable @rowindex: an incremental index for each variable that is selected                    
SET @rowindex := -1;
 
SELECT
   ROUND(AVG(d.LAT_N),4) as Median 
FROM
   (SELECT @rowindex:=@rowindex + 1 AS rowindex,
           STATION.LAT_N AS LAT_N
    FROM STATION
    ORDER BY STATION.LAT_N) AS d
WHERE
d.rowindex IN (FLOOR(@rowindex / 2), CEIL(@rowindex / 2));
     
                                      
                                      
