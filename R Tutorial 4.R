#Task Name:R Tutorial 4
#Name(s):Karabo Siyabonga
#Surname:Mgwenya
#Student Number:g24m5008


#1.a
install.packages("PASWR")
library(PASWR)
data("wheatUSA2004")
wheatUSA2004
#The output in R is:
#     STATES ACRES
# 1      AR   620
# 2      CA   320
# 3      CO  1700
# 4      DE    47
# 5      GA   190
# 6      ID   700
# 7      IL   900
# 8      IN   440
# 9      KS  8500
# 10     KY   380
# 11     MD   145
# 12     MI   640
# 13     MS   135
# 14     MO   930
# 15     MT  1630
# 16     NE  1650
# 17     NY   100
# 18     NC   460
# 19     OH   890
# 20     OK  4700
# 21     OR   780
# 22     PA   135
# 23     SC   180
# 24     SD  1250
# 25     TN   280
# 26     TX  3500
# 27     VA   180
# 28     WA  1750
# 29     WI   225
# 30  Other  1105

#1.b
row.names(wheatUSA2004)<-wheatUSA2004$STATES
wheatUSA2004
#The output in R is:
#       STATES ACRES
# AR        AR   620
# CA        CA   320
# CO        CO  1700
# DE        DE    47
# GA        GA   190
# ID        ID   700
# IL        IL   900
# IN        IN   440
# KS        KS  8500
# KY        KY   380
# MD        MD   145
# MI        MI   640
# MS        MS   135
# MO        MO   930
# MT        MT  1630
# NE        NE  1650
# NY        NY   100
# NC        NC   460
# OH        OH   890
# OK        OK  4700
# OR        OR   780
# PA        PA   135
# SC        SC   180
# SD        SD  1250
# TN        TN   280
# TX        TX  3500
# VA        VA   180
# WA        WA  1750
# WI        WI   225
# Other  Other  1105

#1.c
wheatUSA2004$HA <-(wheatUSA2004$ACRES)* 0.4047
wheatUSA2004
#The output in R is:
#       STATES ACRES        HA
# AR        AR   620  250.9140
# CA        CA   320  129.5040
# CO        CO  1700  687.9900
# DE        DE    47   19.0209
# GA        GA   190   76.8930
# ID        ID   700  283.2900
# IL        IL   900  364.2300
# IN        IN   440  178.0680
# KS        KS  8500 3439.9500
# KY        KY   380  153.7860
# MD        MD   145   58.6815
# MI        MI   640  259.0080
# MS        MS   135   54.6345
# MO        MO   930  376.3710
# MT        MT  1630  659.6610
# NE        NE  1650  667.7550
# NY        NY   100   40.4700
# NC        NC   460  186.1620
# OH        OH   890  360.1830
# OK        OK  4700 1902.0900
# OR        OR   780  315.6660
# PA        PA   135   54.6345
# SC        SC   180   72.8460
# SD        SD  1250  505.8750
# TN        TN   280  113.3160
# TX        TX  3500 1416.4500
# VA        VA   180   72.8460
# WA        WA  1750  708.2250
# WI        WI   225   91.0575
# Other  Other  1105  447.1935

#1.d 
wheatUSA2004<-wheatUSA2004[,-which(names(wheatUSA2004)=="STATES")]
wheatUSA2004
#The output in R is:
#       ACRES        HA
# AR      620  250.9140
# CA      320  129.5040
# CO     1700  687.9900
# DE       47   19.0209
# GA      190   76.8930
# ID      700  283.2900
# IL      900  364.2300
# IN      440  178.0680
# KS     8500 3439.9500
# KY      380  153.7860
# MD      145   58.6815
# MI      640  259.0080
# MS      135   54.6345
# MO      930  376.3710
# MT     1630  659.6610
# NE     1650  667.7550
# NY      100   40.4700
# NC      460  186.1620
# OH      890  360.1830
# OK     4700 1902.0900
# OR      780  315.6660
# PA      135   54.6345
# SC      180   72.8460
# SD     1250  505.8750
# TN      280  113.3160
# TX     3500 1416.4500
# VA      180   72.8460
# WA     1750  708.2250
# WI      225   91.0575
# Other  1105  447.1935

