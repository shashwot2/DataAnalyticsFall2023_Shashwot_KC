multivariate <- read.csv("multivariate.csv")
attach(multivariate)
library(dplyr)
library(ggplot2)
mm <- lm(Homeowners~Immigrant)
head(multivariate)
help(lm)
summary(mm)$coef
plot(Homeowners~Immigrant)
help(abline)
abline(mm)
abline(mm, col=2, lwd=3)
newImmigrantdata <- data.frame(Immigrant =c(0,20))
help("predict")
mm %>% predict(newImmigrantdata)
attributes(mm)
mm$coefficients

#Creating Plots
#mtcars
help(mtcars)
plot(mtcars$wt,mtcars$mpg) #weight to miles per gallon
qplot(wt, mpg, data = mtcars)
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()
plot(pressure$temperature, pressure$pressure, type="l")
points(pressure$temperature, pressure$pressure)

lines(pressure$temperature,pressure$pressure/2, col="red")
points(pressure$temperature,pressure$pressure/2, col="blue")
qplot(pressure$temperature,pressure$presssure, geom="line")
qplot(temperature,pressure, data = pressure, geom="line")
ggplot(pressure, aes(x=temperature,y= pressure)) + geom_line() + geom_point()

#Creating bar Graphs
help(BOD)
View(BOD)
barplot(BOD$demand, names.org=BOD$Time)
table(mtcars$cyl)
barplot(table(mtcars$cyl))
#Bar graph of counts
qplot(factor(cyl),data=mtcars)
ggplot(mtcars, aes(x=factor(cyl))) + geom_bar()

#Creating Histograms
# View the distribution of one-dimensional data with a histogram
hist(mtcars$mpg)
hist(mtcars$mpg, breaks = 10)
hist(mtcars$mpg, breaks = 5)
hist(mtcars$mpg, breaks = 12)
qplot(mpg, data = mtcars, binwidth=4)
ggplot(mtcars, aes(x=mpg)) + geom_histogram(binwidth=4)
ggplot(mtcars, aes(x=mpg)) + geom_histogram(binwidth=5)

#Creating Box-Plot
help(ToothGrowth)
plot(ToothGrowth$supp, ToothGrowth$len)
boxplot(len ~ supp, data = ToothGrowth)
boxplot(len ~ supp + dose, data = ToothGrowth)
#with GGplot
qplot(ToothGrowth$supp, ToothGrowth$len, geom="boxplot")
ggplot(ToothGrowth, aes(x=supp, y=len)) + geom_boxplot()
ggplot(ToothGrowth, aes(x=interaction(supp, dose), y=len)) + geom_boxplot()
