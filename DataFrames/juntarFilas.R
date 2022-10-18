# juntar las filas de 2 dataframes
numeros <- 1:10
letras <- letters[1:10]
datos1 <- data.frame(numeros, letras)
datos1

datos2 <- data.frame(numeros = 11, letras = 'k')
datos2

datos3 <- rbind(datos1, datos2)
datos3

