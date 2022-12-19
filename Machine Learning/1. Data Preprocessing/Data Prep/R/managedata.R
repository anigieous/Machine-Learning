#exploring the structure of data
dataset<-read.csv("Mall_Customers.csv")
str(dataset)
#exploring the numeric data using 5-number summary
summary(dataset$Age)
# 0%  25%   50%  75%  100%
mean(dataset$CustomerID)
median(dataset$CustomerID)
range(dataset$Age)

diff(range(dataset$Age))

#Boxplot: visualise the summary of the dataset variables
boxplot(dataset$Age, main="Boxplot of age of customers",ylab="Age")

#Histograms- unequal dataset values
hist(dataset$Age,main="Boxplot of age of customers", xlab="Age")

#Measuring the spread of data: Variance and standard deviation
var(dataset$Age)
sd(dataset$Age)

#when variance is larger-data is more spread around the mean, SD-tells how much 
#each value differ from the mean

#exploring categorical variables
table(dataset$Age)
age<-table(dataset$Age)
prop.table(age)
sum(table(dataset$Age))

summary(dataset)









