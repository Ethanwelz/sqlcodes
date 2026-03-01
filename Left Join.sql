SELECT
	*
FROM
	united_nations.geographic_location as geo
LEFT JOIN
	united_nations.economic_indicators as econ
ON	geo.Country_name = econ.Country_name
LEFT JOIN
	united_nations.basic_services as svc
ON geo.Country_name = svc.Country_name
AND econ.Time_period = svc.Time_period;