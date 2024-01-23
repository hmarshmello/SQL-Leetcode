select max(s) - min(s) salary_difference
from (
select max(salary) s
from salaries
group by department
) t;