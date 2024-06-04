{
  y<- as.numeric(readline(prompt="Enter num1: "))
  x<- as.integer(readline(prompt = "Enter num2: "))
  cat(x+y)
}
class(x+y)
typeof(x+y)
# Creating a 3-dimensional array
my_array <- array(1:24, dim = c(2, 3, 4))
my_array