select name, upper(name) as name_upcase from cities 
order by name ASC limit 5 offset 5;

select name, char_length(name) as name_length from cities
where char_length(name) not in (8,9,10);

select region, sum(population) as pop_region from cities
where region in ('C', 'S') group by region order by pop_region;

select region, AVG(population) as pop_region from cities
where region in ('W');

select count(name) from cities where region in ('E') order by name ASC;