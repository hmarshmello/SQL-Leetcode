
SELECT 
    ROUND(
        (SELECT COUNT(*) FROM (SELECT DISTINCT requester_id, accepter_id FROM ra) AS a)
        /(SELECT COUNT(*) FROM (SELECT DISTINCT sender_id, send_to_id FROM fr) AS b)
        ,2) AS accept_rate