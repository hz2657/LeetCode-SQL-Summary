set @number = 21;
select repeat('* ', @number := @number - 1)
FROM information_schema.tables;
