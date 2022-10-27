# secuencias
seq(1, 10)
seq(1, 10, by=2)

# sorting
vector <- c(1,8,4,1,6,87,3)
sort(vector)

# revertir orden
rev(vector)

str(mtcars)
summary(mtcars)

# vectores
v1 <- c(1,2,3,4)
v2 <- c(5,6,7,8)
append(v1, v2)

is.vector(v1)
is.matrix(v2)

# matrices
matriz <- matrix(1:4)
matriz

is.matrix(matriz)
is.vector(matriz)

# as functions
vector <- 1:12
vector

is.vector(vector)
is.list(vector)

lista <- as.list(vector)
lista

matriz <- as.matrix(vector)
matriz

is.matrix(matriz)