WITH s as (
    SELECT st.*,
        COUNT(*) OVER(ORDER BY id RANGE BETWEEN current row AND 2 following) f,
        COUNT(*) OVER(ORDER BY id RANGE BETWEEN 2 preceding AND current row) p,
        COUNT(*) OVER(ORDER BY id RANGE BETWEEN 1 preceding AND 1 following) c
    FROM Stadium st
    WHERE people >= 100
)

SELECT id, visit_date, people FROM s
WHERE f >= 3 or p >= 3 or c >= 3;