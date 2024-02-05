SELECT  business_id
FROM events
LEFT JOIN
(
	SELECT  event_type
	       ,round(AVG(occurances),2) avg
	FROM events
	GROUP BY  1
) t USING(event_type)
WHERE occurances > avg
GROUP BY  1
HAVING COUNT(business_id) > 1;