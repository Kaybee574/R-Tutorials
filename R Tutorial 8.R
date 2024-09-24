

#1.a
n<-20
p<-0.25
x<-0:n
probabilities<-dbinom(x,size = n,prob = p)
barplot(probabilities,names.arg = x,xlab = "x",ylab = "Probabilities",main = "Binomial PDF")

#1.b
#P(X = 12)
P_X_12<-dbinom(12,size = n,prob = p)
P_X_12
#The output in R is: 0.0007516875

#1.c
#P(X = 13)
P_X_13 <- dbinom(13, size = n, prob = p)
P_X_13
#The output in R is: 0.0001541923

#1.d
#P(X = 14)
P_X_14 <- dbinom(14, size = n, prob = p)
P_X_14
#The output in R is: 2.569872e-05

#1.e
TheProbs <- c(P_X_12, P_X_13, P_X_14)
TheProbs
#The output in R is: 7.516875e-04 1.541923e-04 2.569872e-05

#1.f
#P(X = 12) +P(X = 13)+P(X = 14)
sum_probs <- P_X_12 + P_X_13 + P_X_14
sum_probs
#The output in R is: 0.0009315786

#1.g
#P(X ≤ 12)
P_X_le_12 <- pbinom(12, size = n, prob = p)
P_X_le_12
#The output in R is:0.9998163

#1.h
#P(X < 16)
P_X_lt_16 <- pbinom(15, size = n, prob = p)
P_X_lt_16
#The output in R is: 0.9999996

#1.i
#P(X ≥ 14)
P_X_ge_14 <- 1 - pbinom(13, size = n, prob = p)
P_X_ge_14
#The output in R is:2.951175e-05

#2.a
n_recover <- 20
p_recover <- 0.73
P_exactly_13 <- dbinom(13, size = n_recover, prob = p_recover)
P_exactly_13
#The output in R is:0.135568

#2.b
P_at_least_9 <- 1 - pbinom(8, size = n_recover, prob = p_recover)
P_at_least_9
#The output in R is:  0.9980533

#2.c
P_12_to_19 <- pbinom(19, size = n_recover, prob = p_recover) - pbinom(11, size = n_recover, prob = p_recover)
P_12_to_19
#The output in R is:0.9341795


#2.d
P_at_most_15 <- pbinom(15, size = n_recover, prob = p_recover)
P_at_most_15
#The output in R is:0.6624904


#2.e
expected_recoveries <- n_recover * p_recover
expected_recoveries
#The output in R is: 14.6

#2.f
variance_recoveries <- n_recover * p_recover * (1 - p_recover)
variance_recoveries
#The output in R is:3.942