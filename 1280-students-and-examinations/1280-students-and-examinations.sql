# Write your MySQL query statement below
select s.student_id , s.student_name ,sb.subject_name , COUNT(e.Subject_name) as attended_exams
from Students s
cross join subjects sb
left join Examinations e
on s.Student_id=e.Student_id
and sb.subject_name = e.subject_name
group by s.Student_id , s.student_name ,sb.subject_name
order by s.student_id , sb.subject_name