SELECT T1.name AS Customers
FROM Customers AS T1
LEFT JOIN Orders AS T2
ON T1.id = T2.customerId
WHERE T2.customerId IS NULL;
