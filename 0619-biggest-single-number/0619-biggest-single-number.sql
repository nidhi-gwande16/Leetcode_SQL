# Write your MySQL query statement below


WITH SINGLENUMBER AS(
    SELECT num 
    from MyNumbers 
    group by 1
    having count(num)=1
)
SELECT MAX(num) as num
from SINGLENUMBER
