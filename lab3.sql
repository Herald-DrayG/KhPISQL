select * from cities where name like '%ськ';

select * from cities where name like '%донец%';

select concat(name, ' ','(',region,')') as Cities from cities 
where population>100000 order by name ASC;

select name,population,population*100/40000000 as pop_percent 
from cities order by population desc limit 10;

select concat(name, ' ', '-', ' ', population*100/40000000, '%') as Cities
from cities where population*100/40000000>=0.1 
order by population*100/40000000 desc;