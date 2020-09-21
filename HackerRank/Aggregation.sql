---The Blunder
----CEIL: The CEIL() function returns the smallest integer value that is bigger than or equal to a number;
---- REPLACE 0 with ''
SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, 0, '')))
FROM EMPLOYEES 


                                      ---Top Earners
----GROUP BY 1
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

                                      
