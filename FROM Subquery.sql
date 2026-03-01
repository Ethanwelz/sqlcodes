SELECT
	Country_name,
    AVG(Est_gdp_in_billions) AS AvgGDP,
    AVG(Est_population_in_millions) AS AvgPopulation
FROM
	(
		SELECT
			Country_name,
            Est_gdp_in_billions,
            Est_population_in_millions
		FROM
			economic_indicators
		WHERE
			Pct_unemployment > 5
            AND Time_period = 2020) AS FilteredCountries
    
GROUP BY Country_name