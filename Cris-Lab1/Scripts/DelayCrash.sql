SELECT year, month, COUNT(*) AS cancellations, time.times_late
FROM airline.on_time_performance as performance
INNER JOIN
  (SELECT otp.year AS time_year, otp.month AS time_month, COUNT(*) AS times_late
   FROM airline.on_time_performance as otp
   WHERE depdelayminutes > 60
   GROUP BY year, month) as time
ON performance.month = time.time_month AND performance.year = time.time_year
WHERE year > 1999 AND year < 2013
GROUP BY year, month
ORDER BY cancellations, time.times_late, year, month;
