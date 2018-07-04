#1

with rainy as 
(SELECT 
date
From weather
WHERE events = 'Rain'
GROUP BY 1
)

SELECT
trip_id,
duration,
DATE(start_date) trip_date
FROM trips
JOIN rainy
on rainy.date = trip_date
ORDER BY duration DESC
LIMIT 3

#2

SELECT
status.station_id,
stations.name,
COUNT(CASE WHEN docks_available=0 then 1 END) empty_count
FROM status
JOIN stations
on stations.station_id = status.station_id
GROUP BY 1
ORDER BY empty_count DESC

#3
SELECT
start_station,
dockcount,
COUNT(*)
FROM trips
JOIN stations
on stations.name=trips.start_station
GROUP BY 1, 2
order by 2 DESC
