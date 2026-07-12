SELECT id, COUNT(id) AS num
FROM (
SELECT accepter_id AS id
FROM RequestAccepted
UNION ALL
SELECT requester_id AS id
FROM RequestAccepted ) AS T1
GROUP BY id
ORDER BY num DESC
LIMIT 1;
