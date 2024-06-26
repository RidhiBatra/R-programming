### bar chart ####
library(tidyverse)
View(mpg)
table(mpg$class)
ggplot(mpg) +
  geom_bar(aes(x = class))


#### scatter plot diagram #########
library(ggplot2)
View(mtcars)
ggplot(mtcars, aes(x = drat, y = mpg)) +
  geom_point()

### line chart #####
library(ggplot2)

val <-data.frame(course=c('DSA','C++','R','Python'),
                 num=c(77,55,80,60))
ggplot(data=val, aes(x=course, y=num,group=1)) +
  geom_line()+
  geom_point()

#### pie chart #######
df <- data.frame(value = c(10, 23, 15, 18),
                 group = paste0("G", 1:4))
ggplot(df, aes(x = "", y = value, fill = group)) +
  geom_col(color = "black") +
  coord_polar(theta = "y")
#### Donut Chart ###
library(ggplot2)
library(dplyr)

df <- data.frame(value = c(10, 30, 32, 28),
                 group = paste0("G", 1:4))#The paste0() is a built-in R function used to concatenate all elements without a separator
# Increase the value to make the hole bigger
# Decrease the value to make the hole smaller
hsize <- 4

df <- df %>% 
  mutate(x = hsize)

ggplot(df, aes(x = hsize, y = value, fill = group)) +
  geom_col() +
  coord_polar(theta = "y") +
  xlim(c(0.2, hsize + 0.5))


ggplot(df, aes(x = hsize, y = value, fill = group)) +
  geom_col() +
  coord_polar(theta = "y") +
  xlim(c(0.2, hsize + 0.5))




## Heat map #####
library(ggplot2)
library(reshape2)

df <- read.csv("bestsellers1.csv")

data <- cor(df[sapply(df,is.numeric)])

data1 <- melt(data)

ggplot(data1, aes(x = Var1,
                  y = Var2,
                  fill = value))+geom_tile()



