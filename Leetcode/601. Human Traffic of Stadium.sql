SELECT *
FROM Stadium
WHERE id IN (
SELECT S1.id
FROM Stadium S1, Stadium S2, Stadium S3
WHERE S1.people >= 100 AND S2.people >= 100 AND S3.people >= 100
AND S1.id + 1 = S2.id AND S2.id + 1 = S3.id)
OR id IN (
SELECT S2.id
FROM Stadium S1, Stadium S2, Stadium S3
WHERE S1.people >= 100 AND S2.people >= 100 AND S3.people >= 100
AND S1.id + 1 = S2.id AND S2.id + 1 = S3.id)
OR id IN (
SELECT S3.id
FROM Stadium S1, Stadium S2, Stadium S3
WHERE S1.people >= 100 AND S2.people >= 100 AND S3.people >= 100
AND S1.id + 1 = S2.id AND S2.id + 1 = S3.id)
;
