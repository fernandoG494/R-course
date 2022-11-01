# Manipulacion de datos con dplyr
# install package
install.packages('dplyr')
install.packages('nycflights13')
library(dplyr)
library(nycflights13)

str(flights)
head(flights)

filter(flights, month == 4, day == 10)
select(flights, origin, dest, air_time)
select(flights, origin, dest, air_time, flight)

slice(flights, 1:5)
slice(flights, 30:35)

arrange(flights, year, month, day, dep_time)
arrange(flights, year, month, day, desc(dep_time))
rename(flights, aerolina = carrier)        

distinct(select(flights, carrier))
summarise(flights, media = mean(air_time, na.rm = TRUE))

head(flights)
sample_n(flights, 10)