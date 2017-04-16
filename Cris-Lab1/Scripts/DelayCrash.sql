SELECT year, month, day, 
COUNT(*) AS cancellations
FROM airline.on_time_performance as performance
WHERE  AND year > 1999 AND year < 2013
GROUP BY year, month, day
ORDER BY cancellations, year, month, day;
