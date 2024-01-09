-- Link: https://leetcode.com/problems/project-employees-ii/
select project_id
from (
    select project_id, c, rank() over(order by c desc) as r
    FROM (
        select project_id, count(project_id) c
        from project
        group by 1
    ) t
) r
where r = 1;