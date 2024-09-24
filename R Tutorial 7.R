

#1.a
set.seed(1234)
draws <- sample(1:4, size = 1000, replace = TRUE, prob = c(0.4, 0.3, 0.2, 0.1))
draws
#The ouput in R is:
# [1] 1 2 2 2 3 2 1 1 2 2 2 2 1 4 1 3 1 1 1 1 1 1 1 1 1 3
# [27] 2 4 3 1 2 1 1 2 1 3 1 1 4 3 2 2 1 2 1 2 2 2 1 3 1 1
# [53] 3 2 1 2 2 3 1 3 3 1 1 1 1 3 1 2 1 2 1 3 1 3 1 2 1 1
# [79] 1 2 4 2 1 2 1 3 1 1 1 3 1 4 1 1 1 2 1 1 1 3 1 2 1 1
# [105] 1 1 1 1 2 1 3 1 4 1 1 4 4 1 1 3 3 4 4 4 2 1 1 2 2 1
# [131] 4 2 1 2 4 2 4 2 2 3 2 4 1 2 1 2 3 2 4 2 2 1 1 3 1 4
# [157] 2 4 1 2 2 2 2 1 1 2 2 1 3 1 3 2 3 2 1 3 2 2 1 1 2 1
# [183] 2 1 4 1 3 2 1 3 2 4 1 3 3 3 3 3 4 2 2 2 1 3 2 3 1 2
# [209] 1 4 2 1 1 3 2 4 2 3 2 3 2 1 1 1 1 2 3 1 2 2 3 2 1 3
# [235] 2 1 3 1 2 4 2 1 1 2 4 2 3 2 4 3 2 2 1 1 1 2 1 1 2 2
# [261] 3 1 2 1 1 1 3 1 1 3 1 3 1 3 1 2 3 2 1 1 1 2 4 3 3 1
# [287] 2 1 2 3 2 2 4 1 2 3 2 1 2 1 1 4 2 2 4 2 1 4 2 3 4 2
# [313] 2 2 1 1 1 2 1 3 1 3 1 1 1 1 2 1 2 4 3 3 4 1 2 1 1 1
# [339] 4 2 4 1 2 4 1 1 1 2 4 1 1 3 1 3 4 4 2 3 2 3 1 2 2 1
# [365] 3 4 2 1 3 3 4 1 3 2 1 1 3 1 2 2 1 1 1 1 1 1 2 1 4 4
# [391] 2 3 3 2 1 4 2 2 1 1 2 2 3 3 2 1 3 1 2 2 3 3 4 1 3 2
# [417] 2 3 1 2 2 4 1 1 4 1 1 2 1 1 2 3 2 4 1 2 1 4 3 2 3 3
# [443] 3 2 4 2 3 2 2 1 1 3 4 4 3 2 1 2 2 1 1 3 1 2 1 1 2 1
# [469] 2 2 1 1 1 4 1 4 2 2 3 1 2 2 2 1 1 1 3 3 3 1 2 3 4 1
# [495] 2 1 2 1 2 2 2 3 3 1 2 3 3 3 1 3 1 4 4 2 1 3 2 1 2 1
# [521] 3 1 1 4 2 3 1 1 2 1 1 2 2 3 1 4 2 2 3 2 1 2 4 1 3 2
# [547] 3 3 4 4 1 1 3 1 3 4 2 1 2 3 1 4 2 3 1 3 3 2 1 1 2 3
# [573] 1 2 2 1 1 2 2 3 3 1 2 1 1 1 1 4 4 2 4 3 1 2 1 2 2 2
# [599] 2 1 1 1 1 2 2 1 3 1 2 1 1 3 1 1 4 1 1 2 3 2 4 1 2 3
# [625] 1 4 2 4 1 2 3 2 2 2 4 3 1 3 1 1 2 1 2 4 1 1 1 3 2 3
# [651] 1 2 3 2 1 2 3 1 1 4 2 4 3 1 1 2 3 1 2 3 1 4 1 1 4 3
# [677] 2 3 1 4 2 1 2 1 3 1 3 1 2 2 3 2 1 2 1 1 1 2 1 3 1 2
# [703] 3 2 1 1 2 2 1 2 3 4 4 1 1 1 2 1 4 1 3 1 4 1 2 4 2 1
# [729] 1 4 4 1 1 2 2 3 2 3 4 4 1 1 1 1 2 1 2 2 1 2 2 3 1 3
# [755] 1 3 2 4 1 2 1 2 1 2 1 2 4 2 3 1 3 3 3 1 2 2 1 1 2 1
# [781] 4 1 1 1 1 2 3 1 3 1 3 1 2 2 3 1 2 3 1 3 1 3 2 1 1 2
# [807] 1 2 2 2 2 1 4 2 1 1 1 3 2 2 1 1 1 1 1 3 1 1 1 2 1 3
# [833] 3 4 1 2 3 1 2 2 1 2 2 1 2 4 2 4 3 3 2 4 4 1 2 2 1 1
# [859] 3 4 1 2 1 2 1 4 1 4 1 2 4 4 4 1 3 1 1 1 2 2 2 1 2 2
# [885] 2 4 1 1 1 1 4 3 2 1 1 1 2 2 4 3 2 2 4 2 4 1 1 1 3 1
# [911] 1 2 1 1 1 1 2 4 4 3 2 2 1 1 2 1 3 2 1 1 1 4 1 2 1 2
# [937] 1 2 1 2 4 2 3 3 2 2 1 1 2 1 3 4 1 3 3 1 3 2 1 2 1 2
# [963] 3 3 1 1 2 1 2 1 4 3 1 3 1 2 3 1 4 2 3 4 1 2 4 1 1 4
# [989] 1 1 2 2 4 1 2 1 3 1 4 1

