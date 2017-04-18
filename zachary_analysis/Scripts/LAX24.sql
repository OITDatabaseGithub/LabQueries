-- Los Angeles, CA: Los Angeles International
-- November 24, 2010
select year
	 , month
	 , dayofmonth
	 , ROUND(AVG(depdelayminutes)::NUMERIC, 2) AS avg_departure_delay
	 , aid.description
from airline.on_time_performance as otp
INNER JOIN airline.airport_id AS aid ON otp.originairportid = aid.airportid
WHERE year = 2010
	  AND month = 11
	  AND dayofmonth = 24
	  AND originairportid = 12892
GROUP BY otp.year, otp.month, otp.dayofmonth, aid.description
