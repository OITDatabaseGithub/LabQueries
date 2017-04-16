SELECT month, 
COUNT(*) AS cancellations
FROM airline.on_time_performance as performance
WHERE year > 1999 AND year < 2013
GROUP BY month
ORDER BY month, cancellations;
