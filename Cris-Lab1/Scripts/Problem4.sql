SELECT
uc.description as airline_name
COUNT(*) AS occurrances
FROM on_time_performance as otp
INNER JOIN airline.unique_carriers AS uc ON otp.uniquecarrier = uc.uniquecarriersid
WHERE depdelayminutes > 60
GROUP BY uc.description
ORDER BY occurrances
