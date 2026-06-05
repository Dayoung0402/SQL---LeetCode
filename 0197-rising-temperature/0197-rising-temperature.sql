SELECT T1.id AS id
FROM Weather AS T1
INNER JOIN Weather AS T2
ON T2.recordDate = DATE_SUB(T1.recordDate, INTERVAL 1 DAY)
WHERE T1.temperature > T2.temperature