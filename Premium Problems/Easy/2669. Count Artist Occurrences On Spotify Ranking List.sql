select artist, count(1) occurences
from spotify
group by 1
order by 2 DESC, 1 ASC;