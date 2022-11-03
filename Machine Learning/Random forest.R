# random forest
install.packages('randomForest')
library(randomForest)

modelo <- randomForest(Kyphosis ~ ., data = datos)
print(modelo)

modelo$predicted
