'liberary(readxl)
d1 = read_excel(file.choose())
install packages("readxl")
'
{
d1 <- read.csv(file.choose())
view(d1)
colnames(d1)[1] = "Age"
class(d1$Gender)
#convert the gender column into factor
d1$Gender=factor(d1$Gender)
str(d1)
#to remove a column in dataframe
d1 = d1[-9]
d1[3] #to show only third column
d1[3,]   #to show 3rd row and all columns
d1[,3]   #to show all rows and 3rd columns
View(as.data.frame(d1[,3]))
#minimum value from the range
min(d1$gender)
max()
mean()
median()
diff(range(d1$gender)) #to know the difference in range
range(d1$gender)
plot(d1$gender)
#to show how many categories are there like how much males and females
table(d1$gender)

}

#is.na()
#sum(is.na())
#d1 = library(readxl)
d8 = read.csv(file.choose())





#importing dataset
library(readxl)
d1=read_excel(file.choose())
View(d1)
#summary of dataset
summary(d1)
class(d1$Age)
d1$Age=as.integer(d1$Age)
is.na(d1)
is.na(d1$Age)
sum(is.na(d1))
sum(is.na(d1$Age))
missing=d1[!complete.cases(d1),]
View(missing)
missing=d1[!complete.cases(d1),4]




