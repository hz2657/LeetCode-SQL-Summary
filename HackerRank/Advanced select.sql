- The PADS

SELECT CONCAT(Name, '(',  LEFT(Occupation, 1), ')') AS Names
FROM OCCUPATIONS
ORDER BY Names;

SELECT CONCAT('There are a total of ',  COUNT(Occupation), ' ',  lower(Occupation), 's.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation), Occupation;


- Type of Triangle
SELECT 
CASE 
   WHEN (A+B>C AND A+C>B AND B+C>A) THEN 
        CASE 
            WHEN A=B AND B=C THEN 'Equilateral'
            WHEN A <> B AND B <> C AND A <>C THEN 'Scalene'
            ELSE 'Isosceles' 
        END
   ELSE 'Not A Triangle'
END
FROM TRIANGLES;




