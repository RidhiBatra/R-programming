#Basic scatterplot
library(plotly)

fig <- plot_ly(data = iris, 
               x = ~Sepal.Length, 
               y = ~Petal.Length)

fig
#styled scatterplot

fig <- plot_ly(data = iris, 
               x = ~Sepal.Length, 
               y = ~Petal.Length,
               marker = list(size = 10,
                             color = 'rgba(255, 182, 193, .9)',
                             line = list(color = 'rgba(152, 0, 0, .8)',
                                         width = 2)))
fig <- fig %>% layout(title = 'Styled Scatter')

fig


#adding color and symbols to data
fig <- plot_ly(data = iris, x = ~Sepal.Length, y = ~Petal.Length, type = 'scatter',
               mode = 'markers', symbol = ~Species, symbols = c('circle','x','o'),
               color = I('black'), marker = list(size = 10))

fig


#Using dataset diamonds and displaying color, size using column values of carat

View(diamonds)
d <- diamonds[sample(nrow(diamonds), 1000), ]
View(d)
fig <- plot_ly(
  d, x = ~carat, y = ~price,
  color = ~carat, size = ~carat
)

fig


#using toothgrowth data set show the relationship between toothlength and dose.

