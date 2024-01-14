select sid post_id, count(sid1) number_of_comments
from (
    select DISTINCT a.sub_id as sid, b.sub_id as sid1
    from Submissions a left join Submissions b
    on a.sub_id = b.parent_id
    where a.parent_id is null
) t
group by 1;