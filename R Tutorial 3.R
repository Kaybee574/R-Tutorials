#Task Name:R Tutorial 3
#Name: Karabo Siyabonga
#Surname: Mgwenya
#Student Number: g24m5008

#--------------------------------------------------

#1.a
community<-c("Galicia","Asturias","Cantabria","Pais Vasco","Navarra","La Rioja","Aragon","Cataluna","Islas Baleares","Castilla y Leon","Madrid","Castilla-La Mancha","C. Valenciana","Region de Murcia","Extremadura","Andalucia","Islas Canarias")
wheat.surface<-c(18817,65,440,25143,66326,34214,311479,74206,7203,619858,13118,263424,6111,9500,143250,558292,100)
wheatspain<-data.frame(community,wheat.surface)
wheatspain
#The output in R is:            community wheat.surface
#                   1             Galicia         18817
#                   2            Asturias            65
#                   3           Cantabria           440
#                   4          Pais Vasco         25143
#                   5             Navarra         66326
#                   6            La Rioja         34214
#                   7              Aragon        311479
#                   8            Cataluna         74206
#                   9      Islas Baleares          7203
#                   10    Castilla y Leon        619858
#                   11             Madrid         13118
#                   12 Castilla-La Mancha        263424
#                   13      C. Valenciana          6111
#                   14   Region de Murcia          9500
#                   15        Extremadura        143250
#                   16          Andalucia        558292
#                   17     Islas Canarias           100

#----------------------------------------------------------

#1.b
max(wheatspain$wheat.surface)
#The maximum is: 619858
min(wheatspain$wheat.surface)
#The minimum is: 65
range(wheatspain$wheat.surface)
#The range is: 65 619858


#1.C
#Castilla y Leon has the largest harvested wheat surface

#1.d
wheat_surface_asc<-wheatspain[order(wheatspain$wheat.surface),]
wheat_surface_asc
#The output in R is:            community wheat.surface
#                   2            Asturias            65
#                   17     Islas Canarias           100
#                   3           Cantabria           440
#                   13      C. Valenciana          6111
#                   9      Islas Baleares          7203
#                   14   Region de Murcia          9500
#                   11             Madrid         13118
#                   1             Galicia         18817
#                   4          Pais Vasco         25143
#                   6            La Rioja         34214
#                   5             Navarra         66326
#                   8            Cataluna         74206
#                   15        Extremadura        143250
#                   12 Castilla-La Mancha        263424
#                   7              Aragon        311479
#                   16          Andalucia        558292
#                   10    Castilla y Leon        619858

#---------------------------------------------------------------

#1.e
wheat_surface_dsc<-wheatspain[order(-wheatspain$wheat.surface),]
wheat_surface_dsc
#The output in R is:            community wheat.surface
#                   10    Castilla y Leon        619858
#                   16          Andalucia        558292
#                   7              Aragon        311479
#                   12 Castilla-La Mancha        263424
#                   15        Extremadura        143250
#                   8            Cataluna         74206
#                   5             Navarra         66326
#                   6            La Rioja         34214
#                   4          Pais Vasco         25143
#                   1             Galicia         18817
#                   11             Madrid         13118
#                   14   Region de Murcia          9500
#                   9      Islas Baleares          7203
#                   13      C. Valenciana          6111
#                   3           Cantabria           440
#                   17     Islas Canarias           100
#                   2            Asturias            65

#--------------------------------------------------------

#1.f
asturias_idx<-which(wheatspain$community=="Asturias")
wheat.c<-wheatspain[-asturias_idx,]
wheat.c
#The output in R is:            community wheat.surface
#                   1             Galicia         18817
#                   3           Cantabria           440
#                   4          Pais Vasco         25143
#                   5             Navarra         66326
#                   6            La Rioja         34214
#                   7              Aragon        311479
#                   8            Cataluna         74206
#                   9      Islas Baleares          7203
#                   10    Castilla y Leon        619858
#                   11             Madrid         13118
#                   12 Castilla-La Mancha        263424
#                   13      C. Valenciana          6111
#                   14   Region de Murcia          9500
#                   15        Extremadura        143250
#                   16          Andalucia        558292
#                   17     Islas Canarias           100

#-------------------------------------------------------

#1.g
wheat.d<-rbind(wheat.c,c("Asturias",65))
wheat.d
#The output in R is:             community wheat.surface
                  # 1              Galicia         18817
                  # 3            Cantabria           440
                  # 4           Pais Vasco         25143
                  # 5              Navarra         66326
                  # 6             La Rioja         34214
                  # 7               Aragon        311479
                  # 8             Cataluna         74206
                  # 9       Islas Baleares          7203
                  # 10     Castilla y Leon        619858
                  # 11              Madrid         13118
                  # 12  Castilla-La Mancha        263424
                  # 13       C. Valenciana          6111
                  # 14    Region de Murcia          9500
                  # 15         Extremadura        143250
                  # 16           Andalucia        558292
                  # 17      Islas Canarias           100
                  # 171           Asturias            65

#----------------------------------------------------------

