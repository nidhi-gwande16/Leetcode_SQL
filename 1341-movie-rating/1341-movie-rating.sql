# Write your MySQL query statement below

(SELECT name AS results
FROM Users 
INNER JOIN MovieRating using(user_id)
GROUP BY user_id
ORDER BY COUNT(rating) DESC,name
LIMIT 1)

UNION ALL 

(
    SELECT title AS results
    FROM Movies  
    INNER JOIN MovieRating using(Movie_id)
    WHERE MONTH(created_at)='02' and YEAR(created_at)='2020'
    GROUP BY title
    ORDER BY AVG(rating) DESC,title
    LIMIT 1
)