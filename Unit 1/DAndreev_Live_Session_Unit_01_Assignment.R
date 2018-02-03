# Question 1 - Basic Math

# Part a - Function to compute the log of a positive number
log(99)
log(99, base = exp(1))

# Part b - Understanding default base for the log function
# After referring to help documentation, looks like the
# the function computes the natural logarithm by default.
log10(99)
log(99, base = 10)

# Part c - the log of a negative number
# The natural logarithm function ln(x) is defined only for
# positive numbers x > 0. The natural logarithm of a negative
# number is undefined which is why R returns "NaNs produced"
# suggesting that there is a missing value or "Not a Number"
log(-99)

# Part d - the square-root of a positive number
sqrt(16)


# Question 2 - Random Number Generation

# Part a - Create a vector of 15 standard normal random 
# variables calculate its mean and SD (Standard Deviation)
Vector <- rnorm(15)
Vector
mean(Vector)
sd(Vector)

# Part b - Change the mean to 10 and the SD to 2 to recalculate
# the vector of 15 random normal variables. Calculate its mean
# and SD
Vector <- rnorm(15, m = 10, sd = 2)
Vector
mean(Vector)
sd(Vector)
# the rnorm function generates a sample of random numbers from a 
# normal distribution with the specified mean and standard
# deviation properties input into the function by the user.
# This means that every time the rnorm function is called upon 
# to generatre 15 numbers with a mean of 10 and standard deviation 
# of 2, it simply grabs 15 numbers at random from a normal
# distribution with the specified properties (mean and sd) and will
# be different every time the function is called upon. The random
# numbers are being generated from the same population with a normal
# distribution, however, each sample of random numbers will have
# variation in their mean and standard deviation.


# Question 3 - Vector Operations

# Part a -> c - Create 2 vectors for heights and weights of 6 individuals

weights <- c(60, 72, 57, 90, 95, 72)
weights
heights <- c(1.80, 1.85, 1.72, 1.90, 1.74, 1.91)
heights

# Part d - Create a scatterplot of weight vs. height
# Interpret the scatterplot

plot(heights, 
     weights, 
     main = "Scatterplot of Weight versus Height for 6 Individuals",
     xlab = "Height (m)",
     ylab = "Weight (kg)")

# Scatterplot is showing a slight positive correlation, estimated at 
# r ~ 0.7, however, there is one indivdual with a height of 1.72 meters but 
# a very high corresponding weight of 95 kilograms resulting in a large 
# residual if a linear regression model had been fit onto the plot. Another 
# point to note is the tall individual with a height of 1.91 meters and a 
# rather low weight of 72 kilograms that would result in high leverage on
# a linear regression model.

# Part e - Calculate the BMI for each individual
# BMI = weight in kg divided by the square of the height in m

BMI <- weights / (heights ^ 2)
BMI

# Part f - Calculate the mean for weight

mean_weight <- mean(weights)
mean_weight

# Part g - Subtract the mean for each value of weight

residual_weights <- weights - mean_weight
residual_weights

# part h - Sum the result
# Now you know why we square the deviations from the mean to calculate a
# standard deviation!

sum_of_residual_weights <- sum(residual_weights)
sum_of_residual_weights


# Question 4 - Enter your data science profile in R as a data frame
# Data frame consists of two columns - data science categories, ranking
# Categories - Computer Programming, math, statistics, machine learning, domain
# expertise, communication and presentation skills, and data visualization
# Ranking - 1 as worst, 5 as best for best ranking for each category
# Create a bargraph of your data science profile

Data_Science_Categories <- c("Computer Programming", 
                             "Math", 
                             "Statistics", 
                             "Machine Learning", 
                             "Domain Expertise", 
                             "Communication and Presentation Skills", 
                             "Data Visualization")

Ranking <- c(1, 3, 2, 1, 3, 2, 2)

Dmitry <- data.frame(Data_Science_Categories, Ranking)

# fitting labels
par(las = 1) # make lable text perpendicular to axis
par(mar = c(5, 16, 3, 1)) # increase y-axis margin

barplot(Dmitry$Ranking, 
        names.arg = Dmitry$Data_Science_Categories,
        horiz = TRUE,
        xlab = "Ranking",
        main = "Bar Chart of Data Science Profile for Dmitry Andreev")
