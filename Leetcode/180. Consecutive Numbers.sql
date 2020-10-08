SELECT DISTINCT A.Id AS ConsecutiveNums 
FROM Logs A, Logs B, Logs C
WHERE A.Id + 1 = B.Id AND B.Id + 1 = C.Id
AND A.Num = B.Num AND B.Num = C.Num; 
