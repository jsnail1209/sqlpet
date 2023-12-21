SELECT A.type, COUNT(A.type) 카운팅
FROM(
SELECT A.name, B.type
FROM people A, pets B
WHERE A.name = B.owner_name
GROUP BY A.name
ORDER BY B.type
) A
GROUP BY A.type
