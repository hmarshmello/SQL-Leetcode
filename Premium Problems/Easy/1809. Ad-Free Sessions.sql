select session_id
from playback
where session_id not in(
select session_id
from playback p left join ads1 a using(customer_id)
where timestamp between start_time and end_time
);