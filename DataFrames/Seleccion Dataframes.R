meses <- c('enero', 'febrero', 'marzo')
ventas <- c(100, 120, 80)
objetivos <- c(T,T,F)
datos <- data.frame(meses, ventas, objetivos)
datos

datos[1,]
datos[,1]
datos[2,2]
datos[1,'ventas']
datos[1,c('meses', 'objetivos')]

subset(datos, subset = ventas>=100)
datos

orden <- order(datos['ventas'])
orden

datos[orden,]
orden.descendiente <- order(-datos['ventas'])
orden.descendiente

datos[1, 'ventas']
datos$ventas
datos

datos$ventas
datos$meses
datos$objetivos

datos['objetivos']

