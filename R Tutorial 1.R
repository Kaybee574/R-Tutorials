#Task Name: Mathematical Statistics R Tutorial 1
#Student Name: Karabo Siyabonga Mgwenya
#Student Number: g24m5008

#1.a.i
(23.4+9)*1.6
#1.a.ii
(74+5)/(2*3)^4
#1.a.iii
3-exp(1)^log(3)
#1.a.iv
5+((2/18)-1)/3
#1.a.v
cos((3*pi)+1)
#i.a.vi
12-(sqrt(12))^2
#1.b. 3-exp(1)^log(3)=0 and 12-(sqrt(12))^2=0. R is providing accurate answers
#1.c.
round((5+((2/18)-1)/3),digits=4)
#2
count_to15 <- 1:15
count_to15
#3
symbols <- c(rep("+",14),rep("!",8),rep("&",12),rep("%",4))
symbols
#4
count_by51 <- seq(from =51,to=510, by=51)
count_by51
#5.a
p<-2
q<-1/4
x<- (-p/2) +sqrt((p^2/4)-q)
x
#5.b
p<-q<-1
x<- (-p/2) +sqrt((p^2/4)-q)
#The warning message tells us that the mathematical operation( the square root of a negative number) led to an undefined result.
#6.a
gas <- c(65311,65624,65908,66219,66499,66821,67145,67447)
gas
#6.b
head(gas)
#The head() function returns the first few observations of a data structure, by default, it shows the first 6 rows, in this case we get the first 6 recorded mileage values from the 'gas' vector.
tail(gas)
#The tail() function returns the last few observations of a data structure, by default, it shows the last 6 rows, in this case we get the last 6 recorded mileage values from the 'gas' vector.
#7
months<-c(29,63,7,23,84,10,9)
years<-months/12
years
#8
rep(x=seq(from=20,to=5,by=-5),times=c(1,2,3,4))
#9
help('diff')
#The 'diff()' function returns suitably lagged and iterated differences( it calculates the differences between consecutive elements in a vector)
#Usage:
v <-c(5,90,45,12,67,34,78,56,16,23)
differences<-diff(v)
differences
#10
commute<-c(17,16,20,24,22,15,21,15,17,22)
commute
#10.a
#The maximum
maximum<-max(commute)
maximum
#The minimum
minimum<-min(commute)
minimum
#The average
average<-mean(commute)
average
#10.b
indices<-which(commute<20)
short_commute_times<-commute[indices]
short_commute_times
#10.c
commute[which(commute== 15)]<-18
commute
#10.d
commute_2<-c(18,21,16,14,21)
commute<-append(commute,commute_2)
commute
#10.e
maximum<-max(commute)
maximum
average<-mean(commute)
average
minimum<-min(commute)
minimum
#11
largest<-max(2.2222e12,10000000,4.6e1,3.1e6)
largest
#The 'e' symbol represents scientific notation, it indicates that the number following 'e' is the exponent of 10 by which the preceding value should be multiplied
#12
string1<-"R rules!"
string2<-"r rules!"
string1==string2
#R is case sensitive, the strings are not the same due to the different capitalization
#13
#My friend encountered an error because the 'dplyr' package is not installed. They can fix this by installing and loading the 'dplyr' package
install.packages("dplyr")
