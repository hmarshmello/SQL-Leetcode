SELECT 
    user_id buyer_id, join_date,
    SUM(CASE YEAR(order_date) WHEN 2019 THEN 1 ELSE 0 END) as orders_in_2019
FROM users u
LEFT JOIN Orders o ON u.user_id = o.buyer_id
GROUP BY user_id
ORDER BY buyer_id;