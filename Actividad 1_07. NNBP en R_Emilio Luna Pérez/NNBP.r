#install.packages('nnet', dependencies = TRUE)
library(nnet)
#leer datos
setwd("C:/Users/emili/Desktop/VACACIONES 2021/MACHINE LEARNING")
datos<-read.csv("iris.csv",sep = ";",dec = '.',header = TRUE)
datos

#segmenta la tabla (dataset)
muestra<-sample(1:150,40)
muestra

#tabla de evaluacion
ttesting <- datos[muestra,]

#tabla de entrenamiento
taprendizaje <- datos[-muestra,]
taprendizaje

#entrena el modelo
modelo = nnet(tipo~., data = taprendizaje, size = 6, rang = 0.1)
modelo 

#prediccion o clasificacion 

prediccion <- predict(modelo, ttesting[,-5], type = "class")
prediccion

#evaluar el modelo

MC <- table(ttesting$tipo, prediccion)
MC
acierto <- sum(diag(MC))/sum(MC)
acierto

error <- 1-acierto
error