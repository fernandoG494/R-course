# regresion lineal
datos <- read.csv('Resources/student-mat.csv', sep = ';')
head(datos)
any(is.na(datos))

library(ggplot2)
library(ggthemes)
library(dplyr)

columnas.numericas <- sapply(datos, is.numeric)
head(columnas.numericas)

datos.correlacion <- cor(datos[, columnas.numericas])
print(datos.correlacion)

install.packages('corrgram')
install.packages('corrplot')
library(corrplot)
library(corrgram)

grafico <- corrplot(datos.correlacion, method = 'color')
corrgram(datos)

ggplot(datos, aes(x = G3)) + geom_histogram(bins = 20, alpha = 0.5, fill = 'blue')

install.packages('caTools')
library(caTools)

set.seed(80)
ejemplo <- sample.split(datos$G3, SplitRatio = 0.7)
entrenamiento <- subset(datos, ejemplo == TRUE)
pruebas <- subset(datos, ejemplo == FALSE)

modelo <- lm(G3 ~., entrenamiento)
print(summary(modelo))

residuos <- residuals(modelo)
residuos <- as.data.frame(residuos)
head(residuos)

ggplot(residuos, aes(residuos), + geom_histogram(fill = 'blue', alpha = 0.5))
plot(modelo)

predicciones <- predict(modelo, pruebas)
resultados <- cbind(predicciones, pruebas$G3)
head(resultados)

colnames(resultados) <- c('prediccion','real')
resultados <- data.frame(resultados)
head(resultados)
min(resultados)

cero <- function(x) {
  if(x < 0){
    return(0)
  }else{
    return(x)
  }
}

resultados$prediccion <- sapply(resultados$prediccion, cero)
min(resultados)

error <- mean((resultados$real - resultados$prediccion)^2)
error

sse <- sum((resultados$prediccion - resultados$real)^2)
sst <- sum((mean(datos$G3) - resultados$real)^2)
resultado <- 1 - sse/sst
resultado
