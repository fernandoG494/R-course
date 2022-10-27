numeros <- matrix(1:9, nrow = 3)
print(numeros)

sumMatriz <- function(matriz) {
  acc <- 0
  for(element in matriz){
    acc <- acc + element
  }
  return(acc)
}

resultado <- sumMatriz(numeros)
print(resultado)
