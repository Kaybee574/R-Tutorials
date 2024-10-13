#Task Name: R Tutorial 11
#Name:Karabo Siyabonga
#Surname:Mgwenya
#Student No.:g24m5008

#1.a)
dhyper(x=3,5,5,3)
#The output in R is: 0.08333333

#1.b)
r<- 5
n<- 5
N<- 10
E_x<- r*n/N
E_x
#The output in R is: 2.5

#1.c)
Var_Y<- n*(r/N)*((N-r)/N)*((N-n)/(N-1))
Var_Y
#The output in R is:0.6944444

#2
dhyper(x=0,m=4,n=6,k=5)
#The output in R is:0.02380952

#3.a)
dhyper(x=1,2,4,3)
#The output in R is:0.6

#3.b)
1-dhyper(x=0,2,4,3)
#The output in R is:0.8

#3.c)
dhyper(x=0,2,4,3)+dhyper(x=1,2,4,3)
#The output in R is:0.8