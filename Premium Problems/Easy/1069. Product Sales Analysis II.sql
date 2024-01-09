-- Problem Link: https://leetcode.com/problems/product-sales-analysis-ii/
select p.product_id, sum(quantity) as total_quantity
from sales s left join product p on s.product_id = p.product_id
group by p.product_id;