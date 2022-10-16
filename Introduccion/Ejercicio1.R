## EJERCICIO 1
ventas <- c(120,140,90)
ventas

meses <- c('enero', 'febrero', 'marzo')
meses

names(ventas) <- meses
ventas

# para sacar un promedio del vector numerico
mean(ventas)

filtro <- ventas > 100
filtro

ventas.mayores.100 <- ventas[filtro]
ventas.mayores.100

filtro2 <- ventas == max(ventas)
filtro2

