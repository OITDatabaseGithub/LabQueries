	SELECT
		COUNT(*) AS occurrances
	FROM airline.on_time_performance
	WHERE depdelayminutes > 60
