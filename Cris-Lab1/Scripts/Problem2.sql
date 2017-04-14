select
airname.description
, count(*) as occurrences
from airline.unique_carriers as airname
JOIN airline.on_time_performance as performance
ON performance.uniquecarrier = airname.uniquecarriersid
where year > 1999 and depdelayminutes > 0
group by airname.description
order by occurrences desc;
