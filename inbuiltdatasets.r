{
a=as.integer(readline('Enter start value mat1: '))
b=as.integer(readline("Enter end value mat1: "))
r2=as.integer(readline("Rows: "))
c2=as.integer(readline("columns: "))
mat=matrix(c(a:b),r2,c2)
mat
}
apply(mat,1,mean) #1 for representing, 2 for columns
apply(mat,c(1,2),sum) # sum for rows and columns

#lapply() helps us in applying list objects, vectors , matrix
#whether it is categorical or continuous
#continuous: least occurences 
#categorical:   most occurences with least column number
View(mtcars)      #inbuilt dataset
library(Mass)
View(rock)
d1=iris     #inbuilt data set without any library




d4=mtcars
View(mtcars)
lapply(d4,table)
sapply(d4,table)
#apply table in all over one go throughout the column
#table function show the number of occurences in each value
#sapply() focused on statistical or mathematical function


library(tidyverse)
View(diamonds)
#apply tapply function to get average price  for each cut of diamond
tapply(diamonds$price , diamonds$cut, mean)



#implement function of dplyr package on house dataset. Create a new column to know the price
library(dplyr)
d7=read.csv(file.choose())
View(d7)
table(d7$rooms) #rooms available in particular values
mutate(d7, x3=price/rooms)#a new column can be added on the based of existing column


#handling missing values in age column
sum(is.na(d7$age))
d7$age=ifelse(is.na(d7$age,na.rm=T),d7$age)    #handling missing value
#display the price of house based on bathrooms
table(d7$bathrooms)
tapply(d7$price, d7$bathrooms,mean)
sort(tapply(d7$price, d7$bathrooms,mean),decreasing =T)
#display those records where water front is there
library(sqldf)
View(sqldf("select * from d7 where waterfront = 'Yes'"))
 #plot the lot_size in line graph, line color=lavender
plot(d7$lot_size, type = "l", col="lavender", main = "Lot size line graph")
barplot(d7$lot_size,horiz=T,col="blue")
library(plotly)
plot_ly(x=d7$rooms,y=d7$price, type = "bar")
