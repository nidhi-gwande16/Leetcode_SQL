# Write your MySQL query statement below
Select p.product_name as product_name , s.year as year, s.price as price 
from Sales s
left join Product p
using(Product_id)



#on s.product_id  =p.product_id  
