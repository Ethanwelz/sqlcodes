USE united_nations;
SELECT 
	* 
FROM 
	united_nations.access_to_basic_services
LIMIT 10;

CREATE TABLE
	Country_list(
		Country_name VARCHAR(225)
	);
INSERT INTO Country_list(
	Country_name
    )
SELECT DISTINCT
	Country_name
FROM
	access_to_basic_services;
    
SELECT
	Country_name,
    Time_period,
    Pct_managed_drinking_water_services AS pct_access_water
FROM
	access_to_basic_services
WHERE
	Time_period = 2020;
