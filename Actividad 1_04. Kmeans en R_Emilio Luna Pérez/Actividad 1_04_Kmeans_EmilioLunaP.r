library(FactoMineR)
#
setwd("C:/Users/emili/Desktop/VACACIONES 2021/MACHINE LEARNING")
Datos <- read.table("EjemploEstudiantes.csv",header=TRUE,sep=";",dec=",",row.names=1)
Datos
#
#entrena el modelo 
grupos = kmeans (Datos, 3, iter.max = 1500)
#grafica los clusters
barplot (grupos$center[1,], col= "blue") #centro de gravedad del cluster1 
barplot (grupos$center [2,], col= "red") #centro de gravedad del cluster2 
barplot (grupos$center [3,], col = "green") #centro de gravedad del cluster3
#grafica los tres clusters completos
rownames (grupos$centers)= c("Cluster 1", "Cluster 2", "Cluster 3") 
barplot(t(grupos$centers), beside = TRUE, col = heat.colors (5))

# En grupos verifico a que cluster pertenece cada fila de la tabla de datos 
NDatos=cbind (Datos, Grupo=grupos$cluster)
Datos 
NDatos
setwd("C:/Users/emili/Desktop/VACACIONES 2021/MACHINE LEARNING")
write.csv (NDatos, "NDatos.csv")
