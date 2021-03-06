data("iris")
#View(iris)
iris
mean(iris$Sepal.Width)

#b) Media de la anchura de s�palo cuando la anchura del p�talo es superior a 1.2.

attach(iris)
iris[Sepal.Width >= 1.2,2]
n<-iris[Sepal.Width>= 1.2,2]

length(n)
suma<-0
for (i in 1:length(n)) {
  suma<- suma+n[i]
  media<-suma/length(n)
}
media

# c) Media de la anchura de s�palo agrupada por especie.

flr1<-iris[iris$Species=="setosa",]
flr2<-iris[iris$Species=="versicolor",]
flr3<-iris[iris$Species=="virginica",]
mean(flr1$Petal.Width)
mean(flr2$Petal.Width)
mean(flr3$Petal.Width)

# d) Realice un boxplot comparativo que muestre las tres especies de iris agrupadas por ancho del s�palo.

boxplot(formula = Sepal.Width ~ Species, data = iris , 
        col = c("pink", "blue1", "green3"),
        xlab = "Especies",ylab="Ancho del s�palo", font = 3,
        main="Comparativo de tres especies de iris")

