SELECT
  year,
  COUNT(*) as CancelledFlightsInJuly
FROM airline.on_time_performance
WHERE Cancelled = 1 AND month = 7
GROUP BY year
ORDER BY CancelledFlightsInJuly
