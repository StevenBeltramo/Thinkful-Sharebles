#1

select
	max(MaxTemperatureF)
from
	weather


#2

select 
	count(*) start_station
from
	trips
group by 
	start_station

#3
select
	min(duration)
from	
	trips

#4
select
	avg(duration)
from
	trips
group by
	end_station
