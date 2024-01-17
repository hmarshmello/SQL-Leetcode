select country, if(avg(weather_state) >= 25, 'Hot', if(avg(weather_state) <= 15,'Cold', 'Warm')) weather_type
from Countries c JOIN Weather w on c.country_id = w.country_id
where MONTH(day) = 11 and YEAR(day) = 2019
group by 1;
