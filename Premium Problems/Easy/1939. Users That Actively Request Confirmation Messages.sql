select distinct c.user_id
from confirmations c left join confirmations c1 on c.user_id = c1.user_id 
where   c.time_stamp < c1.time_stamp and 
        TIMEDIFF(c1.time_stamp, c.time_stamp) <= "24:00:00";