## MySQL Assignment JUSTIT ##

# Task 1 
-- Using count, get the number of cities in the USA -- 

Select count(Name) as number_of_cities
from City
where CountryCode = 'USA';

# Task 2 

-- Find out what the population and average life expectancy for people in Argentina (ARG) is. --

select Code, Population, LifeExpectancy
from country
where Code = 'ARG';

# Task 3

-- Using ORDER BY, LIMIT, what country has the highest life expectancy? --

select Name, LifeExpectancy
from country
Order by LifeExpectancy desc
Limit 1;

# Task 4 

-- Select 25 cities around the world that start with the letter 'F' in a single SQL query. --

select city.name
from city
where city.name like 'F%'
Limit 25;

# Task 5

-- Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only. --

select ID, Name, Population
from city
Limit 10;


# Task 6

-- Create a SQL statement to find only those cities from city table --
-- whose population is larger than 2000000.--

select name, population
from city
where population > 2000000;

# Task 7

-- Create a SQL statement to find all city names from city table whose name begins with “Be” prefix. --

select name
from city
where name like 'be%';



# Task 8 

-- Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.--

select name, population
from city
where population between 500000 and 1000000;


# Task 9

-- Create a SQL statement to find a city with the lowest population in the city table.--

select name, population
from city
order by population asc
Limit 1;

# BONUS 1

-- Create a SQL statement to find the capital of Spain (ESP). --

select country.name as country, city.name as capital
from city
join country
on city.countrycode = country.Code
where city.id = (select capital from country where country.name = 'spain');


# BONUS 2

-- Create a SQL statement to list all the languages spoken in the Caribbean region. --

select l.language, c.Region
from country as c
join countrylanguage as l
on l.countrycode = c.Code
where c.region = 'Caribbean';


# BONUS 3

-- Create a SQL statement to find all cities from the Europe continent.--

select city.name as city, country.Continent
from city
join country
on city.countrycode = country.Code
where continent = 'Europe';










