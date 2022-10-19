# Columnas en dataframes
numeros <- 1:5
letras <- letters[1:5]
datos <- data.frame(col1 = numeros, col2 = letras)
datos

datos$col3 <- datos$col1 * 2
datos

colnames(datos)
colnames(datos) <- c('c1', 'c2', 'c3')
datos

colnames(datos)[3] <- 'Nueva'
datos

datos[datos$c1 > 3,]