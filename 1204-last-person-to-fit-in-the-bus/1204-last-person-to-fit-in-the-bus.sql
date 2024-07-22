# Write your MySQL query statement below
SELECT q1.person_name
FROM Queue q1
INNER JOIN Queue Q2
ON q1.turn>=q2.turn
GROUP BY q1.turn
HAVING SUM(q2.Weight)<=1000
ORDER BY SUM(q2.Weight) DESC
LIMIT 1