SELECT *
FROM(
SELECT A.name, COUNT(A.name) 카운팅
FROM(
SELECT A.name, B.type
FROM people A, pets B
WHERE A.name = B.owner_name
ORDER BY A.name) A
GROUP BY A.name) A
WHERE A.카운팅 >= 3
