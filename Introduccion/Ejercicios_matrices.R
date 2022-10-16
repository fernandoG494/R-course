# Ejercicio 1
v1 <- c(4, 10, 5, 3)
v2 <- c(2, 8, 25, 14)

vectorConmutado <- c(v1,v2)

matriz <- matrix(vectorConmutado, nrow = 2, ncol = 4)
matriz


# Ejercicio 2
matriz <- matrix(1:24, nrow = 4)
matriz

# Ejercicio 3
matriz[3,4]

# Ejercicio 4
matriz <- matrix(matriz[1:3,1:2], nrow = 3)
matriz

# Ejercicio 5
sums <- rowSums(matriz)
matriz <- cbind(matriz, sums)
matriz
