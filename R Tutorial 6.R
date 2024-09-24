#Task Name: R Tutorial 6
#Name:Karabo Siyabonga
#Surname:Mgwenya
#Student No.:g24m5008

#1
install.packages("datasets")
library(datasets)
data(mtcars)


#2
hist(mtcars$mpg, breaks=seq(from=10, to=35, by=5), main="Frequency Histogram of Miles Per Gallon", xlab="Miles Per Gallon(mpg)", ylab="Frequency", col="lightblue")

#3
plot(density(mtcars$disp), main="Density Plot of Displacement", xlab="Displacement in meters(m)", ylab="Density")

#4.a
mean(mtcars$qsec)
#The mean for qsec is: 17.84875
var(mtcars$qsec)
#The variance of qsec is: 3.193166
sd(mtcars$qsec)
#The standard deviation of qsec is: 1.786943

#4.b
range(mtcars$qsec)
#The output in R is: [1] 14.5 22.9
diff(range(mtcars$qsec))
#The output in R is: [1] 8.4
IQR(mtcars$qsec)
#The inter-quartile range of qsec is: 2.0075
median(mtcars$qsec)
#The median of qsec is: 17.71

#4.c
quantile(mtcars$qsec, 0.60)
#The 60th percentile of qsec is: 18.18 

#4.d
boxplot(mtcars$qsec, main="Boxplot of Qsec", col="blue",horizontal = FALSE,ylab="Qsec")
