#***programacion en lenguaje R****
#En este documento se presenta una introduccion al paquete R, orientado
#a su lenguaje de programacion con enfasis en machine learning
#
#la consola y el editor de R
#en la consola podemos manejar R mediante codigo
#
#introducimos '2+2' en la consola y nos devuelve 4
#sin embargo no es la manera adecuada de trabajar en R
#->nos servira para corregir, repintar, retocarlas<-editor de R
#
#COMENTARIOS: # para incluir comentarios que no seran leidos
#
#solicitando ayuda a R
#
#para pedir ayuda a R, se hace mediante el signo de pregunta ? antes de la respectiva
#funcion por ejemplo
#
#para pedir ayuda al comando matriz
#?matrix
#?matrix
#
#Calculos básicos
#
#Potencias (usando el gorro->ground) alt+93
#
#3^4
#[1] 81
#
#Division entera
#
#31%/%7 division entera da como resultado 4 y quedan un residuo que no se guarda
#
#31%%7  residuo de la division entera---modulo-residuo
#
#operadores---operaciones basicas
#
#7*4+3
#
#la multipliacaion tiene prioridad
#
#da como resultado == 31
#
#sqrt()----raiz cuadrada
#
#pi * 2^3 - sqrt(4)
#3.14 * 8 * 2
#
#
#valor absoluto
#
#abs(12-17 * 2/3-9)
#> 12-17 * 2/3-9
#[1] -8.333333
#> abs(12-17 * 2/3-9)
#[1] 8.333333
#
#factorial de un numero
#
#factorial(5)
#5*4*3*2*1
#
#factorial(5)==120
#
#logaritmos
#
#log(2,10)==[1] 0.30103
#
#log(num,base)
#
#funciones trigonometricas
#
#
#> sin(45*pi/180)
#[1] 0.7071068
#
#estan disponibles otras funciones trigonometricas
#
#
#Leyendo un archivo *.csv
#
#Para introducir un "dataframe" la tabla de datos que se encuentra a continuacion
#
#comando para establecer el directorio de trabajo
#
#setwd("C:/Users/emili/Desktop/VACACIONES 2021/MACHINE LEARNING")
#directorio de trabajo
#
#Datos <- read.table("EjemploEstudiantes.csv",header=TRUE,sep=";",dec=",",row.names=1)
#sep-separador, dec-decimales, row.names ==columna de nombres
#
#Datos
#//para imprimir
#
# str(Datos) //asignaturas por columnas
#
#summary(Datos)//informaicon util
#
#CALCULANDO ESTADISTICAS BASICAS SOBRE ESOS DATOS
#
#LA MEDIA(promedio de todos los numeros)
#
#mean(Datos$Matematicas)
#mean(Datos$Español)
# mean(Datos$Ciencias)
#6.79
#
#LA DESVIACION ESTANDAR
#variación o la dispersión de un conjunto de datos numéricos
#
#desviación estándar baja indica que la mayor parte de los datos
#de una muestra tienden a estar agrupados cerca de su media
#
#desviación estándar alta indica que los datos se extienden 
#sobre un rango de valores más amplio
#
#sd()
#
#> sd(Datos$Matematicas)
#[1] 0.9515484
#
#sd(Datos$Espanol)
#[1] 0.8604908
#
#> sd(Datos$Ciencias)
#[1] 1.609865
#
#CORRELACION
#nos indica si dos variables estan relacionadas
#
# si los cambios en una de las variables influyen en los cambios de la otra
#
#cor(Datos$Matematicas,Datos$Ciencias)
#[1] 0.8540788
#
#cor(Datos$Espanol,Datos$Historia)
#[1] 0.8209162
#cor(Datos$Matematicas,Datos$EdFisica)
# -0.7871627
#cuando es negaativa indica que no hay relacion
#
#
#Instalando paquetes en R
#
#EL proyecto R cuenta con mas de 4821 paquetes disponibles
# estos paquetes amplian la capacidad de calculo de R
#
#https://cran.r-project.org/
#
#install.packages("nombre del paquete",dependencies=TRUE)
#
#install.packages("rattle", dependencies = TRUE)
#install.packages("ggplot2", dependencies = TRUE)
#install.packages("scales", dependencies = TRUE)
#install.packages("MASS", dependencies = TRUE)
#install.packages("tree", dependencies = TRUE)
#install.packages("rpart", dependencies = TRUE)
#install.packages("e1025", dependencies = TRUE)
#install.packages("kknn", dependencies = TRUE)
#install.packages("randomForest", dependencies = TRUE)
#install.packages("class", dependencies = TRUE)
#
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
#CLUSTERING JERARQUICO
#
#Utilizando el metodo "complete" usando la agregacion del salto maximo
#
#

#setwd("C:/Users/emili/Desktop/VACACIONES 2021/MACHINE LEARNING")
#Datos <- read.table("EjemploEstudiantes.csv",header=TRUE,sep=";",dec=",",row.names=1)
#Datos
#modeloa <- hclust(dist(Datos),method = "complete")
#plot(modeloa)
#plot(modeloa,hang = -1)

#la siguiente instruccion separa los closters usando 3
#rect.hclust(modeloa,k=3,border="red")
#
#
#
#
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
