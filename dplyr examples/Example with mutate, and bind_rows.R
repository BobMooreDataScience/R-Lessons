# Example with mutate, and bind_rows

# Step 1: Load libaries and data

library(readr)
library(tidyr)
library(dplyr)

sat <- read.csv("C:/Users/411647/Desktop/r Programming/Reference/dplyr examples/sat.csv")
# Or on the web: https://github.com/swirldev/swirl_courses/tree/master/Getting_and_Cleaning_Data/Tidying_Data_with_tidyr

passed <- students4 %>%
  select(name, class, final) %>%
  filter(final == "A" | final == "B")
failed <- students4 %>%
  select(name, class, final) %>%
  filter(final == "C" | final == "D" | final == "E")

#Step 2: Look at initial tables
passed 
failed 

# Step 3 Mutate to create a new column in each

passed <- passed %>% mutate(status = "passed") 
failed <- failed %>% mutate(status = "failed") 
passed 
failed

# Step 4 Combine data

bind_rows(passed,failed)