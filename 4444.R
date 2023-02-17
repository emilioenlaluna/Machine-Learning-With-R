#¿QE HAY DETRAS DE TODO ESTO?
#¿COMO MANEJA R INTERNAMENTE?
#
#VARIABLES GLOBALES DE ASIGNACION
#
#ES POSIBLE ASIGNAR UNA VARIABLES GLOBALMCON EL OPERADOR <- O EL =
#
#tasa.interes <- 0.3
#tasa.interes
#balance.inicial <- 3000
#balance.final <-balance.inicial * tasa.interes + balance.inicial
#tasa.interes <- 0.02
#n <- 10
#p <- 150000
#pago <- p * tasa.interes / ( 1 - ( 1 + tasa.interes)^(-n))
#pago
#
#indexando un vector
#
#x <- c(90,98,-10,22,-9,75,96,2,789)
#x[1]
#x[5]
#x[1:5]
#con los indices negativos se establece cuales entradas no estaran en el resultado
#x[-1]
#x[-3]
#
#operadores  relacioneles
#
#   <, > ==, >=,<= !=
#
#a <- c(1,2,3,4,5)
#a>5
#a>=4
#a!=99
#a==99
#a==8
#a[a>4]
#b <- c(-1,2,7,45,2)
#a<b
#b[a>b]
#
#
#OPERACIONES LOGICAS
#
#   & Y | SON LOS OPERADORES LOGICO "Y" "O"
#
#
#a[a<b & a<0]
#a[a>0 | a<10]
#
#
#SELECCION CONDICIONADA EN UN VECTOR
#
#
z <- c(90,5,-9,-7-56,9,78,-8)
z
#extraemos los negativos
negative <- z<0
negative
#
#menores a 0
ceros <- z[negative]
ceros
#
#Pares
pares <- (z%%2)==0
pares
#
impres <- z[pares]
impres
#
#
par_negativo <- z[pares & negative]
par_negativo
#
#
vec <- c(-8,-95,10,230,-56,78,8)
vec2 <- c(0,89,23,-96,78,-969,45)
vec+vec2
#se suman las cantidades con la posicion de cada vector
#
#
2*vec
#se multiplica a cada elemento en el vector
#
vec-5
#se le resta 5 a cada elemento
#
vec^3
#se eleva a la potencia cada elemento
vec^vec2
#
#
#VALORES AUSENTES
#
#
vector1 <- NULL  #CREA UN VECTOR SIN ELEMENTOS
vector1
zzz <- c(0,1,2,3,4,5)
1/zzz
#
#
#MATRICES
#
#SE DEFINE UNA MATRIX CON LA FUNCIONA matrix() 
matriz <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),4,3)
matriz
#
#LAS DIMENSIONES DE LA MATRIZ (NUM FILAS Y COLUMNAS) PUEDEN OBTENERSE MEDIANTE LA 
#FUNCION
# dim()
dim(matriz)
#[1] 4 3
#
#PARA LLEGAR A ELEMENTOS CONCRETOS DE UN MATRIZ
#usamos [fila,columnas]
matriz[2,3]
matriz[4,3]
#
#filas 1-2 en las columnas 2-3
matriz[1:2,2:3]
#
#columnas 1 y 3
matriz[,c(1,3)]
#
#
#TANTO MATRICES Y VECTORES USAN OPERADORES ARTIMETICOS DE LA MIMA MANERA (SUMA RESTA)
#PERO MATRIZ POR MATRIZ DEVUELVE LA MULTIPLICAION DE CADA ELEMENTO POR ELEMENTO
matriz * matriz
#MIENTRAS QUE matriz%*%matriz DEVUELVE EL PRODUCTO MATRICIAL
matriz%*%matriz
#SIN EMBARGO ESTO DA ERROR PORQUE NO SE PUDE MULTIPLICAR UNA MATRIZ DE 4X3 POR UNA MATRIZ DE 4X3
#Error in matriz %*% matriz : non-conformable arguments
matriz2 <- matrix(c(1,2,3,4,5,6),3,2)
dim(matriz2)
matriz2
res <- matriz2 %*% matriz
res
dim(res)
#
#
#APLICANDO FUNCIONES A MATRICES
#
x = matrix(data=c(1,2,3,4), nrow = 2,ncol = 2)
x
x = matrix(c(1,2,3,4),2,2)
x
num = matrix(c(1,2,3,4),byrow = TRUE)
num
sqrt(num)
num
num^2
num
#
#COMBINANDO MATRICES
#
#LAS FUNCIONES cbind() y rbind() se usan para unir dos o mas vectores
#por columnas o filas
#
m1 <- matrix(c(1,2,3,4,5,6,7,8,9,10),2,5)
m1
cbind(c(4,76),m1[,4])
m1
m2 <- matrix(rep(10,20),4,5)
m2
m3 <- rbind(m1[1,],m2[3,])
m3
