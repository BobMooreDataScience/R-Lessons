# Example with select for second table

# select() the id, class, midterm, and final columns
# (in that order) and store the result in gradebook.

# Step 1: Load libaries and data
library(readr)
library(tidyr)
library(dplyr)

students4 <- read.csv("C:/Users/411647/Desktop/r Programming/Reference/dplyr examples/students4.csv")
# Or on the web: https://github.com/swirldev/swirl_courses/tree/master/Getting_and_Cleaning_Data/Tidying_Data_with_tidyr

#Step 2: Look at initial table
students4

# Step 3 Look at final table

gradebook <- students4 %>%
  select(id, class, midterm, final) %>%
  print
