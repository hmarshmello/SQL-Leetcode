SELECT  DISTINCT viewer_id
FROM views v
LEFT JOIN views v1 using (viewer_id,view_date)
WHERE v.article_id != v1.article_id