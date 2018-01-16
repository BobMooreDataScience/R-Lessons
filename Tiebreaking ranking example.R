Mydata <- data.frame(hospital= c("Methodist", "Baptist","LeBohnner","StJude", "StFrancis", "VA","LittleRock", "Jackson"),
                  fname=c("Joe", "Bob", "Bill", "Tom", "Sue","Sam","Jane","Ruby"),
                  score=c(500, 490, 500, 750, 550, 500, 210, 320))
order.scores <- order(Mydata$score)
Mydata1 <- Mydata[order.scores,]
Mydata1$Score_rank <- rank(Mydata1$score)
Mydata2 <- Mydata1


order.fname <- order(Mydata2$fname)
Mydata2 <- Mydata2[order.fname,]
Mydata2$fname_rank <- rank(Mydata2$fname)
Mydata3 <- Mydata2

Mydata3$All_Rank <- Mydata3$Score_rank + 0.001*Mydata3$fname_rank 
Mydata3
