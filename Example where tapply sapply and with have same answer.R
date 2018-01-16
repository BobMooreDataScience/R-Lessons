set.seed(2)
x <- c(rnorm(1:100,3,2))
y <- c(rnorm(1:100,2,1))
mydata <- data.frame(x,y)

Tapply_Example <- tapply(mydata$y,mydata$x,mean)
Sapply_Example <- sapply(split(mydata$y,mydata$x),mean)
With_Example <- with(mydata,tapply(y,x,mean))

head(Tapply_Example)
head(Sapply_Example)
head(With_Example)