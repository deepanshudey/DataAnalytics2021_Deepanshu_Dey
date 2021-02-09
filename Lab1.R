
library(MASS)

boxplot(Auto$mpg)
str(Auto)
plot(Auto$cylinders,Auto$mpg)
install.packages("gglpot2")
library("ggplot2")
ggplot(data=Auto,aes(x=cylinders,y=mpg))+geom_point()

ggplot(data=Auto,aes(x=cylinders,y=year))+geom_boxplot()

ggplot(data=Auto,aes(x=cylinders,y=mpg))+geom_jitter()









days <- c('Mon','Tue','Wed','Thurs','Fri','Sat','Sun') 
temp <- c(28,30.5,32,31.2,29.3,27.9,26.4)
snowed <- c('T','T','F','F','T','T','F')
help("data.frame")


RPI <- data.frame(days,temp,snowed)



head(RPI)

str(RPI)

summary(RPI)


RPI[1,]




RPI[,1]








########################################################################
data1 <- read.csv(file.choose(),header = T)
str(data1)
data2 <- data1[-1,]

summary(data2)

view(data1)


attach(data1)
fix(data2)

EPI<-data1$EPI


stem(EPI)


tf <- is.na(EPI)
E <- EPI[!tf] 


E


hist(E)






##########################################################################


print(getwd())

data2 <- read.csv("2010EPI_data.csv",skip=1,header = T)
View(data2)
attach(data2)
str(data2)
EPI
DALY

#Remove NA
tf <- is.na(data2)
data2 <- data2[!tf] 


fix(data2)
hist(EPI1)

#summary
summary(EPI)


fivenum(EPI,na.rm=TRUE)
#pdf(file = 'Plots1.pdf' )
#histogram
hist(EPI, seq(30., 95., 1.0), prob=TRUE)

lines(density(EPI,na.rm=TRUE,bw=1.)) 

rug(EPI)

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE) 


par(pty="s") 
#quantile plots
qqline(EPI)
qqnorm(EPI)



x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)


qqnorm(EPI)

boxplot(EPI,DALY)

qqplot(EPI,DALY)



dev.off()




########### EXCERCISE 2 ######################



EPILand<-EPI[!Landlock]
#pdf(file = 'Plots2.pdf' )

Eland <- EPILand[!is.na(EPILand)]
hist(Eland)
hist(Eland, seq(30., 95., 1.0), prob=TRUE)

summary(Eland)


fivenum(Eland,na.rm=TRUE)


EPIRegion_Carribean <- data1[data1$GEO_subregion %in% c('Caribbean'),]
print(EPIRegion_Carribean)

EPIRegion_Asia <- data2[data2$EPI_regions %in% c('South Asia'),]
print(EPIRegion_Asia)


data3 <- read.csv("2010EPI_data",skip=1,header = T)
dev.off()


data3 <- read.csv("water-treatment.csv",header = T)
print(data3)


View(data3)

attach(data3)

str(data3)
summary(data3)
print(nrow(dfnew))
#x <- is.na(data3)
#dfnew[] <- lapply(data3, gsub, pattern="\\?", replacement="")
data3[data3=="?"]<- NA

dfnew<-na.omit(data3)
print(dfnew)
nrow(dfnew)

#summary
fivenum(dfnew,na.rm=TRUE)


#histogram
hist(dfnew$COND.D)
View(dfnew)


hist(dfnew$SSV.E)
#quantile plots
qqline(dfnew$COND.D)
qqnorm(dfnew$COND.D)



x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)




qqnorm(dfnew$COND.D)

#boxplot
boxplot(COND.D,COND.P)

