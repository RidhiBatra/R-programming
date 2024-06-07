

#Implement functions of dplyr package on
#house dataset.
#Create a new column to know the price/rooms
d1=read.csv(file.choose())
View(d1)
table(d1$rooms)
library(dplyr)
View(mutate(d1,x3=price/rooms))
#Handling missing values in age column
sum(is.na(d1$age))
--Get the mean of the column and replace NA
with mean.
d1$age=ifelse(is.na(d1$age),
              mean(d1$age,na.rm=T),
              d1$age)
sum(is.na(d1$age))
#Display the mean price of house based on Bathrooms available.
table(d1$bathrooms)
sort(tapply(d1$price,d1$bathrooms,mean),decreasing=T)
#Display the house details where waterfront is there.
library(sqldf)
View(sqldf("select * from d1 where waterfront='Yes'"))
#Plot the lot_size in line graph, line color=red
plot(d1$lot_size,type = "l",col='red')
#plot the bar graph horizontally for lot_size
barplot(d1$lot_size,horiz = T)
library(plotly)
plot_ly(x = d1$rooms,                                    
        y = d1$price,
        type = "bar")


