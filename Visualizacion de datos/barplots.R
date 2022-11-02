# barplots
library(ggplot2)
datos <- mpg
head(datos)
str(datos)

grafico <- ggplot(datos, aes(x = class))
grafico <- grafico + geom_bar()
print(grafico)

grafico <- grafico + geom_bar(color = 'red', fill = 'blue')
print(grafico)

grafico <- grafico + geom_bar(color = '#33e32a', fill = 'blue')
print(grafico)

grafico <- grafico + geom_bar(aes(fill = drv))
print(grafico)
