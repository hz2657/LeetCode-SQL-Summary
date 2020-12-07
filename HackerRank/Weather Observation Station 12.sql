

#----------works in MYSQL server----
# similar to postgre sql
SELECT DISTINCT CITY
FROM STATION 
WHERE CITY LIKE '[^AEIOU]%[^aeiou]'; 


#----------works in mysql---------
# regular expression 

SELECT distinct CITY 
FROM STATION
WHERE CITY REGEXP '^[^AEIOU].*[^aeiou]$';

## reference: https://www.tutorialspoint.com/mysql/mysql-regexps.htm



