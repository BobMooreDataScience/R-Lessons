# Example with select and unique for first table

# Add a call to unique() below, which will remove
# duplicate rows from student_info.
#
# Like with the call to the print() function below,
# you can omit the parentheses after the function name.
# This is a nice feature of %>% that applies when
# there are no additional arguments to specify.

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
  unique %>%
  print
