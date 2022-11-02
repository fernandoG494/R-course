# boxplots
library(ggplot2)
datos <- mtcars
head(datos)

grafico <- ggplot(datos, aes(x = factor(cyl), y = mpg))
grafico <- grafico + geom_boxplot()
print(grafico)

grafico <- grafico + geom_boxplot(fill = 'green')
print(grafico)

grafico <- grafico + geom_boxplot(aes(fill = factor(cyl)))
print(grafico)

grafico <- grafico + theme_dark()
print(grafico)

grafico <- grafico + theme_light()
print(grafico)
