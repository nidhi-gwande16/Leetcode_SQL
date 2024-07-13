# Write your MySQL query statement below
SELECT product_id ,year as first_year ,quantity,price
FROM Sales 
WHERE (product_id,year)IN(
    SELECT product_id,MIN(year) AS fyear
    from sales
    group by product_id
)





#SELECT s.product_id ,s.year as first_year ,s.quantity,s.price
#FROM Sales s
#Left join Product p
#on s.product_id= p.product_id
#group by s.product_id
