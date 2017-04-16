SELECT year, month, COUNT(*) AS cancellations
FROM airline.on_time_performance as performance
AND year > 1999 AND year < 2013
GROUP BY year, month
ORDER BY cancellations, year, month;
