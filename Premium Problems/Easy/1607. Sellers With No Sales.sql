# customers1, orders2, seller

select seller_name
from orders2 left join seller using(seller_id)
where seller_id not in (
    select seller_id
    from orders2
    where year(sale_date) = 2020
); 

