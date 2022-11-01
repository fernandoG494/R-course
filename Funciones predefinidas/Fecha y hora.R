# fecha y hora
fecha <- Sys.Date()
fecha

fecha2 <- "2020-01-01"
class(fecha2)
class(fecha)

fecha2 <- as.Date(fecha2)
fecha2
class(fecha2)

fecha3 <- as.Date("04-01-2020", format="%m-%d-%Y")
fecha3
class(fecha3)

Sys.time()
format(Sys.time, format="%H:%M:%S")
format(Sys.time(), format="%H:%M:%S")
strptime("12:00:00", format="%H:%M:%S")


