	SELECT
		COUNT(*) AS occurrances
	FROM on_time_performance
	WHERE depdelayminutes > 60
