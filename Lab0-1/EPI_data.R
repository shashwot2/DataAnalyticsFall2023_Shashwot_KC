EPI_data <- read.csv("./2010EPI_data.csv")
names(EPI_data) <- as.matrix(EPI_data[1,])
EPI_data <- EPI_data[-1,]
EPI_data[] <- lapply(EPI_data, function(x)type.convert(as.character(x)))
View(EPI_data)
attach(EPI_data)
fix(EPI_data)
EPI
tf <- is.na(EPI)
E <- EPI[!tf]
summary(EPI)

fivenum(EPI,na.rm=TRUE)
stem(EPI)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw=1.))
rug(EPI)
hist(EPI, seq(30.,95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw="SJ"))

DALY
tf <- is.na(DALY)
E <- DALY[!tf]
summary(DALY)
fivenum(DALY, na.rm=TRUE)
stem(DALY)

boxplot(EPI,DALY)
qqplot(EPI, DALY)