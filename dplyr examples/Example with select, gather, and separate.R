# Example with select, gather, and separate


# Accomplish the following three goals:
#
# 1. select() all columns that do NOT contain the word "total",
# since if we have the male and female data, we can always
# recreate the total count in a separate column, if we want it.
# Hint: Use the contains() function, which you'll
# find detailed in 'Special functions' section of ?select.
#
# 2. gather() all columns EXCEPT score_range, using
# key = part_sex and value = count.
#
# 3. separate() part_sex into two separate variables (columns),
# called "part" and "sex", respectively. You may need to check
# the 'Examples' section of ?separate to remember how the 'into'
# argument should be phrased.

# Step 1: Load libaries and data
library(readr)
library(tidyr)
library(dplyr)

sat <- read.csv("C:/Users/411647/Desktop/r Programming/Reference/dplyr examples/sat.csv")
# Or on the web: https://github.com/swirldev/swirl_courses/tree/master/Getting_and_Cleaning_Data/Tidying_Data_with_tidyr

#Step 2: Look at initial table
sat

# Step 3 Look at final table

sat %>%
  select(-contains("total")) %>%
  gather(part_sex, count, -score_range) %>%
  separate(part_sex, c("part", "sex")) %>%
  print
