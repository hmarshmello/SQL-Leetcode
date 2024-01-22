select t.team_name home_team, t1.team_name away_team
from teams t cross join teams t1
where t.team_name != t1.team_name
