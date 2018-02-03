# SQLDF uses SQL commands within R

#1 Load the libraries
library(tibble)
library(RSQLite)
library(sqldf)
library(data.table)

#2 Convert the data to a dataframe
acs <- fread("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv")
acs <- data.frame(acs)

#3 Now use SQL in "" with SQLDF

sqldf("select * from acs where AGEP < 50")

#4 Note that there is file limit size, so you may need to make the datafreame smaller with other R commands