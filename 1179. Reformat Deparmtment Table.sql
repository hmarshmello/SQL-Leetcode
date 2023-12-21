SELECT 
    id,
    SUM(case when month = 'Jan' then revenue end) as Jan_Revenue,
    SUM(case when month = 'Feb' then revenue end) as Feb_Revenue,
    SUM(case when month = 'Mar' then revenue end) as Mar_Revenue,
    SUM(case when month = 'Apr' then revenue end) as Apr_Revenue,
    SUM(case when month = 'May' then revenue end) as May_Revenue,
    SUM(case when month = 'Jun' then revenue end) as Jun_Revenue,
    SUM(case when month = 'Jul' then revenue end) as Jul_Revenue,
    SUM(case when month = 'Aug' then revenue end) as Aug_Revenue,
    SUM(case when month = 'Sep' then revenue end) as Sep_Revenue,
    SUM(case when month = 'Oct' then revenue end) as Oct_Revenue,
    SUM(case when month = 'Nov' then revenue end) as Nov_Revenue,
    SUM(case when month = 'Dec' then revenue end) as Dec_Revenue
FROM Department
GROUP BY id;