d8 = read.csv(file.choose())
library(DataExplorer)
create_report(d8)
hist(d8$DiabetesPedigreeFunction)
barplot(d8$Glucose)
barplot(d8$Age)
barplot(d8$Pregnancies,
        col = "seagreen")

#Basic Barplot in R
values <- c(0.4, 0.75, 0.2, 0.6, 0.5)
barplot(values)
#adding color
barplot(values,
        col = "seagreen")
#Horizontal Barplot
barplot(values,
        horiz = TRUE)

#Barplot with labels
group <- LETTERS[1:5]
barplot(values,
        names.arg = group)
#Stacked Barplot with Legend
data <- data.frame(A = c(0.2, 0.4),
                   B = c(0.3, 0.1),
                   C = c(0.7, 0.1),
                   D = c(0.1, 0.2),
                   E = c(0.3, 0.3))
rownames(data) <- c("Group 1", "Group 2")
data

barplot(values,
        col = c("blue", "yellow"))
legend("topright",
       legend = c("Group 1", "Group 2"),
       fill = c("#1b98e0", "#353436"))
#Grouped Barplot with Legend
barplot(values,
        col = c("purple", "seagreen"),
        beside = TRUE)
legend("topright",
       legend = c("Group 1", "Group 2"),
       fill = c("#1b98e0", "#353436"))
#Barplot in ggplot2 Package
library("ggplot2")
data_ggp <- data.frame(group, values)
ggplot(data_ggp, aes(x = group, y = values)) +
  geom_bar(stat = "identity")



#cex function , legend , fill , names.arg

#Barplot using plotly Package
library("plotly")
plot_ly(x = group,
        y = values,
        type = "bar")