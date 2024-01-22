select person_id, concat(name,"(",LEFT(name,1),")") name
from person
order by 1 desc;