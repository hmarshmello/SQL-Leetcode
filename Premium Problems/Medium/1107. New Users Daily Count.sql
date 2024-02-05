SELECT  activity_date login_date
       ,SUM(DISTINCT USER_ID) user_count
FROM
(
	SELECT  user_id
	       ,MIN(activity_date) AS login
	FROM traffic
	WHERE activity = 'login'
	GROUP BY  1
) T
WHERE DATEDIFF('2019-06-30', login) <= 90
GROUP BY  1;