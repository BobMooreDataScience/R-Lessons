# Example with select

# Complete the chained command below so that we are
# selecting the id, name, and sex column from students4
# and storing the result in student_info.

# Step 1: Load libaries and data
library(readr)
library(tidyr)
library(dplyr)

students4 <- read.csv("C:/Users/411647/Desktop/r Programming/Reference/dplyr examples/students4.csv")
# Or on the web: https://github.com/swirldev/swirl_courses/tree/master/Getting_and_Cleaning_Data/Tidying_Data_with_tidyr

#Step 2: Look at initial table
students4

# Step 3 Look at final table

student_info <- students4 %>%
  select(id, name, sex) %>%
  print
