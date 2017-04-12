select
		year,
		month,
		round( avg( arrdelayminutes )::numeric, 2 ) as avg_arrive_delay
	from airline.on_time_performance
	where year = 2005 OR year = 2006
	group by year, month
	order by avg_arrive_delay desc
	limit 5