#1.b.i
E_Y <- mean(draws)
E_Y
#The output in R is: 2.027

#1.b.ii
E_inv_Y <- mean(1 / draws)
E_inv_Y
#The output in R is: 0.6371667

#1.b.iii
E_Y2 <- mean(draws^2)
E_Y2
#The output in R is: 5.165

#1.b.iv
E_Y2_minus_1 <- mean(draws^2 - 1)
E_Y2_minus_1
#The output in R is: 4.165

#1.b.v
Var_Y <- var(draws)
Var_Y
#The output in R is: 1.057328

#1.c
barplot(table(draws), xlab = "y", ylab = "Frequency", main = "Barplot of 1,000 discrete draws of Y", ylim = c(0, max(table(draws)) + 50))

#2.a
set.seed(1234)
coinToss <- sample(c("Heads", "Tails"), size = 10, replace = TRUE)
coinToss
#The output in R is:
# [1] "Tails" "Tails" "Tails" "Tails" "Heads" "Tails"
# [7] "Heads" "Heads" "Heads" "Tails"

#2.b
num_of_heads <- sum(coinToss == "Heads")
num_of_heads
#The output in R is: 4

#2.c
tenth_toss <- coinToss[10]
tenth_toss
#The output in R is: "Tails"

#2.d
first_nine_heads <- sum(coinToss[1:9] == "Heads")
first_nine_heads
#The output in R: 4

#2.e
(first_nine_heads == 2) && (tenth_toss == "Heads")
#The output in R is: FALSE

#2.f
probability <- mean(replicate(10000, {
  tosses <- sample(c("Heads", "Tails"), size = 10, replace = TRUE)
  sum(tosses[1:9] == "Heads") == 2 && tosses[10] == "Heads"
}))
probability
#The output in R is: 0.0388

#3.a
prob_zero_heads <- mean(replicate(10000, sum(sample(c("Heads", "Tails"), 3, replace = TRUE) == "Heads") == 0))
prob_zero_heads
#The output in R is: 0.1226

#3.b
prob_one_head <- mean(replicate(10000, sum(sample(c("Heads", "Tails"), 3, replace = TRUE) == "Heads") == 1))
prob_one_head
#The output in R is: 0.3716

#3.c
prob_two_heads <- mean(replicate(10000, sum(sample(c("Heads", "Tails"), 3, replace = TRUE) == "Heads") == 2))
prob_two_heads
#The output in R is: 0.3638

#3.d
prob_three_heads <- mean(replicate(10000, sum(sample(c("Heads", "Tails"), 3, replace = TRUE) == "Heads") == 3))
prob_three_heads
#The output in R is: 0.123