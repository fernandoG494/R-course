numeros <- 1:10
letras <- letters[1:10]
numeros
letras

datos <- data.frame(col1 = numeros, col2 = letras)
datos

write.csv(datos, file='fichero.csv')

datos2 <- read.csv('fichero.csv')
datos2

datos2$X <- NULL
datos2
