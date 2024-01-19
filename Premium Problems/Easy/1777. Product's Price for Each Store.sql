select product_id,
    sum(case when store='store1' then price end) store2,
    sum(case when store='store2' then price end) store2,
    sum(case when store='store3' then price end) store1
from products4
group by 1;