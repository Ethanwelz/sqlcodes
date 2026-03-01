SELECT
	econ.Country_name,
    econ.Time_period,
    econ.Est_gdp_in_billions,
    service.Pct_managed_drinking_water_services
FROM
	economic_indicators AS econ
INNER JOIN
	basic_services AS service
ON
	econ.Country_name = service.Country_name
    AND econ.Time_period = service.Time_period
WHERE
	econ.Time_period = 2020
    AND service.Pct_managed_drinking_water_services < 90
    AND econ.Est_gdp_in_billions > (
										SELECT 
											AVG(Est_gdp_in_billions)
										FROM
											economic_indicators
										WHERE
											Time_period = 2020);