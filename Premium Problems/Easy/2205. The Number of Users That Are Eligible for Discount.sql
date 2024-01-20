select count(distinct user_id) user_cnt
from purchases
where time_stamp between '2022-03-08' and '2022-03-21' and amount >= 1000;