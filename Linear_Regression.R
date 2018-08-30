#Reading "cars" dataset
head(cars)

#Step1
#Graphical analysis of data

#ScatterPlot
scatter.smooth(x = cars$speed, y = cars$dist, main="Dist ~ Speed", xlab = "speed", ylab = "dist")

boxplot(x = cars$speed)

par(mfrow=c(1, 2))
plot(density(cars$speed), main="Density Plot: Speed", ylab="Frequency", sub=paste("Skewness:", round(e1071::skewness(cars$speed), 2)))
polygon(density(cars$speed), col="green")

plot(density(cars$dist), main="Density Plot: Distance", ylab="Frequency", sub=paste("Skewness:", round(e1071::skewness(cars$dist), 2)))
polygon(density(cars$dist), col="blue")

cor(cars$speed, cars$dist)

#Building a linear model
linearMod <- lm(dist ~ speed, data=cars)
