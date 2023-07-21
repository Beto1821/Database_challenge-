


# Database Challenge - Support Engineer
The objective of this repository is to upload my Database Challenge for a Support Engineer position at Lexart labs.

## Intro
The challenge was to create a table called 'AverageLifeExpectancy' with the information from the 'World' database (https://dev.mysql.com/doc/index-other.html). The new table created should have the average life expectancy from three regions (South America, North America and Asia).

## Methodology


Database 'World' was downloading https://dev.mysql.com/doc/index-other.html and importing it to use.
Run on docker container with the following command:
docker run -d --name DB_CONTAINER -e MYSQL_ROOT_PASSWORD=123456 -p 3307:3306 mysql:latest

Used the 'MySQL Workbench' tool, to analyze all the data and to create the table requested in the challenge using query abouve:

CREATE TABLE AverageLifeExpectancy AS
SELECT ROUND(AVG(LifeExpectancy)) AS LifeProm, Continent AS Region
FROM world.country
WHERE Continent IN ('South America', 'North America', 'Asia')
GROUP BY Continent
ORDER BY Continent DESC;


## AverageLifeExpectancy table
Of a total of 239 countries, 102 where inside ```WHERE``` clause of 3 specific continents and of those, 101 had a valid value (not null) for 'LifeExpanctancy' column.

The resulting table is:
| LifeProm |     Region    |
|----------|---------------|
|    71    | South America |
|    73    | North America |
|    67    |      Asia     |

# Database_challenge-
