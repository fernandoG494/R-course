# k medias
library(ISLR)
datos <- iris
str(datos)

library(ggplot2)
grafico <- ggplot(datos, aes(Petal.Length, Petal.Width, color = Species))
grafico <- grafico + geom_point(size = 5)
print(grafico)

set.seed(90)
conjuntos <- kmeans(datos[, 1:4], 3, nstart = 20)
print(conjuntos)

table(conjuntos$cluster, datos$Species)
library(cluster)
clusplot(datos, conjuntos$cluster, color = TRUE, shade = TRUE, labels = 0, lines = 0)
