


#1.a
A<-matrix(data=c(7,4),nrow=4,ncol=5,byrow=TRUE)
A
#The output in R is:      [,1] [,2] [,3] [,4] [,5]
#                   [1,]    7    4    7    4    7
#                   [2,]    4    7    4    7    4
#                   [3,]    7    4    7    4    7
#                   [4,]    4    7    4    7    4
#1.b
B<-matrix(data=c(16,5,12,9,22,4),nrow = 2,ncol = 3,byrow = TRUE)
B
#The output in R is:     [,1] [,2] [,3]
#                   [1,]   16    5   12
#                   [2,]    9   22    4
#1.c
C<-matrix(data = seq(from=5,to=140,by=5),nrow = 7,ncol = 4,byrow = FALSE)
C
# The output in R is:      [,1] [,2] [,3] [,4]
#                     [1,]    5   40   75  110
#                     [2,]   10   45   80  115
#                     [3,]   15   50   85  120
#                     [4,]   20   55   90  125
#                     [5,]   25   60   95  130
#                     [6,]   30   65  100  135
#                     [7,]   35   70  105  140
#2
flavour<-c(1,1,2,3,1,2,1,3,2,1)
f_flavour<-factor(flavour,levels = 1:3,labels = c("Chocolate","Vanilla","Strawberry"))
f_flavour
#The output in R is:[1] Chocolate  Chocolate  Vanilla    Strawberry Chocolate  Vanilla    Chocolate  Strawberry Vanilla    Chocolate 
#Levels: Chocolate Vanilla Strawberry
#3.a
barley.data<-matrix(data = c(190,8,22.0,191,4,1.7,223,80,2.0),nrow = 3,ncol = 3,byrow = TRUE)
barley.data
#The output in R is:     [,1] [,2] [,3]
#                   [1,]  190    8 22.0
#                   [2,]  191    4  1.7
#                   [3,]  223   80  2.0
#3.b
dimensions<-dim(barley.data)
dimensions
#The output in R is:[1] 3 3
#3.c
colnames(barley.data)<-c("TypeA","TypeB","TypeC")
rownames(barley.data)<-c("Navarra","Zaragoza","Madrid")
barley.data
#The output in R is:         TypeA TypeB TypeC
#                   Navarra    190     8  22.0
#                   Zaragoza   191     4   1.7
#                   Madrid     223    80   2.0
#3.d
barley.data[2,]
barley.data["Zaragoza",]
#The output in R is:TypeA TypeB TypeC 
#                   191.0   4.0   1.7 
#3.e
valencia<-matrix(data = c(215,6,2.2),nrow = 1,ncol = 3,byrow = TRUE)
valencia
barley.data<-rbind(barley.data,valencia)
rownames(barley.data)<-c("Navarra","Zaragoza","Madrid","Valencia")
barley.data
#The output in R is:          TypeA TypeB TypeC
#                   Navarra    190     8  22.0
#                   Zaragoza   191     4   1.7
#                   Madrid     223    80   2.0
#                   Valencia   215     6   2.2
#3.f

#Navarra
sum(barley.data[1,])
#The output in R is:[1] 220
#Zaragoza
sum(barley.data[2,])
#The output in R is:[1] 196.7
#Madrid
sum(barley.data[3,])
#The output in R is:[1] 305
#Valencia
sum(barley.data[4,])
#The output in R is:[1] 223.2
#Total barley produced in the region
sum(barley.data)
#The output in R is:[1] 944.9
#Subtotals for the amount of barley produced by type
#TypeA
sum(barley.data[,1])
#The output in R is:[1] 819
#TypeB
sum(barley.data[,2])
#The ouput in R is:[1] 98
#TypeC
sum(barley.data[,3])
#The output in R is:[1] 27.9
#3.g
barley.data[which(barley.data<5)]<-c(NA,NA,NA,NA)
barley.data
#The output in R is:         TypeA TypeB TypeC
#                   Navarra    190     8    22
#                   Zaragoza   191    NA    NA
#                   Madrid     223    80    NA
#                   Valencia   215     6    NA
#4.a
x<-c(1.95,2.86,3.24,2.98,5.56,2.75,2.76,3.38,3.38,3.06)
#4.b
length(x)
#The output in R is:[1] 10
#This function returns the length of the vector, the number of components in the vector
#4.c
sum(x[3],x[7],x[9:10])
#The output in R is:[1] 12.44
#4.d
sum(sort(x)[2:9])
#The output in R is:[1] 24.41
#5
A <- matrix(c(3, 4, -10, 2,
              6, -2, 3, -4,
              -4, 7, 4, 3,
              9, -3, -2, 6), nrow = 4, byrow = TRUE)
A
B<-c(6,3,-1,4)
solve(A,B)
#The output in R is :[1]  0.6600365  0.4571523 -0.2550970 -0.1798442
#6.a
u<-c(1,2,5,4)
v<-scan()
2
2
1
1
#The output in R is:Read 4 items
#6.b
component<-which(u==5)
component
#The output in R is:[1] 3
#6.c
components<-which(v>=2)
components
#The output in R is:[1] 1 2
#6.d
u-v
#The output in R is:[1] -1  0  4  3
u*v
#The output in R is:[1] 2 4 5 4
#R performs these operations element wise,it subtracts and multiplies corresponding elements of the vector
#6.e
#The vector with a small length will be repeated as long as the operation completes on the longer vector, this is called vector recycling.
u*c(u,v)
#The output in R is:[1]  1  4 25 16  2  4  5  4
#6.f
g<-1:10
g[1:3]
#The output in R is :[1] 1 2 3
#6.g
J<-seq(from=1,to=31,by=2)
c(J[1],J[3],J[8])
#The output in R is:[1]  1  5 15
#6.h
q<-c(3,0,1,6)
r<-c(1,0,2,4)
q%*%r
#The output in R is:     [,1]
#                   [1,]   29
#6.i
X<-rbind(u,v)
X
#The output in R is:  [,1] [,2] [,3] [,4]
#                   u    1    2    5    4
#                   v    2    2    1    1
#6.j
Y<-cbind(u,v)
Y
#The output in R is:     u v
#                   [1,] 1 2
#                   [2,] 2 2
#                   [3,] 5 1
#                   [4,] 4 1
#6.k
W<-X%*%Y
W
#The output in R is:   u  v
#                   u 46 15
#                   v 15 10
#6.i
inverse_of_W<-solve(W)
inverse_of_W
t(inverse_of_W)
#The output in R is:            u           v
#                       u  0.04255319 -0.06382979
#                       v -0.06382979  0.19574468

