select seller_id
from (
    select s.*, rank() over(order by total_price desc) r
    from (
        select seller_id, sum(price) as total_price
        from sales
        group by 1
    ) s
) T
    where r = 1;
