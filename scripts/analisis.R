# se instalan estos paqueterias en caso de no tenerlas

install.packages("DBI")     -- interfaz coneccion BD
install.packages("RSQLite") -- driver para poder utilizar SQLLite
install.packages("ggplot2") -- visualización de datos
install.packages("dplyr")   -- manipulación de datos

# aqui se cargan las librerias
library(DBI)
library(RSQLite)
library(ggplot2)
library(dplyr)

# aqui se conecta a la BD
con <- dbConnect(SQLite(), "data/ventas.db") -- con Objeto conexón  / SQLite() define Tipo de BD / definimos ruta de archivo data/ventas.db

# Consultar datos

query <- "
SELECT 
    categoria,
    SUM(precio * cantidad) AS total_ventas 
FROM ventas
GROUP BY categoria;
"

ventas <- dbGetQuery(con, query) -- Ejectuta SQL , Trae el rsultado a R , lo guarda com df Data Frime

# Ver resultados
print(ventas) --- muestra contenido en consola , aqui validamos que meustre lo esperado ,para este caso una sumatoria de las ventas por categoria

# Gráfico
grafico <- ggplot(ventas, aes(x = categoria, y = total_ventas, fill = categoria)) +  --- ventas--DataSet / aes--Para mapeo de Variables
  geom_bar(stat = "identity") + -- con identity usamos los valores del result tal cual , sin calcular nada 
  theme_minimal() + -- definimos un estilo minimalista para facilitar la interpretación  
  labs(title = "Ventas por Categoría", x = "Categoría", y = "Total")-- definimos Titulo del grafico y etiquetas 

# Guardar gráfico
ggsave("outputs/grafico_ventas.png", grafico)--funcion que guarda Grafico , indicando la ruta 

# Cerrar conexión
dbDisconnect(con)--Liberamos recusos por conexión, finalizando la sesion BD