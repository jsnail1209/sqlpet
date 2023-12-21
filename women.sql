SELECT A.type, MAX(A.카운팅)
FROM(
SELECT A.type, COUNT(A.type)카운팅
FROM(
SELECT *
FROM people A, pets B
WHERE A.name = B.owner_name
AND sex = "F"
GROUP BY A.name, B.type) A
GROUP BY A.type) A
