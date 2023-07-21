SELECT * FROM world.country;

CREATE TABLE AverageLifeExpectancy
SELECT ROUND(AVG(LifeExpectancy)) AS LifeProm, Continent AS Region
FROM world.country
WHERE Continent IN ('South America', 'North America', 'Asia')
GROUP BY Continent
ORDER BY Continent DESC;


