# limites y dimensiones de las graficas
library(ggplot2)

datos <- mpg
head(datos)
str(datos)

grafico <- ggplot(datos, aes(x = displ, y = hwy))
grafico <- grafico + geom_point()
print(grafico)

grafico <- grafico + coord_cartesian(xlim = c(2,5), ylim = c(20, 30))
print(grafico)                                     

grafico <- ggplot(datos, aes(x = displ, y = hwy))
grafico <- grafico + geom_point()
print(grafico)
