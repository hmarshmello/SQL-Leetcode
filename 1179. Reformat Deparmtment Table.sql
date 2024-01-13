
SELECT 
    id,
    SUM(case month when 'Jan' then revenue end) as Jan_Revenue,
    SUM(case month when 'Feb' then revenue end) as Feb_Revenue,
    SUM(case month when 'Mar' then revenue end) as Mar_Revenue,
    SUM(case month when 'Apr' then revenue end) as Apr_Revenue,
    SUM(case month when 'May' then revenue end) as May_Revenue,
    SUM(case month when 'Jun' then revenue end) as Jun_Revenue,
    SUM(case month when 'Jul' then revenue end) as Jul_Revenue,
    SUM(case month when 'Aug' then revenue end) as Aug_Revenue,
    SUM(case month when 'Sep' then revenue end) as Sep_Revenue,
    SUM(case month when 'Oct' then revenue end) as Oct_Revenue,
    SUM(case month when 'Nov' then revenue end) as Nov_Revenue,
    SUM(case month when 'Dec' then revenue end) as Dec_Revenue
FROM Department
GROUP BY id;