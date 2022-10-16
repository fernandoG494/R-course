empresa1 <- c(100, 80, 90)
empresa2 <- c(50, 120, 80)

ventas <- c(empresa1, empresa2)
ventas

matriz.ventas <- matrix(ventas, nrow=2, byrow=TRUE)
matriz.ventas

meses <- c('enero', 'febrero', 'marzo')
colnames(matriz.ventas) <- meses
matriz

matriz.ventas

empresas <- c('empresa1', 'empresa2')
rownames(matriz.ventas) <- empresas

matriz.ventas

