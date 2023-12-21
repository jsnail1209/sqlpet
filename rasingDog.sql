SELECT COUNT(A.name)
FROM(
SELECT *
FROM people A, pets B
WHERE A.name = B.owner_name
AND type = "dog"
GROUP BY A.name
) A
