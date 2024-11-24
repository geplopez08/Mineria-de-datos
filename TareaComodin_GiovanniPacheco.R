install.packages("randomForest")
library(randomForest)

data_migracion <- read.csv("C:\\Users\\geplo\\OneDrive\\Escritorio\\MAESTRIA\\Ciclo 4\\Minería\\Tarea Comodin\\db_csv\\db_csv_\\MIGRACION_BDP.csv", sep = ",")

data_migracion <- na.omit(data_migracion)

data_migracion$DEPARTAMENTO <- as.factor(data_migracion$DEPARTAMENTO)

View(data_migracion)

set.seed(100)
data_migracion <- data_migracion[sample(1:nrow(data_migracion)),]

View(data_migracion)

index <- sample(1:nrow(data_migracion), 0.8*nrow(data_migracion))

train <- data_migracion[index,]
test <- data_migracion[-index,]

View(train)

bosque <- randomForest(DEPARTAMENTO ~ 
                         AREA +
                         PEI3,
                       data = train,
                       ntree = 100,
                       mtry = 10
)

prueba_migracion <- predict(bosque, test)

prueba_migracion

dato_nuevo <- data.frame(
  AREA=2,
  PEI3=2
)

prediccion <- predict(bosque, dato_nuevo)
prediccion


dato_nuevo2 <- data.frame(
  AREA=1,
  PEI3=1
)

prediccion2 <- predict(bosque, dato_nuevo2)
prediccion2

dato_nuevo3 <- data.frame(
  AREA=1,
  PEI3=2
)

prediccion3 <- predict(bosque, dato_nuevo3)
prediccion3

dato_nuevo4 <- data.frame(
  AREA=2,
  PEI3=1
)

prediccion4 <- predict(bosque, dato_nuevo4)
prediccion4
