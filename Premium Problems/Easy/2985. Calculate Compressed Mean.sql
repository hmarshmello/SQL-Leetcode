select round(sum(item_coun * order_occurences)/sum(order_occurences),2) as average_items_per_order
from orders;