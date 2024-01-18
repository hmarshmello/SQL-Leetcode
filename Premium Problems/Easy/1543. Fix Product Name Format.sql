SELECT name , sale_date, count(name) total
FROM (
    SELECT LCASE(product_id) name, DATE_FORMAT(sale_date,"%Y-%m") sale_date
    from sales1
) t
group by 1,2
order by 1 , 3 DESC;