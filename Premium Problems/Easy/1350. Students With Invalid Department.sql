#USING SUBQUERY
select s.id, s.name
from student s
where s.department_id not in (select id from department);

#USIGN LEFT JOIN
select s.id, s.name
from student s left join department d on s.department_id = d.id
where d.id is null;