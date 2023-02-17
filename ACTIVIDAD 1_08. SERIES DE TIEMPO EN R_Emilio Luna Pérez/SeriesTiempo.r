#NIVIELES ANUALES DEL LAGO HURON (1875-1972)
#data(LakeHuron)
#LakeHuron
#plot(LakeHuron,type="o",col="red")
#
#
#144 PASAJEROS EN UNA LINEA INTERNACIONAL DE 1949 A 1960
#library(itsmr)
#AirPassengers
#plot(AirPassengers,type="o",col="red")
#
#airpass<- ts(airpass,start=c(1949,1),freq=12)
#plot(airpass,type="o",col="red")
#
#
#
#
#NIVEL DE LLUVIA EN LOS ANGELES
#install.packages ('TSA', dependencies=TRUE) 
#library(TSA)
#data(larain)
#larain
#plot(larain,ylab='Inches',xlab='Year',type="o")
#
#
#
#PROCESO QUIMICO
#
#
#data(color)
#color
#plot(color,ylab='Color Property',xlab='Batch',type="o")
#
#
#ABUNDANCIA DE LIEBRE CANADIENSE
#data(tempdub)
#tempdub
#plot(tempdub,ylab='Temperatura',type="o")
#
#
#
#PROMEDIO DE TEMPERATURA
#data(hare)
#hare
#plot(hare,ylab='Abundancia',xlab='Year',type="o")
#
#
#
#
#MUERTES ACCIDENTALES EN ESTADOS UNIDOS
#install.packages ('itsmr', dependencies=TRUE) 
#library(itsmr)
#deaths
#deaths<- ts(deaths,start=c(1973,1),freq=12)
#plot(deaths,type="o",col="red")
#res <- HoltWinters(deaths)
#plot(res)
#predict(res,n.ahead = 24)
#plot(deaths,xlim=c(1973,1980))
#lines(predict(res,n.ahead = 48,col=2))
#