/*
SELECT q1.person_name
FROM Queue q1 JOIN Queue q2 ON q1.turn >= q2.turn
GROUP BY q1.turn
HAVING SUM(q2.weight) <= 1000
ORDER BY SUM(q2.weight) DESC
LIMIT 1
*/
select a.person_name

from queue a join queue aa on a.turn >= aa.turn
group by a.turn
having sum(aa.weight) <= 1000
order by sum(aa.weight) desc
limit 1