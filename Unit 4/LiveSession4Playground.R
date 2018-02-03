install.packages("fivethirtyeight")
library(fivethirtyeight)
data(bechdel)
head(bechdel)
View(bechdel)
?bechdel
vignette("bechdel", package = "fivethirtyeight")
data(package = "fivethirtyeight")
vignette("fivethirtyeight", package = "fivethirtyeight")
vignette("college_recent_grads", package = "fivethirtyeight")
browseVignettes(package = "fivethirtyeight")

df <- data.frame(college_recent_grads)
str(df)
head(df)
View(df)

## URL related to data set https://fivethirtyeight.com/features/the-economic-guide-to-picking-a-college-major/

dim(df)
colnames(df)
ncol(df)

data.frame(lappy(df, function(x) (unique(x))))
library(plyr)
major_count <- count(df, "major_category")
major_count
class(major_count)
sum(major_count$freq)
?barplot
library("RColorBrewer")




# Fitting labels
par(las = 2)
par(mar = c(5, 12, 2, 1))

barplot(major_count$freq,
        names = major_count$major_category,
        main = 'Count of College Majors per Category',
        sub = "Major Categories obtained from Carnevale et al study",
        xlab = "Count of College Majors",
        xlim = c(0, 30),
        col = brewer.pal(n = 8, name = "Dark2"),
        cex.names = 0.8,
        horiz = TRUE)

getwd()
setwd("C:/Users/Dmitr/Desktop/MSDS 6306 - 402/Unit 4/Homework")
write.csv(df, file = "recent-grads", row.names = FALSE)

write.csv(df, "C:/Users/Dmitr/Desktop/MSDS 6306 - 402/Unit 4/Homework/recent-grads.csv", row.names = FALSE)


