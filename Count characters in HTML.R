# Count characters in HTML

#1 Load libraries
library(curl)
library(httr)

#2 Make the connection and assign the readlines to a vector
con = url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlCode = readLines(con)

#3 Close the connection
close(con)

#4 Get 150 lines to be safe and assign it to a dataframe
substr(htmlCode, start = 1, stop = 150)
MyHTML <- data.frame(substr(htmlCode, start = 1, stop = 150))

#5 Convert the datafreame to character and count.
###  Note you created a vector with the rows you required

nchar(as.character(MyHTML[c(10,20,30,100),]))

# Answer 45 31 7 25