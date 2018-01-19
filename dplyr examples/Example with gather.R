# Example with gather

# Call gather() to gather the columns class1
# through class5 into a new variable called class.
# The 'key' should be class, and the 'value'
# should be grade.
#
# tidyr makes it easy to reference multiple adjacent
# columns with class1:class5, just like with sequences
# of numbers.
#
# Since each student is only enrolled in two of
# the five possible classes, there are lots of missing
# values (i.e. NAs). Use the argument na.rm = TRUE
# to omit these values from the final result.
#
# Remember that when you're using the %>% operator,
# the value to the left of it gets inserted as the
# first argument to the function on the right.
#
# Consult ?gather and/or ?chain if you get stuck.

# Step 1: Load libaries and data
library(readr)
library(tidyr)
library(dplyr)

students3 <- read.csv("C:/Users/411647/Desktop/r Programming/Reference/dplyr examples/students3.csv")

#Step 2: Look at initial table
students3

# Step 3 Look at final table

students3 %>%
  gather(class, grade, class1:class5, na.rm = TRUE) %>%
  print
