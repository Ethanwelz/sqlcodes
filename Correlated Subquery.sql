SELECT
	Country_name,
    ROUND(Land_area / (
						SELECT
							SUM(Land_area)
						FROM
							geographic_location
						WHERE
							Sub_region = g.Sub_region
					) * 100) AS pct_regional_level
FROM 
	geographic_location AS g