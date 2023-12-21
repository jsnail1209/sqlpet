SELECT A.type, MAX(카운팅)
FROM(
SELECT A.type, COUNT(A.type)카운팅
FROM(
SELECT *
FROM  people A, pets B, homes C
WHERE A.name = B.owner_name
AND A.name = C.owner_name
AND C.area = "country"
GROUP BY A.name, B.type)A
GROUP BY B.type)A
