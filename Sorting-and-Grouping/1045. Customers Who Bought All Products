with cte as (
    select customer_id, count(distinct product_key) as tkeys
    from customer
    group by customer_id
)



select customer_id
from cte 
where tkeys = (select count(product_key) from product)