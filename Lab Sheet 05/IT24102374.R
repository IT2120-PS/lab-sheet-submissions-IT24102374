# Setting the directory
setwd("C:\\Users\\IT24102374\\Desktop\\IT24102374")


# Importing the data set
data <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")


# Storing the data in a data frame called "Delivery_Times"
Delivery_Times <- data


# View the file in a separate window
fix(Delivery_Times)


# Attach the file into R, so that we can call the variables by their names
attach(Delivery_Times)


# Check column names
colnames(Delivery_Times)


# Rename the column for easier use
colnames(Delivery_Times)[colnames(Delivery_Times) == "Delivery_Time_.minutes."] <- "DeliveryTime"


# Histogram for deliver times using nine class intervals where the lower limit is 20 and upper limit is 70, using right open intervals
hist_data <- hist(Delivery_Times$DeliveryTime, main = "Histogram of Delivery Times", breaks = seq(20, 70, length = 9), xlab = "Delivery Time", ylab = "Frequency", right = TRUE)



# Assign class frequencies of the histogram into a variable named "freq"
freq <- hist_data$counts


# Obtain the cumulative frequencies
cum.freq <- cumsum(freq)


# Obtain the midpoints from the histogram
mids <- hist_data$mids


# Plot the cumulative frequency polygon (Ogive)
plot(mids, cum.freq, type = "o", main = "Cumulative Frequency Polygon (Ogive)", xlab = "Delivery Time", ylab = "Cumulative Frequency", pch = 16)