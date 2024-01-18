
select  
        DATE_FORMAT(order_date, "%Y-%m") month,
        COUNT(order_id), 
        COUNT(DISTINCT customer_id)
FROM orders1
WHERE invoice > 20
GROUP BY month;