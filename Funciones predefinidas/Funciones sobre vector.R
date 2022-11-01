# sobre vector
vector <- c(1,2,3)

suma <- function(numero){
  resultado <- numero + 10
  return(resultado)
}

print(vector)
vector2 <- sapply(vector, suma)
print(vector2)

# sobre lista
lista <- list(1,2,3)

aleatorio <- function(numero){
  numero.aleatorio <- sample(1:100, 1)
  print(numero.aleatorio)
  resultado <- numero + numero.aleatorio
  return(resultado)
}

print(lista)
lista2 <- lapply(lista, aleatorio)
print(lista2)
