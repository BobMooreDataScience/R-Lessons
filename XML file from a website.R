## More detail found at https://www.stat.berkeley.edu/~statcur/Workshop2/Presentations/XML.pdf

# 1 Get the library an set working directory
## Note this works bettter if you do not use the full path

library(dplyr)
library(XML)
setwd("C:/Users/Bob or Laura J/Desktop/r Programming/Coursera/Course 3 Data Cleaning")

## 2 Get the file from the internet and save it to local drive

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
download.file(fileUrl, destfile = "Question4.xml")
doc = xmlTreeParse(file = "Question4.xml", useInternalNodes = TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootNode)

#3 Check root directory
rootNode [[1]]

#4 Get the zipcodes
###Note I got this wrong until I copied the example from Roger Peng's Github.
## IF YOU ARE HAVING PROBLEMS THEN RETYPE USING THE RSTUDIO SUGGESTIONS
##    Minor space errors matter!!!
##      Minor space errors matter!!!
##              Minor space errors matter!!!
##                      Minor space errors matter!!!
##                              Minor space errors matter!!!

xpathSApply(rootNode,"//zipcode",xmlValue)

#5 Create a vector

Zips <- data.table(xpathSApply(rootNode,"//zipcode",xmlValue))
Zips2 <- filter(Zips,Zips == "21231")
nrow(Zips2)

## Answer is 127





