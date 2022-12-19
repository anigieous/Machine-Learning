# Data Preprocessing

# Importing the dataset
dataset = read.csv('Data.csv')
str(dataset)

names(dataset)<- c("Country","Age","Salary","Purchased")
str(dataset)

sum(is.na(dataset))
View(dataset)

# Taking care of missing data
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Age)
dataset$Salary = ifelse(is.na(dataset$Salary),
                        ave(dataset$Salary, FUN = function(x) mean(x, na.rm = TRUE)),
                        dataset$Salary)
sum(is.na(dataset))
View(dataset)
str(dataset)