query<-"SELECT HR, playerID, yearID, SO from Batting
WHERE HR>50 and SO<75"
result<-sqldf(query)

ggplot()+
  geom_point(data=result, aes(x=HR, y=SO), color="dark green", size=12)+
  xlab("Homeruns")+
  ylab("Strikeouts")+
  ggtitle("Johhny's Birthday")
  