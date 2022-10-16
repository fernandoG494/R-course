# categorias - funcion factor
animales <- c('perro', 'gato', 'mono', 'perro', 'gato')
animales

factor(animales) # palabras no repetidas
summary(factor(animales)) # cuantas veces se repite

temperaturas <- c('frio', 'templado', 'templado', 'frio', 'caliente', 'caliente', 'frio')
temperaturas

temperaturas.ordenadas <- factor(temperaturas, ordered = TRUE, levels = c('frio', 'templado', 'caliente'))
temperaturas.ordenadas

summary(temperaturas.ordenadas)

