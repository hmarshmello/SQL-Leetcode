with c as(
    select  host_team, guest_team,
        case when host_goals > guest_goals then 3 when host_goals < guest_goals then 0 else 1 end host_points,
        case when host_goals < guest_goals then 3 when host_goals > guest_goals then 0 else 1 end guest_points      
    from matches
)
select host_team team_id, sum(host_points) num_points
from (
    select host_team, sum(host_points) host_points
    from c
    group by 1
    union
    select guest_team, sum(guest_points) guest_points
    from c
    group by 1
) t
group by 1
order by 2 DESC;



# CORRECT SOLUTION DOWN
SELECT  team_id
       ,team_name
       ,SUM( CASE WHEN team_id = host_team AND host_goals > guest_goals THEN 3 WHEN team_id = guest_team AND guest_goals > host_goals THEN 3 WHEN host_goals = guest_goals THEN 1 ELSE 0 END ) AS num_points
FROM Teams
LEFT JOIN Matches
ON team_id = host_team OR team_id = guest_team
GROUP BY  1
ORDER BY  3 DESC, 1;