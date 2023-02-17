library(FactoMineR)
#
setwd("C:/Users/emili/Desktop/VACACIONES 2021/MACHINE LEARNING")
Datos <- read.table("EjemploEstudiantes.csv",header=TRUE,sep=";",dec=",",row.names=1)
Datos
#
modelo <- hclust(dist (Datos), method = "complete") 
plot (modelo) 
plot (modelo, hang = -1) 
# la siguiente instrucción separa los clusteres usando 3 
rect.hclust(modelo, k=3, border="red")
#
#method = "single" Usando la agregación del Salto Minimo
modelo <- hclust(dist (Datos), method = "single")
plot(modelo)
plot (modelo, hang = -1) 
rect.hclust(modelo, k=3, border="blue")
#method="single" Usando la agregación del Promedio 
modelo <- hclust(dist (Datos), method = "average") 
plot (modelo) 
plot (modelo, hang = -1) 
rect.hclust(modelo, k=3, border="green") 
#method= "ward" Usando la agregación de Ward 
modelo <- hclust(dist (Datos), method= "ward.D") 
plot (modelo) 
plot (modelo, hang = -1) 
rect.hclust(modelo, k=3, border="magenta")