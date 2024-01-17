select employeeid, count(teamid) over (partition by teamid) team_size
from employee
order by 1;