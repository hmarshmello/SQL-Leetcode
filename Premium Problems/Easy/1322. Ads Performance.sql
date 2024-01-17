select ad_id, 
ROUND(ifnull(SUM(action = 'Clicked') / (SUM(action IN ('Clicked','Viewed'))) * 100,0),2) ctr
from ads
GROUP BY 1
ORDER BY 2 DESC;