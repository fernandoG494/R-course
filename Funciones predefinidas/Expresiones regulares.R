# Expresiones regulares
texto <- 'Hola, buenos días, como estas?'

grepl('AAAAAAAAAAAAA', texto)
grepl('días', texto)
grep('días', texto)

vector <- c(1,2,3,4,5)
grep(3, vector)
grepl(3, vector)
