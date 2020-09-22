---Asian Population
----- use WHERE CITY.CountryCode  = COUNTRY.Code
SELECT SUM(CITY.POPULATION)
FROM CITY, COUNTRY 
WHERE CITY.CountryCode  = COUNTRY.Code AND COUNTRY.CONTINENT = 'Asia';

---African Cities
----- WHERE CITY.CountryCode = COUNTRY.Code
SELECT DISTINCT CITY.NAME
FROM CITY, COUNTRY
WHERE CITY.CountryCode = COUNTRY.Code AND COUNTRY.CONTINENT = 'Africa';

---Average Population of Each Continent
---- FLOOR: rounded down to the nearest integer.
SELECT COUNTRY.Continent, FLOOR(AVG(city.population))
FROM CITY, COUNTRY
WHERE CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT; 

                                    
