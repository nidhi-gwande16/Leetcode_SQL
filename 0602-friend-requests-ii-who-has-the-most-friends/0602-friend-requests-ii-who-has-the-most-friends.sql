# Write your MySQL query statement below

SELECT id,COUNT(*) as num
FROM(
    SELECT requester_id as id from RequestAccepted

UNION ALL 

SELECT accepter_id from RequestAccepted
)AS friend
GROUP BY id
ORDER BY num DESC
LIMIT 1