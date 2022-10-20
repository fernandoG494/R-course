# Ficheros en CSV
matriz <- matrix(1:16, nrow = 4)
matriz

write.csv(matriz, file = 'Entrada y salida de datos/fichero1.csv')
datos <- read.csv('Entrada y salida de datos/fichero1.csv')
datos

datos$X <- NULL
datos

class(datos)
head(datos)

datos$suma <- datos$V1 + datos$V2 + datos$V3 + datos$V4
datos

write.csv(datos, file = 'Entrada y salida de datos/fichero1a.csv')
