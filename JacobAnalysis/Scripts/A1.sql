SELECT 
  year,
  COUNT(*) as occurences
FROM airline.on_time_performance
WHERE month = 9
GROUP BY year
ORDER BY occurences
