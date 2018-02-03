# Notes from the Grouping and Chaining with dplyr swirl class

#The benefit of %>% is that it allows us to chain the function calls in a linear fashion. The
# code to the right of %>% operates on the result from the code to the left of %>%.

# 22    Get the data set cran

# 23    select() the following columns from cran:
#       ip_id, country, package, size
#
#               Keep in mind that when you're using the chaining operator, you don't
#               need to specify the name of the data tbl in your call to select().

# 24    Use mutate() to add a column called size_mb that contains
#       the size of each download in megabytes (i.e. size / 2^20)

# 25    Use filter() to select all rows for which size_mb is
#       less than or equal to (<=) 0.5.

# 26     Use arrange() to sort the result by size_mb, in descending order.

cran %>%
  select(ip_id, country, package, size) %>%
  mutate(size_mb = size / 2^20) %>%
  filter(size_mb <= 0.5) %>%
  arrange(desc(size_mb))
