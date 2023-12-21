SELECT name, SUM(amount) balance
FROM users u
JOIN transactions t ON u.account = t.account
GROUP BY t.account
HAVING SUM(amount) > 10000;