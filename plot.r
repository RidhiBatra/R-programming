d1=read_excel(file.choose())
#plot the Sales using function plot 
plot(d1$Sales,y=d1$Profit,pch=8,col='red',xlab="Sales",ylab="Profit",xlim=c(-5000,20000),ylim=c(-5000,10000),type="b",main="Sales vs Profit")
#outliers:- much larger or much smaller values that are away from the mean value 
#skewness:- sea saw 
