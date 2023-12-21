select activity_date as day,
count(distinct(user_id)) as active_users


from activity


WHERE (activity_date > "2019-06-27" AND activity_date <= "2019-07-27")

group by activity_date