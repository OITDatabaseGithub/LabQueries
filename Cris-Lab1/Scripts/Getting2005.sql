SELECT * 
FROM airline.on_time_performance 
JOIN airline.airline
ON airline.airline.airlineid = airline.on_time_performance.airlineid
JOIN airline.airport
ON airline.airport.airportid = airline.on_time_performance.airportid
WHERE year = 2005 AND month = 1;
