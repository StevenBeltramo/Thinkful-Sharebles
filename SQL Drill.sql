select
	MinTemperatureF
from 
	weather
where
	PrecipitationIn > 0 and
	zip = 94301