#Numero 3
data(Orange)
Orange

# a) a)	Realice la gr�fica de dispersi�n para las variables edad vs 
# circunferencia; indicadas por "+".

pru3<-Orange[Orange$Tree==3,]
pru3

#Grafica de dispersion
plot(pru3$age,pru3$circumference,
     pch=3,main="Comparativa entre edad vs circunferencia",
     xlab = "Edad",ylab="Circunferencia",
     font = 4,ylim = c(0,160))


# b)	Realice la gr�fica con l�nea continua, 
# mostrada en color azul 

plot(pru3$age,pru3$circumference,
     pch=3,main="Comparativa entre edad vs circunferencia",
     xlab = "Edad",ylab="Circunferencia",
     font = 4,
     ylim = c(0,160), type="l",col="blue")

# c) Realice la regresi�n lineal correspondiente, 
# grafique e incluya una leyenda con la ecuaci�n del modelo ajustado. 
# Incluya la prueba de significancia del modelo as� como el ajuste obtenido.

reg.l3<- lm(pru3$circumference~pru3$age,data = pru3)
reg.l3

summary(reg.l3) #modelo significativo, con un 97.65%
plot(pru3$age,pru3$circumference,main="Comparativa entre edad vs circunferencia",
     xlab = "Edad",ylab="Circunferencia",
     font = 4,ylim = c(0,160))
abline(reg.l3,col="blue")
par(font=4)
legend( x = "topleft",                             # Posici�n
        legend = c("19.20354 + 0.08111x"), # Textos de la leyenda
        inset = 0.05,
        title ="Leyenda",lty = c(1),                            # Tipo de l�neas
        col = c("blue"),           # Colores de las l�neas
        lwd = 1, cex=.7)                                    #Ancho de la linea

