# Write your MySQL query statement below
SElECT empu.unique_id ,e.name
 from Employees e
 LEFT Join EmployeeUNI empu 
 ON e.id =  empu.id
 
 

