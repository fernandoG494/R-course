# Histogramas
install.packages('ggplot2')
install.packages('ggplot2movies')

library(ggplot2)
library(ggplot2movies)

peliculas <- movies
head(peliculas)
peliculas[c('title', 'year', 'rating')]

datos <- ggplot(peliculas, aes(x = rating))
histograma <- datos + geom_histogram()
print(histograma)

histograma <- datos + geom_histogram(binwidth = 0.3)
print(histograma)
histograma <- datos + geom_histogram(binwidth = 0.3, color = 'green')
print(histograma)
histograma <- datos + geom_histogram(binwidth = 0.3, color = 'green', fill = 'green')
print(histograma)
histograma <- datos + geom_histogram(binwidth = 0.3, color = 'green', fill = 'green', alpha = 0.3)
print(histograma)
histograma <- histograma + xlab('Puntuacion') + ylab('Frecuencia') + ggtitle('Histograma')
print(histograma)
