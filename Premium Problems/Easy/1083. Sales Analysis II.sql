select DISTINCT(buyer_id) as buyer_id
from sales s left join product p on s.product_id = p.product_id
where 
    product_name = 'S8' and 
    buyer_id not in (
                    select buyer_id 
                    from sales left join product on sales.product_id = product.product_id
                    where product_name = 'iPhone'
                    );
