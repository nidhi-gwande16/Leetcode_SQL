# Write your MySQL query statement below
select s.user_id , IFNULL(ROUND(SUM(c.action='confirmed')/COUNT(*),2),0.00) as confirmation_rate
from signups s
left join confirmations c
on s.user_id=c.user_id
group by s.user_id