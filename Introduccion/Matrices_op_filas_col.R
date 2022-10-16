# operaciones con filas y columnas
empresa1 <- c(40, 160, 120)
empresa2 <- c(100, 140, 90)

ventas <- c(empresa1, empresa2)
matriz <- matrix(ventas, byrow = T, nrow = 2)
matriz

meses <- c('enero', 'febrero', 'marzo')
empresas <- c('empresa1', 'empresa2')
colnames(matriz) <- meses
rownames(matriz) <- empresas
matriz

colSums(matriz)
rowSums(matriz)
rowMeans(matriz)

empresa3 <- c(80, 120, 110)
matriz <- rbind(matriz, empresa3)
matriz

media <- rowMeans(matriz)
media

matriz <- cbind(matriz, media)
matriz

