select distinct user_id
from purchases
where time_stamp between '2022-03-08' and '2022-03-21' and amount >= 1000
order by 1;