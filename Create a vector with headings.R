
headers <- c("id","nobs")
Values2 <- as.data.frame(matrix(,0,length(headers)))
names(Values2)[1] <- "id"
names(Values2)[2] <- "nobs"
Values2

colClasses = c("numeric","numeric")
col.names = c("id","nobs")

Values2 <- read.table(text = "",
                 colClasses = colClasses,
                 col.names = col.names)
Values2