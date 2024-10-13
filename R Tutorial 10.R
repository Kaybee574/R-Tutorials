#Task Name: R Tutorial 10
#Name:Karabo Siyabonga
#Surname:Mgwenya
#Student No.:g24m5008

#1.Y=# of trials before a productive well is found
#Y~NB(r=2,p=0.2)
#P(X=3-2)=P(X=1)
dnbinom(1,3,0.2)
#The output in R is:0.0192

#2.a
#Y=# of trials before finding positives
#Y~NB(r=3,p=0.4)
#P(X=10-3)=P(X=7)
dnbinom(7, 3,0.4 )
#The output in R is:0.06449725

#2.b
#r=3,p=0.4
#E(20X)=20E(X)
#20(r/p)
E_twenty_X<-20*(3/0.4)
E_twenty_X
#The expected value is:150


#Variance
#Var(20X)=(20)^2Var(x)
#(20^2)(r(1-p)/p^2)
Var_X<-(20^2)*((3*(1-0.4))/(0.4)^2)
Var_X
#The variance is:4500


#3.Y=# of trials before the first non-defective engine is found


#3.a)Y~NB(r=1,p=0.9)
dnbinom(1,1,0.9)
#The output in R is:0.09

#3.b)Y~NB(r=3,p=0.9)
dnbinom(2,3,0.9)
#The output in R is:0.04374

#3.c)Y~NB(r=3,p=0.9)
pnbinom(2,3,0.9)
#The output in R is:0.99144

#3.d)
mean_first_non_defective <- 1 /0.9
mean_first_non_defective
#The mean is:1.111111

variance_first_non_defective <- (1 - 0.9) / (0.9^2)
variance_first_non_defective
#The variance is:0.1234568

#3.e)
mean_third_non_defective <- 3 / 0.9
mean_third_non_defective
#The mean is:3.333333

variance_third_non_defective <- 3* (1 - 0.9) / (0.9^2)
variance_third_non_defective
#The variance is:0.3703704

#3.f)
prob_at_least_two_more <- pgeom(1, prob = 0.9, lower.tail = FALSE)
prob_at_least_two_more
#The output in R is:0.01