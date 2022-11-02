# Scatterplots
library(ggplot2)
coches <- mtcars
head(coches)

grafico <- ggplot(coches, aes(x = disp, y = mpg))
grafico <- grafico + geom_point()
print(grafico)

grafico <- grafico + geom_point(size = 8, alpha = 0.4)
print(grafico)

grafico <- grafico + geom_point(size = 8, color = 'red')
print(grafico)

grafico <- grafico + geom_point(size = 8, color = '#2717C4')
print(grafico)

grafico <- grafico + geom_point(aes(size = wt))
print(grafico)

grafico <- ggplot(coches, aes(x = disp, y = mpg))
grafico <- grafico + geom_point(size = 8, aes(color = hp))
grafico <- grafico + scale_color_gradient(low = 'blue', high = 'red')
print(grafico)
