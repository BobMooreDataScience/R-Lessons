library(XML)

setwd("C:/Users/Bob or Laura J/Desktop/r Programming/Coursera/Course 3 Data Cleaning")
getwd()


fileUrl = "http://www.w3schools.com/xml/simple.xml"

download.file(fileUrl, destfile = "Example.xml")

doc = xmlTreeParse(file = "Example.xml", useInternalNodes = TRUE)

xmlSApply(rootNode,"/e",xmlValue)