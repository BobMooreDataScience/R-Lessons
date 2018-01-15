## Lesson on data.table from Daniel Hall
# For your information, an update to the lecture material based on changes to the data.table package:
# If you follow along in R, trying to duplicate Jeff Leek's code, you will see a different result for 
# slide 6 (week 1, lecture 9, 2:04)

# Thankfully, as of data.table v1.9.8 (released November 2016), when you subset a data.table with a 
# numeric or integer vector for the j expression, you actually get those columns. Using the data.table 
# from the lecture, this is what you get now. I have set the seed so if you run this code and you have 
# a data.table package more recent than November 2016 you will get the same result.


library(data.table)
set.seed(123)
DT <- data.table( x = rnorm(9), y = rep(c("a", "b", "c"), each = 3),
                  z = rnorm(9))

DT[ , c(2, 3) ]

# that answer above is based on vector of columns.

# I prefer the metod where we use the columns names using the "$"


data.table( y = DT$y, z= DT$z)

