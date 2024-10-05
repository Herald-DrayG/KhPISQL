select * from cities order by population desc limit 10 offset 10;
select * from cities order by name desc limit 30;
select * from cities order by region, population desc;
select distinct region from cities;
select * from cities order by region desc, name desc;