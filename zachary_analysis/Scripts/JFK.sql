-- New York, NY: John F. Kennedy International
SELECT year
	 , aid.description as airport
	 , ROUND(AVG(depdelayminutes)::NUMERIC, 2) AS avg_departure_delay
FROM airline.on_time_performance as otp
	INNER JOIN airline.airport_id AS aid ON otp.originairportid = aid.airportid
WHERE otp.year IN (2006, 2007, 2008, 2009, 2010, 2011)
	  AND originairportid = 12478
GROUP BY otp.year,
		 aid.description
ORDER BY otp.year ASC
