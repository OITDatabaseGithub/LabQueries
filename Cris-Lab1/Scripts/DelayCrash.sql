SELECT year, month, COUNT(*) AS cancellations, time.times_late
FROM airline.on_time_performance as performance
INNER JOIN
  (COUNT(*) AS times_late, time_year, time_month
   FROM airline.on_time_performance as otp
   JOIN airline.unique_carriers AS uc ON otp.uniquecarrier = uc.uniquecarriersid
   WHERE depdelayminutes > 60
   GROUP BY year, month) as time
ON performance.month = time.month AND performance.year = time.year
WHERE year > 1999 AND year < 2013
GROUP BY year, month
ORDER BY cancellations, year, month;
