SELECT customer_id,name
FROM    orders
        JOIN product1 USING(product_id)
        JOIN customers USING(customer_id)
WHERE YEAR(order_date) = 2020
GROUP BY 1,2
HAVING 
    SUM(IF(MONTH(order_date)=6, quantity*price,0)) >= 100 AND
    SUM(IF(MONTH(order_date)=7, quantity*price,0)) >= 100;