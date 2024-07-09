# Write your MySQL query statement below
SELECT Teacher_id , COUNT(Distinct subject_id) as cnt
from Teacher 
group by Teacher_id