df <- read.csv("C:/Users/Dmitr/Desktop/MSDS 6306 - 402/Unit 3/Homework/HW3GitRepo/awesome-public-datasets/Datasets/titanic.csv/titanic.csv", stringsAsFactors = TRUE)
df2 <- read.csv("C:\Users\Dmitr\Desktop\MSDS 6306 - 402\Unit 3\Homework\awesome-public-datasets2\Datasets\titanic.csv")

str(df)
head(df)
lapply(df$Sex, sum)
summary(df)
df$Sex
summary(df$Sex)
View(df)

plot(df$Sex,
     ylim = c(0, 600),
     ylab = "Number of Passengers",
     main = "Number of Female and Male Passengers aboard the Titanic",
     sub = "Total number of passengers = 891")

tempdf <- df[c("Age", "Fare", "Survived")]
AgeFareSurvivialDf <- na.omit(tempdf)
sapply(AgeFareSurvivialDf, mean) # might not be best since it omits NA

sapply(df[c("Age", "Fare", "Survived")], function(x) mean(x, na.rm = TRUE))
sapply(df[c("Age", "Fare", "Survived")], mean, na.rm = TRUE)


SleepData <- read.csv("http://talklab.psy.gla.ac.uk/L1_labs/lab_1/homework/sleep_data_01.csv")
str(SleepData)
head(SleepData)
View(SleepData)
summary(SleepData)

SleepFunction <- function(x = SleepData) {
  median_age <- median(x$Age, na.rm = TRUE)
  min_sleep <- min(x$Duration, na.rm = TRUE)
  max_sleep <- max(x$Duration, na.rm = TRUE)
  mean_RSES <- mean(x$RSES, na.rm = TRUE)
  sd_RSES <- sd(x$RSES, na.rm = TRUE)
  report <- data.frame(median_age, mean_RSES / 5, sd_RSES / 5, c(max_sleep - min_sleep))
  colnames(report) <- c("MedianAge", "SelfEsteem", "SE_SD", "DurationRange")
  round(report, 1)
}

SleepFunction(SleepData)
SleepFunction()