#1.e
wheatUSA2004<-wheatUSA2004[order(-wheatUSA2004$ACRES),]
wheatUSA2004
#The output in R is:
#       ACRES        HA
# KS     8500 3439.9500
# OK     4700 1902.0900
# TX     3500 1416.4500
# WA     1750  708.2250
# CO     1700  687.9900
# NE     1650  667.7550
# MT     1630  659.6610
# SD     1250  505.8750
# Other  1105  447.1935
# MO      930  376.3710
# IL      900  364.2300
# OH      890  360.1830
# OR      780  315.6660
# ID      700  283.2900
# MI      640  259.0080
# AR      620  250.9140
# NC      460  186.1620
# IN      440  178.0680
# KY      380  153.7860
# CA      320  129.5040
# TN      280  113.3160
# WI      225   91.0575
# GA      190   76.8930
# SC      180   72.8460
# VA      180   72.8460
# MD      145   58.6815
# MS      135   54.6345
# PA      135   54.6345
# NY      100   40.4700
# DE       47   19.0209

#1.f
states_in_top10<-wheatUSA2004[1:ceiling(0.1*nrow(wheatUSA2004)),]
states_in_top10
#The output in R is:
#     ACRES      HA
# KS  8500 3439.95
# OK  4700 1902.09
# TX  3500 1416.45


#1.g
write.table(wheatUSA2004, file="wheatUSA.txt",row.names = TRUE)

#1.h
bottom10<-wheatUSA2004[(nrow(wheatUSA2004)-floor(0.1*nrow(wheatUSA2004))+1):nrow(wheatUSA2004),]
total_surface_area_for_bottom10<-sum(bottom10$ACRES)
total_surface_area_for_bottom10
#The total harvested surface area in acres for the bottom 10% = 282

#2.a
pressure<-read.csv("pressure.csv")
pressure
#The output in R is:
#     temperature pressure
# 1            0   0.0002
# 2           20   0.0012
# 3           40   0.0060
# 4           60   0.0300
# 5           80   0.0900
# 6          100   0.2700
# 7          120   0.7500
# 8          140   1.8500
# 9          160   4.2000
# 10         180   8.8000
# 11         200  17.3000
# 12         220  32.1000
# 13         240  57.0000
# 14         260  96.0000
# 15         280 157.0000
# 16         300 247.0000
# 17         320 376.0000
# 18         340 558.0000
# 19         360 806.0000

#2.b
plot(pressure$temperature, pressure$pressure, xlab="Temperature (°C)", ylab="Vapour Pressure (mmHg)",main="Relationship between Temperature(degrees Celsius)\n and Vapour Pressure of Mercury(millimetres of mercury)")
#2.c
plot(pressure$temperature, pressure$pressure, xlab="Temperature (°C)", ylab="Vapour Pressure (mmHg)", main="Relationship between Temperature(degrees Celsius)\n and Vapour Pressure of Mercury(millimetres of mercury)", col="orange", pch=15)
#2.d
plot(pressure$temperature, pressure$pressure, xlab="Temperature (°C)", ylab="Vapour Pressure (mmHg)",main="Relationship between Temperature(degrees Celsius)\n and Vapour Pressure of Mercury(millimetres of mercury)",type="l",lty="dashed")
#2.e.i
plot(pressure$temperature, pressure$pressure, xlab="Temperature (°C)", ylab="Vapour Pressure (mmHg)", main="Relationship between Temperature(degrees Celsius)\n and Vapour Pressure of Mercury(millimetres of mercury)", type="n")
#2.e.ii
lines(pressure$temperature, pressure$pressure, col="blue", lty="dotted")
#2.e.iii
points(pressure$temperature, pressure$pressure, col="green", pch=8)
#2.e.iv
legend("topleft", legend=c("The pressure data as a line", "The pressure data as points"), col=c("blue", "green"), pch=c(16))
    