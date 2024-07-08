# Write your MySQL query statement below
SELECT contest_id , ROUND((COUNT(DISTINCT user_id ))*100/(SELECT COUNT(User_id) from users),2)
as percentage
FROM Register 
GROUP BY contest_id 
ORDER BY percentage desc , contest_id