# Graficos interactivos con ploty
install.packages('plotly')
library(plotly)
library(ggplot2)

datos <- mtcars
head(datos)

grafico <- ggplot(datos, aes(mpg, wt)) + geom_point()
print(grafico)

grafico2 <- ggplotly(grafico)
print(grafico2)

set.seed(123)
df <- data.frame(x <- rchisq(1000, 5, 10), group <- sample(LETTERS[1:5], size = 1000, replace = T))
p <- ggplot(df, aes(x, fill = group)) + geom_density(alpha = 0.5, position = 'stack') + ggtitle('stacked chart')
fig <- ggplotly(p)
fig
