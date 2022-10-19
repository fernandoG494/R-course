# valores nulos
any(is.na(mtcars))
head(mtcars)

mtcars[is.na(mtcars)] <- 0
head(mtcars)