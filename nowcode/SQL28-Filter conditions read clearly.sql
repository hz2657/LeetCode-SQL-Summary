# 这题有一个陷阱，电影数目>=5 是这类电影的所有数目，并不是包含了robot的这类电影的数目。


SELECT C.name, COUNT(F.film_id)
FROM film F INNER JOIN film_category FC USING (film_id)
INNER JOIN category C USING (category_id)
WHERE F.description LIKE '%robot%' 
AND C.name IN (                  # this time not put limitation about 'robot' 
SELECT C1.name 
FROM film F1 INNER JOIN film_category FC1 USING (film_id)
INNER JOIN category C1 USING (category_id)
GROUP BY C1.name
HAVING COUNT(F1.film_id) >=5
)
GROUP BY C.name; 
