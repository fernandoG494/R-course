# arboles de decision
install.packages('rpart')
library(rpart)

datos <- kyphosis
head(datos)

arbol <- rpart(kyphosis, data = datos)
printcp(arbol)

plot(arbol, uniform = TRUE, main = 'Arbol de decision')
text(arbol, use.n = TRUE, all = TRUE)

install.packages('rpart.plot')
library(rpart.plot)
prp(arbol)
