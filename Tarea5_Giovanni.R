install.packages("rpart")
install.packages("rpart.plot")

library(rpart)
library(rpart.plot)

vivienda <- read.csv("C:\\Users\\geplo\\OneDrive\\Escritorio\\MAESTRIA\\Ciclo 4\\Minería\\Tarea 2\\db_csv\\db_csv_\\VIVIENDA_BDP.csv", sep = ',')

arbol <- rpart(DEPARTAMENTO ~
                 PCV2+
                 PCV3+
                 PCV5,
               data = vivienda, method = "class")

rpart.plot(arbol, type=2, extra=0, under = TRUE, fallen.leaves = TRUE, box.palette = "BuGn", 
           main ="Predicción de departamento", cex = 1)