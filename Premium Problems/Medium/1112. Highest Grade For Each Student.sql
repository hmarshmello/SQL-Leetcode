SELECT  student_id
       ,course_id
       ,grade
FROM
(
	SELECT  *
	       ,ROW_NUMBER() over(PARTITION BY student_id ORDER BY  grade DESC) AS r
	FROM enrollments
) T
WHERE r = 1
ORDER BY 1;