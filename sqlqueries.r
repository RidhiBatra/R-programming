#import Sample Superstore.xlxs file
library(readxl)
d1 = read_excel(file.choose())
View(d1)
d1=d1[c(-2,-6,-14)]
colnames(d1)[7]="Country" #relabeling
colnames(d1)[9] = "State"
library(sqldf)
View(sqldf("select * from d1"))
View(sqldf("select * from d1 where segment = 'Consumer' "))
View(sqldf("select * from d1 where segment = 'Consumer' and State='Texas' "))
View(sqldf("select Segment,State,Sales from d1 where segment = 'Consumer' "))
table(d1$Segment) #to know the categories in segment section
colnames(d1)[1]="Row_Id"
colnames(d1)[2]="Order_Date"
colnames(d1)[3]="Ship_Date"
colnames(d1)[4]="ShipMode"
colnames(d1)[5]="Customer_name"
colnames(d1)[10]="Postal_Code"
colnames(d1)[14]="Product_Name"
#space in column names could not be entertained in sqldf
#for descending order in sales
d2 = View(sqldf("select Segment,State,Sales from d1 where segment = 'Consumer' order by Sales desc "))
#write the sq; query to extract the rows with the city name starting with H
View(sqldf("Select * from d1 where City like 'H%' "))
#statrtin with H and ending with n
View(sqldf("Select * from d1 where City like 'H%n' "))

#aggregate functions
#overall sales for the entire dataframe
View(sqldf("select sum(Sales) from d1 "))

#overall sales and profit for the category office supplies
View(sqldf("select sum(Sales),sum(profit) from d1 where Category = 'Office Supplies'"))
  

#nested queries
#select the rows with Region where the Profit is Maximum
View(sqldf("select Region from d1 where Profit=(select max(Profit) from d1)"))
     
#Region and sum of sales from dataset, group by region
View(sqldf("select Region,sum(Sales) from d1 group by Region"))

#display the unique states from the dataset
View(sqldf("select distinct State from d1"))

#plot the Sales using function plot 
plot(d1$Sales,y=d1$Profit,pch=8,col='red',xlab="Sales",ylab="Profit",xlim=c(-5000,20000),ylim=c(-5000,10000),type="b",main="Sales vs Profit")
#outliers:- much larger or much smaller values that are away from the mean value 
#skewness:- sea saw 
