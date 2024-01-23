select city
from listings
group by city
having avg(price) > (select avg(price) from listings)
order by 1;
