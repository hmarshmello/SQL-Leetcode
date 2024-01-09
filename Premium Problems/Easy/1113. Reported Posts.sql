select extra, count(DISTINCT(post_id)) report_count 
from actions 
where action = 'report' and action_date = '2019-07-04' 
group by extra order by 2 asc; 