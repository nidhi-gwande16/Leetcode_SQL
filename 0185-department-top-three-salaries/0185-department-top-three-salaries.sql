# Write your MySQL query statement below
SELECT d.name as Department,
    e1.name as Employee,
    e1.salary as Salary
FROM Employee e1
INNER JOIN Department d
ON e1.departmentId  =d.id
WHERE 3 > (
    SELECT COUNT(DISTINCT (e2.salary))
    From Employee e2
    WHERE e2.Salary>e1.Salary 
    AND e1.departmentId =e2.departmentId 
)