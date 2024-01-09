select IFNULL(round(count(DISTINCT session_id)/COUNT(DISTINCT user_id),2),0) as average_sessions_per_user
    #IFNULL(round(count(DISTINCT session_id)/COUNT(DISTINCT user_id),2),0) for extra test cases
from activity1
where DATEDIFF('2019-07-27', activity_date) < 30;