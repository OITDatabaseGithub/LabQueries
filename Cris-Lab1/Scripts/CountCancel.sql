SELECT year, month, COUNT(*) AS cancellations
FROM airline.on_time_performance as performance
WHERE year > 1999 AND year < 2013 AND cancelled = 1
GROUP BY year, month
ORDER BY year, month, cancellations;
