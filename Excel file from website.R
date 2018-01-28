# 1 Load libraries
library(xlsx)
library(data.table)

# 2 Get data from website and create an xlsx file
setwd("C:/Users/Bob or Laura J/Desktop/r Programming/Coursera/Course 3 Data Cleaning")
fileXLS <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
# use mode = "wb" forces binary mode - doesn't read correctly without this!
download.file(fileXLS,destfile="Week 1 question 3 data2.xlsx", mode = "wb")

##3 Read required rows and columns and solve equayion
dat <- read.xlsx("C:/Users/Bob or Laura J/Desktop/r Programming/Coursera/Course 3 Data Cleaning/Week 1 question 3 data2.xlsx",1, startRow=18,
                 endRow=23)
sum(dat$Zip*dat$Ext,na.rm=T)

#4 Answer is 36534720 verified in Excel

