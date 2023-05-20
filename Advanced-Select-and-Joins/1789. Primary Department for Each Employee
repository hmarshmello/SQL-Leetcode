with cte as(
    select *, count(employee_id) over (partition by employee_id )c
    from employee
)

select employee_id, department_id
from cte
where c = 1 or primary_flag = 'Y'