# Ficheros EXCEL
# instalar paquete
install.packages('readxl')
#cargar libreria
library('readxl')

excel_sheets('Entrada y salida de datos/poblacion.xlsx')
datos <- read_excel('Entrada y salida de datos/poblacion.xlsx', sheet = 'Hoja 1')
datos

datos$Continente
datos$Densidad
str(datos)

excel <- lapply(excel_sheets('Entrada y salida de datos/poblacion.xlsx'), read_excel, path('poblacion.xlsx'))
excel

install.packages('xlsx')
datos <- head('mtcars')
datos

class(datos)
write.xlsx(datos, 'fichero2.xlsx')