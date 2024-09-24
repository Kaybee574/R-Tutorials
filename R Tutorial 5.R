#Task Nmae:R Tutorial 5
#Name(s): Karabo Siyabonga
#Surname: Mgwenya
#Student Number:g24m5008

#1
library(PASWR)
data("vit2005")

#2.a 
apartments_freq_table<-table(vit2005$out)
apartments_freq_table
#The output in R is:
# E100  E25  E50  E75 
# 122    3   87    6 

#2.b
apartments_rel_freq_table<-apartments_freq_table/length(vit2005$out)
apartments_rel_freq_table
#The output in R is:
# E100        E25        E50        E75 
# 0.55963303 0.01376147 0.39908257 0.02752294 

#2.c
barplot(apartments_freq_table, xlab="Exposure", ylab="Frequency", main="Frequency of Apartments by Exposure")

#3
apartments_freq_table_cat<-table(vit2005$category)
apartments_rel_freq_table_cat<-apartments_freq_table_cat/sum(apartments_freq_table_cat)

barplot(apartments_rel_freq_table_cat, main="Relative Frequency of Apartments by Category", xlab="Category", ylab="Relative Frequency",col=rainbow(length(apartments_rel_freq_table_cat)))
#4

fac_streetcategory<-as.factor(vit2005$streetcategory)
plot(fac_streetcategory,main = "Frequency Barplot of Apartments by Street Category",xlab = "Street Category",ylab = "Frequency",col = rainbow(length(streetcategory_table)))
