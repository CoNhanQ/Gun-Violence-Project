-- SELECT database for analysis 

USE gunviolence;

-- Select all the data from the table

SELECT * FROM gviolence;

-- Top 5 most gruesome incident (death) 

SELECT
	state,
	killed
FROM gviolence
ORDER BY killed DESC
LIMIT 5;

-- Pennsylvania seem to have the worst incidents in the entire country.

-- Top 5 most gruesome incident (injured)

SELECT
	state,
	injured
FROM gviolence
ORDER BY injured DESC
LIMIT 5;

-- Again, Pennsylvania also have the worst injured incidents in the entire country.

-- Total victims (death) of gun violence by States between 2014-2021
SELECT
	state,
	SUM(killed) AS 'Total victims killed',
    SUM(injured) AS 'Total victims injured'
FROM gviolence
GROUP BY state
ORDER BY SUM(killed) DESC
;

-- Total cases in States

SELECT
	state,
	SUM(killed) + SUM(injured) AS Cases
FROM gviolence
GROUP BY state
ORDER BY Cases DESC
;
-- Gun violence in California between 2014-2021

SELECT
	state,
    city_or_county,
	SUM(killed) AS 'Total victims killed',
    SUM(injured) AS 'Total victims injured'
FROM gviolence
WHERE state = 'California'
GROUP BY city_or_county
ORDER BY SUM(injured) DESC
;

-- Total gun violence cases in California broken down by address

SELECT
	state,
    city_or_county,
    address,
    SUM(killed) + SUM(injured) AS Cases
FROM gviolence
WHERE state = 'California'
GROUP BY address
ORDER BY state,  Cases DESC;











