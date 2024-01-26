select dept_name, count(dept_id) as student_number
from student s left join department d using(dept_id)
group by dept_name
order by 2 DESC, 1;