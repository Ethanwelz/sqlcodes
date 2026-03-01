 
SELECT
	loc.Country_name,
    eco.Time_period,
    IFNULL(eco.Pct_unemployment,19.59) AS pct_unemployment_imputed
    
FROM
	united_nations.geographic_location AS loc
LEFT JOIN
	united_nations.economic_indicators AS eco
	ON eco.Country_name = loc.Country_name

WHERE REGION LIKE "%Central and Southern Asia%";

UNION

SELECT
	loc.Country_name,
    eco.Time_period,
    IFNULL(eco.Pct_unemployment,19.59) AS pct_unemployment_imputed
    
FROM
	united_nations.geographic_location AS loc
LEFT JOIN
	united_nations.economic_indicators AS eco
	ON eco.Country_name = loc.Country_name

WHERE REGION LIKE "%Eastern and Southeastern Asia%";

UNION

SELECT
	loc.Country_name,
    eco.Time_period,
    IFNULL(eco.Pct_unemployment,19.59) AS pct_unemployment_imputed
    
FROM
	united_nations.geographic_location AS loc
LEFT JOIN
	united_nations.economic_indicators AS eco
	ON eco.Country_name = loc.Country_name

WHERE REGION LIKE "%Europe and Northern America%";

UNION

SELECT
	loc.Country_name,
    eco.Time_period,
    IFNULL(eco.Pct_unemployment,19.59) AS pct_unemployment_imputed
    
FROM
	united_nations.geographic_location AS loc
LEFT JOIN
	united_nations.economic_indicators AS eco
	ON eco.Country_name = loc.Country_name

WHERE REGION LIKE "%Latin America and the Caribbean%";

UNION

SELECT
	loc.Country_name,
    eco.Time_period,
    IFNULL(eco.Pct_unemployment,19.59) AS pct_unemployment_imputed
    
FROM
	united_nations.geographic_location AS loc
LEFT JOIN
	united_nations.economic_indicators AS eco
	ON eco.Country_name = loc.Country_name

WHERE REGION LIKE "%Northern Africa and Western Asia%";

UNION

SELECT
	loc.Country_name,
    eco.Time_period,
    IFNULL(eco.Pct_unemployment,19.59) AS pct_unemployment_imputed
    
FROM
	united_nations.geographic_location AS loc
LEFT JOIN
	united_nations.economic_indicators AS eco
	ON eco.Country_name = loc.Country_name

WHERE REGION LIKE "%Oceania%";

UNION

SELECT
	loc.Country_name,
    eco.Time_period,
    IFNULL(eco.Pct_unemployment,19.59) AS pct_unemployment_imputed
    
FROM
	united_nations.geographic_location AS loc
LEFT JOIN
	united_nations.economic_indicators AS eco
	ON eco.Country_name = loc.Country_name

WHERE REGION LIKE "%Sub-Saharan Africa%";

