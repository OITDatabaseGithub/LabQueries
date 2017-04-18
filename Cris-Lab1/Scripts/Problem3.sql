SELECT LEFT(ap.description, 30) AS dest_airport,
    MAX(arrdelayminutes) AS max_arrival_delay
FROM
    airline.on_time_performance AS otp
    INNER JOIN airline.airport AS ap ON otp.dest = ap.airportid
WHERE
    YEAR >= 1990 AND
    YEAR <= 1999
GROUP BY
    dest_airport
ORDER BY
    max_arrival_delay DESC;
