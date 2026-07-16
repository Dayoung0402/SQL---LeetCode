SELECT T1.customer_id
FROM (
SELECT customer_id, COUNT(DISTINCT(product_key)) AS target
FROM Customer
GROUP BY customer_id ) AS T1
WHERE target = (
    SELECT COUNT(*)
    FROM Product
)
