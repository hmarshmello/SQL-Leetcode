SELECT  DISTINCT page_id recommend_page
FROM
(
	SELECT  CASE WHEN user1_id = 1 THEN user2_id
	             WHEN user2_id = 1 THEN user1_id END AS user_id
	FROM friendship
) t
LEFT JOIN likes y
ON t.user_id = y.user_id
WHERE t.user_id is not null
AND page_id NOT IN ( SELECT page_id FROM likes WHERE user_id = 1);