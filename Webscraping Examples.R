#       R Bloggers has a number of examples of web scraping: http://www.r-bloggers.com/?s=Web+Scraping
#       The httr help file has useful examples: http://cran.r-project.org/web/packages/httr/httr.pdf
#       See later lectures on APIs

# Contents of this documnnt

#1 Use get to scrape a site without errors
#2 Get a password
#3 Use handles to keep a password in cookies



#1 Use get to scrape a site without errors
#     because the xml method fails

library(curl)
library(httr)
url <- "http://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en"
html2 = GET(url)
class(html2)

content2 = content(html2, as = "text")
class(content2)

parsedHtml = htmlParse(content2, asText = TRUE)
xpathSApply(parsedHtml, "//title", xmlValue)

# Look at website

con = url("http://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en")
htmlCode = readLines(con)

close(con)
substr(htmlCode, start = 1, stop = 1000)

#2 Get a password

pg2 = GET("http://httpbin.org/basic-auth/user/passwd", authenticate("user", 
                                                                    "passwd"))
pg2$status_code

pg2

names(pg2)


#3 Use handles to keep a password in cookies

google = handle("http://google.com")
pg1 = GET(handle = google, path = "/")
pg2 = GET(handle = google, path = "search")

