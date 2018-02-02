## Subsetting an sorting
## Other reference http://www.biostat.jhsph.edu/~ajaffe/lec_winterR/Lecture%202.pdf

## Create data set
set.seed(13435)
x <- data.frame("var1" =sample(1:5),"var2" =sample(6:10),"var3" = sample(11:15))
x <- x[sample(1:5),]; x$var2[c(1,3)] = NA
x

## Get the first column
x$var1

# Sort one variable
sort(x$var1,decreasing =TRUE)

## Order by one column 
x[order(x$var1),]


## Order by one column, then another 
x [order(x$var1, x$var3),]

## Use plyr to sort
library(plyr)
arrange(x,var1)

## Use plyr to sort decreasing
arrange(x,desc(var1) )

## Add a new column

x$va4 <- rnorm(5)
x