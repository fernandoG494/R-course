# Bucle while
numero <- 1
while(numero < 10){
  texto <- paste("EL numero vale ", numero)
  print(texto)
  
  if(numero == 5){
    break
  }
  
  numero <- numero + 1
}
