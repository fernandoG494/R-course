# Operadores logicos
numero <- 20
numero > 10
numero < 30
numero > 10 & numero < 30

TRUE & TRUE
TRUE & FALSE

(numero > 10) & (numero < 30) & (numero == 20)
(numero > 10) & (numero < 30) & (numero == 50)

TRUE | TRUE
TRUE | FALSE
FALSE | FALSE

(numero > 10) | (numero == 50)
(numero > 100) | (numero == 50)

!TRUE
!FALSE

!(numero > 10)
!(numero == 50)

# part 2
head(mtcars)
datos <- mtcars
head(datos)

subset(datos, mpg > 20)
subset(datos, mpg > 20 & cyl == 6)
subset(datos, mpg > 20 | cyl == 6)
subset(datos, !(cyl == 6))
