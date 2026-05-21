SELECT DISTINCT T4.name AS Department, T3.target_name AS Employee, T3.target_sa AS Salary 
FROM (
SELECT T1.name AS target_name , T1.salary AS target_sa, T2.departmentId AS target_de
FROM Employee AS T1
INNER JOIN (
    SELECT departmentId, MAX(salary) AS target
    FROM Employee 
    GROUP BY departmentId
) AS T2
ON T1.salary  = T2.target AND T1.departmentId = T2.departmentId
) AS T3 INNER JOIN Department AS T4
ON T3.target_de = t4.id 