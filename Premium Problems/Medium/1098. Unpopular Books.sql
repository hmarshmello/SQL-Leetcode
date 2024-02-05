SELECT  book_id
       ,name
FROM orders3
RIGHT JOIN books USING(book_id)
WHERE available_from < '2019-05-23'
GROUP BY  1,2
HAVING SUM(if(dispatch_date >= '2018-06-23', quantity, 0)) < 10;