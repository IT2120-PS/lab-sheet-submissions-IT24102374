# Set the working directory
setwd("C:\\Users\\IT24102374\\Desktop\\IT24102374")


# Import the dataset
weights_data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)


# View the file in a separate window
fix(weights_data)


# Attach the file into R, so that we can call the variables by their names
attach(weights_data)


# Check column names
colnames(weights_data)


# The population mean and population standard deviation of the laptop bag weights.
pop_mean <- mean(Weight.kg.)
pop_sd <- sd(Weight.kg.)
pop_mean
pop_sd


# The sample mean and sample standard deviation of 25 random samples of size 6 (with replacement)
samples <- c()
n <- c()

for(i in 1:25){
  s <- sample(Weight.kg., 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('S', i))
}

colnames(samples) = n

s.means <- apply(samples, 2, mean)
s.sds <- apply(samples, 2, sd)

s.means
s.sds


# The mean and standard deviation of the 25 sample means
samplemean <- mean(s.means)
samplesd <- sd(s.means)

samplemean
samplesd


# The relationship of mean of sample means with true mean
pop_mean
samplemean


# The relationship of standard deviation of sample means with true standard deviation
pop_sd/sqrt(6)
samplesd

