SELECT
	geoloc.Country_name,
    geoloc.Land_area,
    geoloc.Sub_region,
    (geoloc.Land_area / land_per_region.TotalLandArea) * 100 AS PctOfRegionLand
FROM
	geographic_location AS geoloc
JOIN
	(
		SELECT
			Sub_region,
			SUM(Land_area) AS TotalLandArea
		FROM
			geographic_location
		GROUP BY
			Sub_region) AS land_per_region