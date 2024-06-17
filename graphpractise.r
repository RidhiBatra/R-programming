#use ggplot2,plotly to plot bar,scatterplot,heatmap,histogram,boxplot,etc 
library(tidyverse)
library(ggplot2)
library(plotly)
d9 = read.csv(file.choose())
ggplot(data = d9, aes(x = Glucose, y = BloodPressure)) +
  geom_point()     #scatterplot

View(d9)

g_range <- range(d9$Glucose)

plot(d9$Age,  col = "purple", ylim = g_range)   

plot_ly(data = d9, x = ~Glucose, y = ~BMI) 

barplot(d9$Glucose,type="l",col="purple")
barplot(d9$Glucose,col = "blue")
plot(d9$Glucose, col="pink" )
hist(d9$BloodPressure, col="yellow")        #histogram
heatmap(d9$Pregnancies)
class(d9$Pregnancies)
typeof(d9$Pregnancies)
d9$Pregnancies = as.numeric(d9$Pregnancies)
class(d9$Pregnancies)
heatmap(d9$Pregnancies)
barplot(d9$Insulin)
hist(d9$DiabetesPedigreeFunction, col="red")   #histogram
barplot(d9$Age)
barplot(d9$Pregnancies)             #barplot           
plot_ly(x = d9$Glucose,
        y = d9$BloodPressure,
        type = "bar")             #barplot
boxplot(d9$Glucose,d9$Pregnancies,d9$BloodPressure, col="blue")   #boxplot
