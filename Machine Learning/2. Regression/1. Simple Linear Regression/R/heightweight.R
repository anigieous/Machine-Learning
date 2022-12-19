dataset=read.csv("sales.csv")
str(dataset)

library(caTools)
set.seed(123)


split=sample.split(dataset$Online.Advertising.Dollars,SplitRatio = 0.7)
train=subset(dataset,split==TRUE)
test=subset(dataset,split==FALSE)

regressor=lm(formula=Online.Advertising.Dollars ~ Monthly.E.commerce.Sales,data = train)

ypredict=predict(regressor,newdata = train)

library(ggplot2)

ggplot(data = train,aes(x=Monthly.E.commerce.Sales,y=Online.Advertising.Dollars))+geom_line(colour='Orange')+
  geom_point(aes(x=Monthly.E.commerce.Sales,y=Online.Advertising.Dollars),colour='red')+
  geom_line(aes(x=Monthly.E.commerce.Sales,y=ypredict),colour='blue')+
  xlab("sales")+ylab("advertising")+ggtitle("sales vs advertising (training)")

ggplot()+
  geom_point(aes(x=test$Monthly.E.commerce.Sales,y=test$Online.Advertising.Dollars),colour='red')+
  geom_line(aes(x=train$Monthly.E.commerce.Sales,y=ypredict),colour='blue')+
  xlab("sales")+ylab("advertising")+ggtitle("sales vs advertising (testing)")

result=as.data.frame(1000)
colnames(result)="Monthly.E.commerce.Sales"
predict(regressor,newdata = result)