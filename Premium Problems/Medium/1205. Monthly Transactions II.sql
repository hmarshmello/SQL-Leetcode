SELECT  DATE_FORMAT(trans_date,"%Y-%m") month
       ,country
       ,SUM(state = 'approved') approved_count
       ,SUM(if(state = 'approved',amount,0)) approved_amount
       ,SUM(state = 'chargeback') chargeback_count
       ,SUM(if(state = 'chargeback',amount,0)) chargeback_amount
FROM
(
	SELECT  *
	FROM transactions
	UNION
	SELECT  id
	       ,country
	       ,'chargeback'
	       ,amount
	       ,c.trans_date
	FROM transactions t
	JOIN chargebacks c
	ON t.id = c.trans_id
) t
GROUP BY 1,2
HAVING approved_amount or chargeback_amount;