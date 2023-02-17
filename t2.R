"
#instruccion 1
pi * 2^3 - sqrt(4)
#instruccion 2
abs(12-17*2/3-9)
#instruccion 3
factorial(4)
#instruccion 4
log(2,10)
#instruccion 5
log(2)
#instruccion 6
exp(0.6931472)

#EJERCICIOS 2
y <- 10
z <- pi
x <- (1+y)/(1+2*(z^2))
x
#EJERCICIOS 3
x_val <- -10
y_val <- pi
z_val <- sqrt((x_val^2)+(y_val^2))
z_val


#EJERCICIOS 4
x <- c(3, -5, 31, -1, -9, 10, 0, 18)
x
y <- c(1, 1, -3, 1, -99, -10, 10, -7)
y
#DATOS Y
#media
mean(y)
#varianza
var(y)
#raíz cuadrada 
sqrt(y)
#desviación estándar
sd(y)
##
#DATOS X
#media
mean(x)
#varianza
var(x)
#raíz cuadrada 
sqrt(x)
#desviación estándar
sd(x)
#
#CORRELACION ENTRE X  Y
cor(x,y)
"
#ACT

x <- c(3, -5, 31, -1, -9, 10, 0, 18)
x
y <- c(1, 1, -3, 1, -99, -10, 10, -7)
y
x[2:7]

x <- c(3, -5, 31, -1, -9, 10, 0, 18)
x
x[x>0 & (x%%2==0)]
negativo <- x%%2==0
negativo
positivo <- x>0
positivo
x[positivo & negativo]
