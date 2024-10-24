select region, sum(population) as pop_region from cities group by region;

select region, sum(population) as pop_region from cities 
group by region having count(name)>=10;

select name, population from cities
where region in (
select region from cities group by region having count(*) >= 5
)
order by population desc limit 5 offset 10;

select region, sum(population) as pop_region from cities
where name in (
select name from cities where population>300000
) 
group by region;

select name, population from cities
where region in (
select region from cities group by region having count(name)<=5
)
and (population < 150000 or population > 500000);
