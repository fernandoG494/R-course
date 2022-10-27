# Bases de datos
# instalar paquete SQL
install.packages('RSQLite')
# referencia a la libreria
library(RSQLite)

connection <- dbConnect(RSQLite::SQLite(), "basededatos.db")
dbWriteTable(connection, "coches", mtcars)
dbReadTable(connection, "coches")

res <- dbSendQuery(connection, 'SELECT * from coches WHERE cyl = 8')
dbFetch(res)

dbClearResult(res)
dbDisconnect(res)