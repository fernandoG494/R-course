# 1.- Crear la variable de coches que almacene el dataset mtcars
coches <- mtcars
coches
# 2.- Verificar si coches es un dataframe
class(coches)

# 3.- Imprimir las primeras seis lineas de coches
head(coches, 6)
coches[1:6,]

# 4.- Cual es la media de la columna mpg
mean(coches$mpg)

# 5.- Cual es el valor de cyl para el coche 'Mazda RX4'
coches['Mazda RX4',]$cyl

# 6.- Selecciona las filas de coches donde la columna cyl es igual a 8 y la columna disp > 400
coches[coches$cyl == 8 & coches$disp > 400,]
subset(coches, cyl == 8 & disp > 400)

# 7.- Selecciona las columnas disp y wt
coches[,c('disp', 'wt')]

# 8.- Crear una nueva columna, rendimiento que sea igual a hp/wt
coches$rendimiento <- coches$hp / coches$wt
head(coches)
