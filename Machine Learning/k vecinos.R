# k vecinos
install.packages('ISLR')

library(ISLR)
datos <- Caravan
head(datos)
str(datos)

summary(datos$Purchase)
any(is.na(datos))
datos.compra <- datos[, 86]
datos.estandarizados <- scale(datos[, -86])

filas <- 1:1000
head(filas)

pruebas.datos <- datos.estandarizados[filas, ]
pruebas.compra <- datos.compra[filas]

entrenamiento.datos <- datos.estandarizados[-filas, ]
entrenamiento.compra <- datos.compra[-filas]

# parte 2
library(class)
set.seed(90)

prediccion.compra <- knn(entrenamiento.datos, pruebas.datos, entrenamiento.compra, k = 1)
head(prediccion.compra)

error <- mean(pruebas.compra != prediccion.compra)
error

prediccion.compra <- knn(entrenamiento.datos, pruebas.datos, entrenamiento.compra, k = 5)
head(prediccion.compra)
error <- mean(pruebas.compra != prediccion.compra)
error

preddion.compra <- NULL
errores <- NULL

for(i in 1:20){
  set.seed(90)
  prediccion.compra <- knn(entrenamiento.datos, pruebas.datos, entrenamiento.compra, k = i)
  errores[i] <- mean(pruebas.compra != prediccion.compra)
}
print(errores)

valores.k <- 1:20

tabla.errores <- data.frame(errores, valores.k)
tabla.errores
