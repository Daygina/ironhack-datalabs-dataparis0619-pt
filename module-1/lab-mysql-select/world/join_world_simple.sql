SELECT country.code AS countrycode, countrylanguage.language, countrylanguage.percentage, country.region, country.capital
FROM country AS country
JOIN countrylanguage AS countrylanguage
ON country.Code = countrylanguage.Countrycode
ORDER BY region


#example of bad query
SELECT country.code AS countrycode, countrylanguage.language, countrylanguage.percentage, country.name, country.population, country.capital, city.name, city.population
FROM country AS country
JOIN countrylanguage AS countrylanguage
ON country.Code = countrylanguage.Countrycode
JOIN city AS city ON country.code = city.countrycode

SELECT country.code AS countrycode, country.population AS CountryPopulation, country.name AS CountryName, city.name AS CityName
FROM country AS country
JOIN city AS city ON country.code = city.countrycode
ORDER BY country.population DESC