# distribucion de 2 variables
library(ggplot2)
library(ggplot2movies)

peliculas <- movies
head(peliculas)

grafico <- ggplot(peliculas, aes(x = year, y = rating))
grafico <- grafico + geom_bin2d()
print(grafico)

grafico <- grafico + scale_fill_gradient(low = 'blue', high = 'red')
print(grafico)

grafico <- ggplot(peliculas, aes(x = year, y = rating))
grafico <- grafico + geom_density2d()
print(grafico)
