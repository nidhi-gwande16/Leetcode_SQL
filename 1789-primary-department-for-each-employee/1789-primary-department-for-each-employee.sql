# Write your MySQL query statement below
SELECT DISTINCT employee_id ,department_id 
from Employee
where employee_id IN
(
    SELECT employee_id 
    from Employee 
    group by employee_id
    having count(*)=1 ) 
    OR Primary_flag='Y'
order by employee_id ;