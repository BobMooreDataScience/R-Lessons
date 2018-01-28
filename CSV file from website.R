# 1 Get data from website

library(data.table)
ID_Survey <- fread('https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv')

#2 Look up  property value >= $1000000 is 24 for the column VAL

#3 Write equation
library(dplyr)
ID_Survey1 <- ID_Survey %>%
  select(SERIALNO, VAL)  
sum(ID_Survey1$VAL == 24, na.rm = TRUE)

#4 The answer is 53 and verified with Excel
  
  

