
select  case when count(num) < 2 then max(num) end as num
from mynumbers

group by num
order by num desc
limit 1