#simple Linear regression
dataset<-read.csv("Salary_Data.csv")
library(caTools)
set.seed(123)
split=sample.split(dataset$Salary,SplitRatio=0.7)
split
#splitting dataset into training and test set
training_set=subset(dataset,split==TRUE)
test_set=subset(dataset,split==FALSE)

#Fitting Simple Linear regression to training data
regressor=lm(formula=Salary~ YearsExperience,data=training_set)

#predicting the test result
y_pred=predict(regressor,newdata=test_set)

#scatterplot for training set
plot(x=training_set$YearsExperience, y=training_set$Salary,
     main="Scatterplot",xlab="Exp",ylab="Salary")

#scatterplot for test set
plot(x=test_set$YearsExperience, y=test_set$Salary,
     main="Scatterplot",xlab="Exp",ylab="Salary")

#visualizing through ggplot for training
library(ggplot2)
ggplot()+
  geom_point(aes(x=training_set$YearsExperience,
                 y=training_set$Salary),color='red')+
  geom_line(aes(x=training_set$YearsExperience,
                y=predict(regressor,newdata =training_set)),color='blue')+
  ggtitle("salary vs exp (Trainingset)")+
  xlab('Years of exp')+
  ylab("salary")

#visualizing through ggplot for test dataset
library(ggplot2)
ggplot()+
  geom_point(aes(x=test_set$YearsExperience,
                 y=test_set$Salary),color='red')+
  geom_line(aes(x=training_set$YearsExperience,
                y=predict(regressor,newdata =training_set)),color='blue')+
  ggtitle("salary vs exp (Trainingset)")+
  xlab('Years of exp')+
  ylab("salary")

# summary of the model
summary(regressor)
p <-  as.data.frame(1.5)
colnames(p) <- "YearsExperience"
predict(regressor, newdata=p)
