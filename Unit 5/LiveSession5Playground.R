## Question 1
getwd()
list.files()

df <- read.table("yob2016.txt", sep = ";", header = FALSE)

names(df) <- c("Name", "Gender", "Amount of Children")

summary(df)
str(df)

df$Name <- as.character(df$Name)
class(df$Name)

df[grep("yyy$", df$Name),]

y2016 <- df[-212,]
y2016[210:215,]
df[210:215,]
str(df)
str(y2016)

## Question 2
getwd()
list.files()
y2015 <- read.table("yob2015.txt", sep = ",", header = FALSE)

names(y2015) <- c("Name", "Gender", "Amount of Children")
tail(y2015, n = 10)
# seems that the last ten names have an equal amount of children [5] assigned
# to the names but I would imagine that the number should vary down the list

y2015$Name <- as.character(y2015$Name)
str(y2015)

final <- merge(y2015, y2016, all = FALSE, by = "Name")
str(final)
View(final)
summary(final)
colSums(is.na.data.frame(final))

## Question 3
final$Total <- final$`Amount of Children.x` + final$`Amount of Children.y`
head(final)
summary(final$Total)
sum(final$Total)

head(final[order(-final$Total),], n = 10)

head(final[final$Gender.x == "F", ])

GirlNames <- final[final$Gender.x == "F", ]
Top10GirlNames <- GirlNames[order(-GirlNames$Total),][1:10, ]
Top10GirlNames

dim(Top10GirlNames)
Top10GirlNames[ ,-c(2:5)]

getwd()
write.csv(Top10GirlNames[ ,-c(2:5)], file = "Top10GirlNames.csv", row.names = FALSE)
list.files()
