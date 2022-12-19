#data structures in R
#VECTORS-store ordered set of values, values should be of specific(same) type only
subject_name <- c("John","Jane","Smith","Jia")
temperature <- c (98.1,98.6,101.4,97.2)
flu_status <- c(FALSE,FALSE,TRUE,FALSE)

#all values in a vector
subject_name
temperature
flu_status

#specific values
subject_name[2]

#2nd index value will be excluded from the result
temperature[c(-2,-4)]

#range including both
temperature[1:2]

#TO PRINT first two values:
temperature[c(TRUE,TRUE,FALSE,FALSE)]

#factor: nominal values will be presented 
gender<- factor(c("MALE","FEMALE","MALE","FEMALE"))
gender

blood<-factor(c("O","AB+","O","AB+"))
blood
              
blood<-factor(c("O","AB+","O","AB+"),levels=c("A","B","AB","AB+","O","O+"))
blood

#LIST:different datatypes
subject1<- list(fullname=subject_name[1],
                temperature=temperature[1],
                gender=gender[1],
                blood=blood[1])
subject1

#specific value from list:
subject1$fullname

#data frames: list of vectors or factors
data1<- data.frame(subject_name,temperature,flu_status,
                   gender,blood,stringsAsFactors = FALSE)
data1

data1$subject_name
#all rows from first column
data1[,1]

#all columns from first row
data1[1,]

data1[c(1,3),c("temperature","gender")]

data1[-2,c(-1,-3,-5)]

data1[c(1,3),c(2,4)]

#matrices:
mat<-matrix(c('A','B','C','D','E','F'),nrow = 2)
mat

mat<-matrix(c('A','B','C','D','E','F'),ncol = 2)
mat

mat[,1]


