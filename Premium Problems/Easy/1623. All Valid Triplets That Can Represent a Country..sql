select 
    a.student_name as member_a, 
    b.student_name as member_b,
    c.student_name as member_c
from 
    schoola a,
    schoolb b,
    schoolc c
where 
    a.student_id != b.student_id AND
    a.student_id != c.student_id AND
    b.student_id != c.student_id AND
    a.student_name != b.student_name AND
    a.student_name != c.student_name AND
    b.student_name != c.student_name;