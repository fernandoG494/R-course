# Ejercicio 1
# Crear un dataframe con los siguientes datos por nombre, edad, sexo
# Antonio, 40, M
# Maria, 30, F
# Juan, 35, M

nombre <- c('Antonio', 'Maria', 'Juan')
edad <- c(40, 30, 35)
sexo <- c('M', 'F', 'M')

datos <- data.frame(nombre, edad, sexo)
datos
