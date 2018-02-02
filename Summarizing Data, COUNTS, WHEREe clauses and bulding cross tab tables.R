#Summarizing Data, COUNTS, WHEREe clauses and bulding cross tab tables



## Load data
restData <- read.csv("C:/Users/411647/Desktop/r Programming/Reference/Restaurants.csv")

## Top rows
head(restData, n=3)

#Last rows
tail(restData,n =3)

#  Summary
summary(restData)

#Structure
str(restData)

#Counts by quantile ---- note use na.rm
quantile(restData$councilDistrict,na.rm = TRUE)

# counts by your set of percents
quantile(restData$councilDistrict, probs = c(0.5,0.75,0.9) ,na.rm = TRUE)

#COUNT

##1 Create a table  to count zips  - showing any NA values
table(restData$zipCode,useNA = "ifany")

##2 Create a table  to count restaruants in a zip -- yes there is a negative zip!!
table(restData$councilDistrict,  restData$zipCode)

## Count rows (with and without) a set of zip codes 
## Think SQL
#    SELECT Count(distinct zipCode)
#    FROM restData
#    WHERE zipCode IN ("21212", "21213") 

table((restData$zipCode %in% c("21212", "21213")))

##WHERE
## Think SQL
#    SELECT *
#    FROM restData
#    WHERE zipCode IN ("21212", "21213") 

## Note you put the zip codcondition in the row position.
## the comma and then blank gets all columns
restData[restData$zipCode %in% c("21212", "21213"),]

################################################################



#Crosstabs

#Check for NA
sum(is.na(restData$councilDistrict) )

# Check to see if zips are great than zero
all(restData$zipCode >0)

# Check all columns for NA
all(colSums(is.na(restData))==0)


# Create dataframe for Berkley
data("UCBAdmissions")
DF = as.data.frame(UCBAdmissions)
summary(DF)

#Crosstabs
# count the frequency of addmisions by sex
# Gender and Admit are columns with text
# Freq is numeric
# put data  = for tha database

xt <- xtabs(Freq ~ Gender + Admit, data = DF)
xt


## And I tried it with the previous file
zip_Feq <- xtabs(councilDistrict ~ zipCode + policeDistrict, data = restData)
zip_Feq

# Create dataframe for warpbreaks
data("warpbreaks")
DF = as.data.frame(warpbreaks)
summary(DF)

#Add another variable to create a lot of matrices
warpbreaks$replicate <- rep(1:9, len =54)
xt <- xtabs(breaks ~.,data = warpbreaks)
xt

# Now combine them using the flat table function ftable
ftable(xt)

#Size of data
fakeData =rnorm(1e5)
print(object.size(fakeData), units = "Mb")



#


