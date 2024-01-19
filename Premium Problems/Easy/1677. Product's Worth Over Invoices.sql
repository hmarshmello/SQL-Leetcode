select name, sum(rest) rest, sum(paid) paid, sum(canceled) canceled, sum(refunded) refunded
from invoice JOIN product3 using(product_id)
group by 1
order by 1;