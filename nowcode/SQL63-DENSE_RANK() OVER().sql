SELECT id, number, DENSE_RANK() OVER(ORDER BY number DESC) AS t_rank
FROM passing_number; 
