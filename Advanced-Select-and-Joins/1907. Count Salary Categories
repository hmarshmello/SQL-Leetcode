with cte as(
  select account_id,
  case 
        WHEN income < 20000 THEN "Low Salary"
        WHEN income > 50000 THEN "High Salary"
        ELSE "Average Salary"
  end as category
  from accounts
),


cte_c as(
  select "Low Salary" as category
  union
  select "Average Salary" as category
  union
  select "High Salary" as category
)

select cte_c.category, count(account_id) as accounts_count 
from cte_c left join cte on cte_c.category = cte.category 
group by cte_c.category

