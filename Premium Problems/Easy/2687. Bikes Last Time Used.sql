select bike_number, max(end_time) end_time
from bikes
group by 1
order by 2 DESC;