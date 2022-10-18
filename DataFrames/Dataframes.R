# Data frames
meses <- c('enero','febrero','marzo')
ventas <- c(120, 100, 80)
objetivos <- c(T, F, F)

datos <- data.frame(meses, ventas, objetivos)
datos

str(datos)

summary(datos)
