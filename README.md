# ventas-r-sql

📊 Análisis de Ventas con R + SQL

🧠 Descripción
  Este proyecto implementa un flujo básico de análisis de datos utilizando SQL (SQLite) y R, simulando un pipeline sencillo donde los datos son almacenados, consultados y visualizados.
  El objetivo es demostrar cómo integrar una base de datos con un lenguaje de análisis para generar métricas de negocio y visualizaciones.
  
🎯 Objetivos del proyecto
  Conectar R a una base de datos SQL
  Ejecutar consultas con agregaciones
  Transformar datos para análisis
  Generar visualizaciones básicas
  Exportar resultados a archivos
  
🛠️ Tecnologías utilizadas
    SQL (SQLite)
    R
    Librerías:
    DBI
    RSQLite
    ggplot2
    dplyr
  
🗂️ Estructura del proyecto
  
  ventas-r-sql/
  │
  ├── data/
  │   └── ventas.db
  │
  ├── scripts/
  │   ├── crear_db.sql
  │   └── analisis.R
  │
  ├── outputs/
  │   └── grafico_ventas.png
  │
  └── README.md

⚙️ Instalación y uso
  1. Clonar el repositorio
  Bash
  git clone https://github.com/tu-usuario/ventas-r-sql.git
  cd ventas-r-sql
  2. Crear la base de datos
  Ejecuta el script SQL:
  SQL
  -- crear_db.sql
  CREATE TABLE ventas (
      id INTEGER PRIMARY KEY,
      producto TEXT,
      categoria TEXT,
      precio REAL,
      cantidad INTEGER,
      fecha TEXT
  );
  3. Ejecutar el análisis en R
  Abre R o RStudio y ejecuta:
  R
  source("scripts/analisis.R")

📊 Resultados esperados
  Tabla agregada:
  categoria
  total_ventas
  Tecnología
  34600
  Oficina
  7000
  Visualización:
  Se genera un gráfico de barras en:
  outputs/grafico_ventas.png
  
🔄 Flujo del proyecto
  Datos almacenados en SQLite
  Consulta SQL con agregaciones
  Extracción de datos en R
  Visualización con ggplot2
  Exportación de resultados
  
🧠 Conceptos demostrados
    Conexión a bases de datos desde R
    Ejecución de queries SQL
    Agregaciones (SUM, GROUP BY)
    Uso de data frames en R
    Visualización de datos.
