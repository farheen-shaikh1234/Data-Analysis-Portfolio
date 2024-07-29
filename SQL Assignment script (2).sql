#Task 1
select Count(*) As number_of_cities
 from city
 Where CountryCode = 'USA';

#Task 2
select Name, Population, avg(LifeExpectancy) AS Avg_life_expectancy
from country
Where Code = 'ARG';

#Task 3
select Name, LifeExpectancy
from country
Order by LifeExpectancy desc
Limit 1;

#Task 4
select Name
from city
Where Name like 'F%'
Limit 25;

#Task 5
select ID, Name, Population
from city
Limit 10;

#Task 6
select *
from city
Where Population> 2000000;

#Task 7
select Name 
from city
Where Name like 'Be%';

#Task 8
select *
from city
Where Population between 500000 and 1000000;

#Task 9
select *
from city
order by Population
Limit 1;

#Task 10 (BONUS TASKS)
select city.name AS Capital, country.Code
from country
Join city on country.Capital=city.ID
where country.code= 'ESP';

#Task 11
select country.Name, countrylanguage.CountryCode,countrylanguage.Language
from countrylanguage
Join country on countrylanguage.CountryCode= country.Code
Where Region = 'Caribbean';

#Task 12
Select city.Name, country.Continent
from country
Join city on city.ID = country.Capital
Where country.Continent= 'Europe';

