-- Create Database

CREATE DATABASE GunViolence;

-- Create table Gviolence 

CREATE TABLE Gviolence (
    incident_id INT,
    incident_date DATE,
    state VARCHAR(20),
    city_or_county VARCHAR(20),
    address VARCHAR(50),
    killed INT,
    injured INT
);

-- Overview the data

SELECT * FROM Gviolence
ORDER BY incident_date;

-- Getting total number of death and injured victims due to gun violence

SELECT YEAR(incident_date) AS Year, 
	SUM(killed) AS '# of Death', 
    SUM(injured) AS '# of Injured'
FROM Gviolence
GROUP BY Year
ORDER BY Year;

-- Getting the total number of Death and Injured victims by State and County

SELECT  
	YEAR(incident_date) AS Year,
	state,
    city_or_county,
	SUM(killed) AS '# of Death', 
    SUM(injured) AS '# of Injured'
FROM Gviolence
GROUP BY state, Year
ORDER BY Year;






