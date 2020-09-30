SELECT W.id, WP.age, W.coins_needed, W.power
FROM Wands W, Wands_Property WP
WHERE W.code = WP.code
AND WP.is_evil = 0 
AND W.coins_needed IN 
(SELECT MIN(coins_needed)
FROM Wands W1 JOIN Wands_Property WP1 USING(code)
WHERE W.power=W1.power AND WP.age = WP1.age
)
ORDER BY W.power DESC, WP.age DESC

