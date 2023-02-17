#install.packages("FactoMineR", dependencies = TRUE)
#
library(FactoMineR)
#
setwd("C:/Users/emili/Desktop/VACACIONES 2021/MACHINE LEARNING")
Datos <- read.table("EjemploEstudiantes.csv",header=TRUE,sep=";",dec=",",row.names=1)
#
#PCA
#
res <- PCA(Datos,scale.unit = TRUE,ncp = 5,graph = FALSE)
res
#
plot(res,axes = c(1,2),choix = "ind",col.ind = "red",new.plot = TRUE)
#
#
plot(res,axes = c(1,2),choix = "var",col.ind = "blue",new.plot = TRUE)
#circulo de correlaciones
#