

dates <-as.Date(out2$Date, format="%m/%d/%Y")

# get most recent date
max(dates)
# sort
sort(dates, increasing=T)