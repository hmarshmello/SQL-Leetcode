select question_id
from surveylog
group by 1
order by sum(action='answer')/sum(action='show') DESC,1
limit 1;