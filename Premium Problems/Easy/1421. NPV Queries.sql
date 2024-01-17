select q.id, q.year, ifnull(npv,0) npv
from queries q LEFT JOIN npv n on q.id = n.id and q.year = n.year
order by 1,3;