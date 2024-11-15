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

arbol2 <- rpart(AREA ~
                  PCH15+
                  PCH1+
                  PCH8,
                data = hogar, method = "class")

rpart.plot(arbol2, type=2, extra=0, under = TRUE, fallen.leaves = TRUE, box.palette = "BuGn", 
           main ="Predicción de área", cex = 1)

arbol3 <- rpart(PCH5 ~
                  PCH9_F+
                  PCH9_K+
                  PCH10,
                data = hogar, method = "class")

rpart.plot(arbol3, type=2, extra=0, under = TRUE, fallen.leaves = TRUE, box.palette = "BuGn", 
           main ="Predicción de servicio sanitario", cex = 1)
