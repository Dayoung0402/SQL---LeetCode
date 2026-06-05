SELECT T3.name AS Employee
FROM (
SELECT T1.id AS id, T1.name AS name, T1.salary AS target1, T2.salary AS target2
FROM Employee AS T1
LEFT JOIN Employee AS T2
ON T1.managerId = T2.id ) AS T3
WHERE T3.target1 > T3.target2;

