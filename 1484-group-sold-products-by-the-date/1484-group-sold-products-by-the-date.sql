# Write your MySQL query statement below
SELECT sell_date,
       COUNT(DISTINCT Product) as num_sold ,
       GROUP_CONCAT(
       DISTINCT product
       ORDER BY product
       SEPARATOR ','
       ) AS products
from Activities 
GROUP BY sell_date 
order by sell_date , product