SELECT year, month, COUNT(*) AS cancellations,
FROM airline.on_time_performance as performance
WHERE month in (2, 3, 4, 8, 9, 10, 11, 12, 13) AND year > 2001 AND year < 2013
GROUP BY year, month
ORDER BY year, month;
