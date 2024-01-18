select name,SUM(width*length*height*units) volume
from    warehouse w LEFT JOIN 
        product2 p USING(product_id)
group by 1;