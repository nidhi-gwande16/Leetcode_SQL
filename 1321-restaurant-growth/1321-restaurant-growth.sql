# Write your MySQL query statement below

SELECT visited_on,
    (
        SELECT SUM(amount)
        from customer
        WHERE visited_on BETWEEN DATE_SUB(c.visited_on,INTERVAL 6 DAY)
        AND c.visited_on
    )AS amount,
    #date(1)+6=7 jan 
    #1st jan (date(7)-6=1 jan) BETWEEN 1jan and 7 jan 
    
    ROUND(( SELECT SUM(amount)/7
        from customer
        WHERE visited_on BETWEEN DATE_SUB(c.visited_on,INTERVAL 6 DAY)
        AND c.visited_on
    ),2) AS average_amount
FROM Customer c
WHERE visited_on>=(
    SELECT DATE_ADD(MIN(visited_on),INTERVAL 6 DAY) as visited_on 
    FROM customer
)
GROUP BY visited_on
ORDER BY visited_on

