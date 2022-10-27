numeros <- c(1,2,3,7,6,4,5)

maximo <- function(vector){
  maximo <- 0
  for(num in vector){
    if(num > maximo){
      maximo = num
    }
  }
  return(maximo)
}

resultado <- maximo(numeros)
print(resultado)
