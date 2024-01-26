select f.follower as follower, count(distinct f.followee) as num
from follow f, follow f1 where f.follower = f1.followee
GROUP BY 1
order by 1;