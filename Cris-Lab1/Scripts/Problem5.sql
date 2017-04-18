	SELECT
		uc.description as airline_name,
		COUNT(*) AS occurrances
	FROM airline.on_time_performance as otp
	JOIN airline.unique_carriers AS uc ON otp.uniquecarrier = uc.uniquecarriersid
	WHERE depdelayminutes > 60
	GROUP BY uc.description
	ORDER BY occurrances desc 
	limit 10;
