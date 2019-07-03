SELECT *
FROM Table_A
INNER JOIN Table_B
ON Table_A.Key = Table_B.Key

SELECT *
FROM Table_A
LEFT JOIN Table_B
ON Table_A.Key = Table_B.Key

SELECT *
FROM Table_A
RIGHT JOIN Table_B
ON Table_A.Key = Table_B.Key

SELECT *
FROM Table_A
OUTER JOIN Table_B
ON Table_A.Key = Table_B.Key