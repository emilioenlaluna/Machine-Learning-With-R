install.packages ('kknn', dependencies=TRUE) 
library(kknn)
setwd("C:/Users/emili/Desktop/VACACIONES 2021/MACHINE LEARNING")
rm(list = ls(all=TRUE)) #BORRA TODAS LAS VARIABLES DE MEMORIA
datos<-read.csv("iris.csv",sep = ";",dec = '.',header = T)
datos
suppressWarnings (suppressMessages (library (kknn))) 
dim(datos)
head(datos)
summary(datos)
muestra<-sample(1:150,50)
muestra
ttesting<-datos[muestra,]
dim(ttesting)
taprendizaje <- datos[-muestra,]
dim(taprendizaje)
#train.kknn escoje el k usando leave-one-out crossvalidation

modelo<-train.kknn( tipo ~ ., data =  taprendizaje, kmax = 9)
modelo

#Que tan bien predice el modelo
prediccion<-predict(modelo,ttesting[,-5])
prediccion

#Matriz de confusiOn
MC<-table(ttesting[,5],prediccion)
MC

#Porcentaje de buena clasificaciOn
acierto<-(sum(diag(MC)))/sum(MC)
acierto
error<-1-acierto
error