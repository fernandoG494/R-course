# operador pipe
coches <- mtcars
head(coches)

resultado <- arrange(sample_n(filter(coches, mpg > 20), size = 5), desc(mpg))
resultado

paso1 <- filter(coches, mpg > 20)
paso2 <- sample_n(paso1, size = 5)
paso3 <- arrange(paso2, desc(mpg))

resultado2 <- paso3
resultado2

resultado3 <- coches %>% filter(mpg > 20) %>% sample_n(size = 5) %>% arrange(desc(mpg))
resultado3
