/*Using either max()/min() can get first non-null value after group by*/

SET @R1=0, @R2=0, @R3=0, @R4=0; 

SELECT MIN(Doctor), MIN(Professor), MIN(Singer), MIN(Actor)
FROM(
SELECT 
(CASE WHEN Occupation = 'Doctor' THEN Name ELSE NULL END) Doctor,
(CASE WHEN Occupation = 'Professor' THEN Name ELSE NULL END) Professor,
(CASE WHEN Occupation = 'Singer' THEN Name ELSE NULL END) Singer,
(CASE WHEN Occupation = 'Actor' THEN Name ELSE NULL END) Actor,
(CASE WHEN Occupation = 'Doctor' THEN @R1:=@R1+1
    WHEN Occupation = 'Professor' THEN @R2:=@R2+1
    WHEN Occupation = 'Singer' THEN @R3:=@R3+1
    WHEN Occupation = 'Actor' THEN @R4:=@R4+1
END) AS ROW_NUM
FROM OCCUPATIONS
ORDER BY Name
    
    ) AS FOO
GROUP BY ROW_NUM


