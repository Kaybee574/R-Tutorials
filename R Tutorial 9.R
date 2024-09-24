#Task Name: R Tutorial 9
#Name:Karabo Siyabonga
#Surname:Mgwenya
#Student No.:g24m5008

#1.Y=# of trials before the first success
#y~geo(p=0,28)

#1.a) P(Y=3)=P(X+1=3)=P(X=2)
p<-0.28
dgeom(x=2,prob=p)
#The output in R is: 0.145152

#1.b) P(Y=2)=P(X+1=2)=P(X=1)
dgeom(x=1,prob = p)
#The output in R is: 0.2016

#1.c) P(Y=1)=P(X+1=1)=p(X=0)
dgeom(x=0,prob = p)
#The output in R is: 0.28

#1.d) P(Y<=3)=P(X+1<=3)=P(X<=2)
pgeom(q=2,prob = p)
#The output in R is: 0.626752

#1.e) P(Y>3)=P(Y>=4)=1-P(Y<=3)=1-P(X+1<=3)=1-P(X<=2)
1-0.626752
#The output in R is: 0.373248

#1.f)
set.seed(1234)  
X <- rgeom(n=100000, p)
X

#1.g) X+1=Y Y=X-1
Y<-X+1
Y

#1.h)
mean_x<-(1/p)-1
mean_x
#The theoretical mean of X = 2.571429
mean_y <- 1 / p
mean_y
#The theoretical mean of Y = 3.571429

#1.i)
mean_X <- mean(X)
mean_X
#The mean of X = 2.59034
mean_Y <- mean(Y)
mean_Y
#The mean of Y = 3.59034

#1.j)
par(mfrow = c(1, 2))
barplot(table(X), main = "Distribution of X", xlab = "Number of Failures", ylab = "Frequency")
barplot(table(Y), main = "Distribution of Y", xlab = "Number of Trials", ylab = "Frequency")

#2.Y = # of trials before the first success
#Y ~ geo(p=0.2)
#2.a)P(Y=3)=P(X+1=3)=P(X=2)
p<- 0.2
dgeom(x=2, prob = p)
#The output in R is: 0.128

#2.b)P(Y=2)=P(X+1=2)=P(X=1)
dgeom(x=1,prob = p)
#The output in R is: 0.16

#2.c)E[Y]=E[X+1]=E[X]+1=(1/p)+1
(1/p)+1
#The driller can expect to drill 6 holes

#2.d.i)
n<-10
#P(Y=3)
dbinom(3,n,p)
#The probability that he has three successful wells = 0.2013266

#2.d.ii)P(Y=0)
dbinom(0,n,p)
#The probability that he will fail to find a productive well = 0.1073742