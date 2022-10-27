# funciones
hola <- function(nombre){
  texto <- paste("Hola, buenos dias", nombre)
  print(texto)
}
hola("Fernando")

sumar <-function(n1, n2){
  resultado <- n1 + n2
  return(resultado)
}
resultado <- sumar(8,4)
print(resultado)

vector <- c(1,2,3,4,5)
resultado <- sum(vector)
print(resultado)

sum(1:5)