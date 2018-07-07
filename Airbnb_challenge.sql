#1
select
	max(price),
	*
from
	listings


#2
select	
	neighbourhood,
	count(*) neighbourhood_count
from
	listings
group by 
	neighbourhood 
	
#3
select
	date,
	count(strftime('%m',datetime(date))) 
	
from
	reviews
group by
	strftime('%m',datetime(date)) 

