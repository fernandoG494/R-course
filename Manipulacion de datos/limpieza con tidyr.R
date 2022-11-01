# limpieza de datos
# instalacion de paquetes
install.packages('tidyr')
install.packages('data.table')

library(tidyr)
library(data.table)

año <- c(2018, 2019, 2020)
enero <- c(120, 100, 80)
febrero <- c(80, 90, 140)
marzo <- c(110, 150, 70)

datos <- data.frame(año=año, enero=enero, febrero=febrero, marzo=marzo)
datos

datos <- gather(datos, Mes, Ingresos, enero:marzo)
datos

help('gather')
datos <- spread(datos, Mes, Ingresos)
datos

datos2 <- data.frame(columna=c('a.b', 'c.d', 'e.f'))
datos2

datos2 <- separate(datos2, columna, c('c1', 'c2'))
datos2

datos2 <- unite(datos2, columna, c1, c2, sep = '.')
datos2
