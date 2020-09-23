---Draw The Triangle 1

set @number = 21;

select repeat('* ', @number := @number - 1)
FROM information_schema.tables;


---Draw The Triangle 2---WHERE

SET @NUM = 0;

SELECT REPEAT('* ', @NUM := @NUM+1)
FROM information_schema.tables
WHERE @NUM <20; 
