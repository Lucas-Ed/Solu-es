# Formação Permanente FHO Uniararas no dia 08/05/2021
# Com o Professor Danilo Covaes Nogarotto

#----------------COMANDOS BÁSICOS NO R---------------------#
x = 8
x <- 3

x <- "Olá"
x

2<6
4<2

0.88 -> x
x

y <- 1:5
y

z <- c(0, 3, 2, 5.5, 8)
z

w = c(99, z, x)
w

w <- 3
w

# indica o diretório
setwd("C:/Users/Usuario/Dropbox/UNIARARAS/2021/Formação Permanente")


ind <- read.table("03exemplo_industria.txt", head = T)



help(read.table)

# nomes das colunas
names(ind)
# traz as primeiras linhas
head(ind)


# histograma
hist(ind$CIF, nclass = 3, main = "Histograma",
     xlab = "CIF", ylab = "Frequencia", col=4)


a <- 1:20
b <- a^2

plot(a, b, type = "l")
lines(rev(a),b)

plot(a, b, pch=3, lwd = 4, col=13)

# Gráfico de barras
x <- c(1,2,3,4,5,6,7)
barplot(x, names.arg = c("a","b","c","d","e","f","g"))


#Estatística descritiva

x <- mean(ind$CIF)

median(ind$CIF)

v <- var(ind$CIF)

sd(ind$CIF)

sqrt(v)

max(ind$C)
min(ind$C)

range(ind$CIF)

amplitude <- max(ind$C) - min(ind$C)
amplitude


summary(ind$CIF)


ind[,c(2,4)]


summary(ind[ ,2:4])


# Correlação e regressão

cor(ind[,2:4])

#gráfico de dispersão
plot(ind$HMOD, ind$CIF, pch=16)


reg <- lm(CIF ~ HMOD, data = ind)

summary(reg)


plot(ind$HMOD, ind$CIF, pch=16)
abline(reg)


names(reg)

reg$coef


# valor previsto do CIF quando o HMOD é 9

previsto <- reg$coef[1] + reg$coef[2]*9


plot(ind$HMOD, ind$CIF, pch=16)
abline(reg)
abline(v=9, lty = 3)
abline(h=previsto, lty=3, col=2)



# função para cálculo da nota

nota <- function(p,a) { p*0.7 + a*0.3 }

nota(5,7)


nota(7.5, 10)





#install.packages("maps")
library(maps)
#install.packages("mapproj")
library(mapproj)
#install.packages("maptools")
library(maptools)
#install.packages("rgdal")
library(rgdal)

map(regions=sov.expand(c("Brazil","Bolivia","Argentina","Uruguay","Paraguay","Chile",	
                         "Peru","Colombia","Ecuador","Venezuela","France","Panama","Costa Rica",	
                         "Guyana","Suriname","Nicaragua","Honduras","El Salvador")),
    xlim=c(-85,-30),ylim=c(-60,13), 
    fill=T, col="grey95",xlab="longitude",ylab="latitude")
map.axes()
map.scale(x=-60,ratio=F,cex=0.7)




m <- map("world","Brazil", fill=T, col="grey95")
map(,,add=T)
map.axes()
map.scale(ratio=F, cex=0.7)
abline(h=0, lty = 2)
map.grid(m, nx = 5, ny = 5, col="grey50", font=1, cex=0.7 , pretty = T)

#Fazer coração

dat<- data.frame(t=seq(0, 2*pi, by=0.1) )
xhrt <- function(t) 16*sin(t)^3
yhrt <- function(t) 13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t)
dat$y=yhrt(dat$t)
dat$x=xhrt(dat$t)
with(dat, plot(x,y, type="l",col=2))


















