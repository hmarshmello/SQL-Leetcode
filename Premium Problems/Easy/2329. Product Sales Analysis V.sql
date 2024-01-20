#sales2 product4

select user_id, sum(price*quantity) as price
from sales2 left join product4 using(product_id)
group by 1
order by 2 desc,1