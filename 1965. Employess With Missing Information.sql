SELECT s.employee_id employee_id
FROM (
    SELECT * FROM employees LEFT JOIN salaries USING(employee_id) 
    UNION
    SELECT * FROM employees RIGHT JOIN salaries USING(employee_id) 
) s
WHERE name is null or  salary is null
ORDER BY 1;