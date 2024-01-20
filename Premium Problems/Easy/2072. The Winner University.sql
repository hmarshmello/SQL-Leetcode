select if(ny > cl,"New York University",if(cl>ny,"California University", "No Winner")) as winner
from 
(SELECT count(student_id) ny from newyork where score >= 90) ny1,
(SELECT count(student_id) cl from california where score >= 90) cl1;