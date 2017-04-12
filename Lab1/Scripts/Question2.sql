	SELECT
		uc.description AS airline_name,
		COUNT(*) AS occurrances
	FROM airline.on_time_performance AS otp
		INNER JOIN airline.unique_carriers AS uc ON otp.uniquecarrier = uc.uniquecarriersid
	WHERE year BETWEEN 2000 AND 2009
		AND depdelayminutes > 0
	GROUP BY uc.description
	ORDER BY occurrances
