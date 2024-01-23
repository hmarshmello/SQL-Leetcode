select u.user_id user_id, name, ifnull(SUM(distance),0) as 'traveled distance'
from users u left join rides r on using(user_id)
group by 1
order by 1;