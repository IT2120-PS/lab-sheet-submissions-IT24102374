# Setting the directory
setwd("C:\\Users\\User\\Desktop\\IT24102374")


# Question 1: Uniform Distribution
# X ~ U(0, 40)
# P(10 ≤ X ≤ 25)
punif(25, min = 0, max = 40, lower.tail = TRUE) - punif(10, min = 0, max = 40, lower.tail = TRUE)


# Question 2: Exponential Distribution
# X ~ Exp(rate = 1/3)
# P(X ≤ 2)
pexp(2, rate = 1/3, lower.tail = TRUE)


# Question 3 - Part i: Normal Distribution
# X ~ N(100, 15)
# P(X > 130)
1 - pnorm(130, mean = 100, sd = 15, lower.tail = TRUE)


# Question 3 - Part ii: 95th percentile of N(100, 15)
qnorm(0.95, mean = 100, sd = 15, lower.tail = TRUE)
