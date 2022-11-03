# Maquina de vectores de soporte - SVM
library(ISLR)
datos <- iris
str(datos)

install.packages('e1071')
library(e1071)

modelo <- svm(Species ~ . , data = datos)
predicciones <- predict(modelo, datos[1:4])
predicciones

tabla <- data.frame(datos, predicciones)
tabla
