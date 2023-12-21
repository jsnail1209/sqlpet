SELECT A.name, A.age, B.type
FROM people A, pets B
WHERE A.name = B.owner_name
AND A.age BETWEEN 20 AND 40
AND type = "dog"
GROUP BY A.name
ORDER BY A.age
