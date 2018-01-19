# Example with gather and separate

# Repeat your calls to gather() and separate(), but this time
# use the %>% operator to chain the commands together without
# storing an intermediate result.
#
# If this is your first time seeing the %>% operator, check
# out ?chain, which will bring up the relevant documentation.
# You can also look at the Examples section at the bottom
# of ?gather and ?separate.
#
# The main idea is that the result to the left of %>%
# takes the place of the first argument of the function to
# the right. Therefore, you omit the first argument to each
# function.

# Step 1: Load libaries and data
library(readr)
library(tidyr)
library(dplyr)

students2 <- read.csv("C:/Users/411647/Desktop/r Programming/Reference/dplyr examples/students2.csv")
# Or on the web: https://github.com/swirldev/swirl_courses/tree/master/Getting_and_Cleaning_Data/Tidying_Data_with_tidyr

#Step 2: Look at initial table
students2

# Step 3 Look at final table

students2 %>%
  gather(sex_class, count, -grade) %>%
  separate(sex_class, c("sex", "class")) %>%
  print