#1.h
wheat.e<-cbind(wheat.d,acre=round(as.numeric(wheat.d$wheat.surface)/0.4047,2))
wheat.e               
#The output in R is:             community wheat.surface       acre
                  # 1              Galicia         18817   46496.17
                  # 3            Cantabria           440    1087.23
                  # 4           Pais Vasco         25143   62127.50
                  # 5              Navarra         66326  163889.30
                  # 6             La Rioja         34214   84541.64
                  # 7               Aragon        311479  769654.06
                  # 8             Cataluna         74206  183360.51
                  # 9       Islas Baleares          7203   17798.37
                  # 10     Castilla y Leon        619858 1531648.13
                  # 11              Madrid         13118   32414.13
                  # 12  Castilla-La Mancha        263424  650911.79
                  # 13       C. Valenciana          6111   15100.07
                  # 14    Region de Murcia          9500   23474.18
                  # 15         Extremadura        143250  353965.90
                  # 16           Andalucia        558292 1379520.63
                  # 17      Islas Canarias           100     247.10
                  # 171           Asturias            65     160.61

#-----------------------------------------------------------------------

#1.i
total_harvested_surface_hec<-sum(as.numeric(wheat.e$wheat.surface))
total_harvested_surface_hec
#The total harvested surface in hectares = 2151546
total_harvested_surface_acre<-sum(as.numeric(wheat.e$acre))
total_harvested_surface_acre
#The total harvested surface in acres = 5316397

#1.j
row.names(wheat.e) <- wheat.e$community
wheat.f <- wheat.e[, -which(names(wheat.e) == "community")]
wheat.f
#The output in R is:                   wheat.surface       acre
                  # Galicia                    18817   46496.17
                  # Cantabria                    440    1087.23
                  # Pais Vasco                 25143   62127.50
                  # Navarra                    66326  163889.30
                  # La Rioja                   34214   84541.64
                  # Aragon                    311479  769654.06
                  # Cataluna                   74206  183360.51
                  # Islas Baleares              7203   17798.37
                  # Castilla y Leon           619858 1531648.13
                  # Madrid                     13118   32414.13
                  # Castilla-La Mancha        263424  650911.79
                  # C. Valenciana               6111   15100.07
                  # Region de Murcia            9500   23474.18
                  # Extremadura               143250  353965.90
                  # Andalucia                 558292 1379520.63
                  # Islas Canarias               100     247.10
                  # Asturias                      65     160.61

#--------------------------------------------------------------------

#1.k
small_comms<-subset(wheat.f,acre<40000)
total_hec_small_comm<-sum(as.numeric(small_comms$wheat.surface))
total_hec_small_comm
#The total harvested surface of communities with less than 40,000 acres in hectares=36537
total_acre_small_comm<-sum(as.numeric(small_comms$acre))
total_acre_small_comm
#The total harvested surface of communities with less than 40,000 acres in acres=90281.69

#1.l
write.table(wheat.f, file = "wheatdata.txt", row.names = TRUE)


#2.a
num<-7
w<-1:10
z<-matrix(data=seq(from=4,to=24,by=4),nrow = 2,ncol = 3,byrow = TRUE)
y<-"Hello"
some_info<-list(num,w,z,y)
some_info
#The output in R is:[[1]]
                  # [1] 7
                  # 
                  # [[2]]
                  # [1]  1  2  3  4  5  6  7  8  9 10
                  # 
                  # [[3]]
                  # [,1] [,2] [,3]
                  # [1,]    4    8   12
                  # [2,]   16   20   24
                  # 
                  # [[4]]
                  # [1] "Hello"

#2.b
some_info[3]
#The output in R is:[[1]]
                  # [,1] [,2] [,3]
                  # [1,]    4    8   12
                  # [2,]   16   20   24
# R indexes lists starting from 1, so some_info[3] retrieves the third element.

#2.c
some_info[[3]][6]<-17
some_info
#The output in R is:[[1]]
                  # [1] 7
                  # 
                  # [[2]]
                  # [1]  1  2  3  4  5  6  7  8  9 10
                  # 
                  # [[3]]
                  # [,1] [,2] [,3]
                  # [1,]    4    8   12
                  # [2,]   16   20   17
                  # 
                  # [[4]]
                  # [1] "Hello"

#2.d
names(some_info)<-c("number","vector","matrix","text")
some_info
#The output in R is:$number
                  # [1] 7
                  # 
                  # $vector
                  # [1]  1  2  3  4  5  6  7  8  9 10
                  # 
                  # $matrix
                  # [,1] [,2] [,3]
                  # [1,]    4    8   12
                  # [2,]   16   20   17
                  # 
                  # $text
                  # [1] "Hello"

#2.e
some_info$dataframe<-wheat.f
some_info
#The output in R is:$number
                  # [1] 7
                  # 
                  # $vector
                  # [1]  1  2  3  4  5  6  7  8  9 10
                  # 
                  # $matrix
                  # [,1] [,2] [,3]
                  # [1,]    4    8   12
                  # [2,]   16   20   17
                  # 
                  # $text
                  # [1] "Hello"
                  # 
                  # $dataframe
                  # wheat.surface       acre
                  # Galicia                    18817   46496.17
                  # Cantabria                    440    1087.23
                  # Pais Vasco                 25143   62127.50
                  # Navarra                    66326  163889.30
                  # La Rioja                   34214   84541.64
                  # Aragon                    311479  769654.06
                  # Cataluna                   74206  183360.51
                  # Islas Baleares              7203   17798.37
                  # Castilla y Leon           619858 1531648.13
                  # Madrid                     13118   32414.13
                  # Castilla-La Mancha        263424  650911.79
                  # C. Valenciana               6111   15100.07
                  # Region de Murcia            9500   23474.18
                  # Extremadura               143250  353965.90
                  # Andalucia                 558292 1379520.63
                  # Islas Canarias               100     247.10
                  # Asturias                      65     160.61