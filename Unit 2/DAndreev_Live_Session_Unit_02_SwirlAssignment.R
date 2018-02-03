library("swirl")
swirl()

### Lesson 8 - Logic ###
TRUE == TRUE
(FALSE == TRUE) == FALSE
6 == 7
6 < 7
10 <= 10
2
1
5 != 7
!5 == 7
1
2
FALSE & FALSE
TRUE & c(TRUE, FALSE, FALSE)
TRUE && c(TRUE, FALSE, FALSE)
TRUE | c(TRUE, FALSE, FALSE)
TRUE || c(TRUE, FALSE, FALSE)
5 > 8 || 6 != 8 && 4 > 3.9
3
4
isTRUE(6 > 4)
3
identical('twins', 'twins')
1
xor(5 == 6, !FALSE)
4
ints <- sample(10)
ints
ints > 5
which(ints > 7)
any(ints < 0)
all(ints > 0)
1


### Lesson 9 - Functions ### 
Sys.Date()
mean(c(2, 4, 5))
boring_function <- function(x) {
  x
}
submit()
boring_function('My first function!')
boring_function
my_mean <- function(my_vector) {
  vector_sum <- sum(my_vector)
  vector_length <- length(my_vector)
  vector_sum / vector_length
}
my_mean(c(4, 5, 10))
remainder <- function(num, divisor = 2) {
  num %% divisor
}
remainder(5)
remainder(11, 5)
remainder(divisor = 11, num = 5)
remainder(4, div = 2)
args(remainder)
evaluate <- function(func, dat){
  func(dat)
}
evaluate(sd, c(1.4, 3.6, 7.9, 8.8))
evaluate(function(x){x+1}, 6)
evaluate(function(x){x[1]}, c(8, 4, 0))
evaluate(function(x){x[-1]}, c(8, 4, 0))
?paste
paste("Programming", "is", "fun!")
telegram <- function(...){
  paste("START", ..., "STOP") 
}
telegram("Hello", "RStudio")
mad_libs <- function(...){
  my_args <- list(...)
  place <- my_args[["place"]]
  adjective <- my_args[["adjective"]]
  noun <- my_args[["noun"]]
  paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
}
mad_libs(place = "Houston", adjective = "hipster", noun = "quad")
"%p%" <- function(left, right){
  paste(left, right, sep = " ")
}
'I' %p% 'love' %p% 'R!'


### Lesson 10 - lapply and sapply ### 
head(flags)
dim(flags)
class(flags)
cls_list <- lapply(flags, class)
cls_list
class(cls_list)
as.character(cls_list)
cls_vect <- sapply(flags, class)
class(cls_vect)
sum(flags$orange)
flag_colors <- flags[, 11:17]
head(flag_colors)
lapply(flag_colors, sum)
sapply(flag_colors, sum)
sapply(flag_colors, mean)
flag_shapes <- flags[, 19:23]
lapply(flag_shapes, range)
shape_mat <- sapply(flag_shapes, range)
shape_mat
class(shape_mat)
unique(c(3, 4, 5, 5, 5, 6, 6))
unique_vals <- lapply(flags, unique)
unique_vals
sapply(unique_vals, length)
sapply(flags, unique)
lapply(unique_vals, function(elem) {elem[2]})


### Lesson 11 - vapply and tapply ### 
sapply(flags, unique)
vapply(flags, uniqe, numeric(1))
vapply(flags, unique, numeric(1))
ok()
sapply(flags, class)
vapply(flags, class, character(1))
?tapply
table(flags$landmass)
tapply(flags$animate, flags$landmass, mean)
tapply(flags$population, flags$red, summary)
5
tapply(flags$population, flags$landmass, summary)
2