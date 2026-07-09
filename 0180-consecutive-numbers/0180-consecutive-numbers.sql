SELECT DISTINCT(T1.target1) AS ConsecutiveNums
FROM (
SELECT id, num AS target1,
    LEAD(num, 1) OVER (ORDER BY id) AS target2,
    LEAD(num, 2) OVER (ORDER BY id) AS target3
FROM Logs ) AS T1
WHERE T1.target1 = T1.target2 AND T1.target2 = T1.target3