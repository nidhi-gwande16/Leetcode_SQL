# Write your MySQL query statement below
SELECT customer_id
FROM customer 
Group by 1 
Having COUNT(DISTINCT product_key)=(SELECT COUNT(*)FROM product);