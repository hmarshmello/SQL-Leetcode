SELECT project_id, employee_id
from(
select p.*, RANK() OVER(PARTITION BY p.employee_id ORDER BY experience_years DESC) as r
from project p LEFT JOIN employee e USING(employee_id)
) as t
where r = 1;