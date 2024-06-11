
{
name = (readline("Enter your name: "))
age = as.integer(readline("Enter your age: "))
paste("My name is ",name, "and I am",age, " years old.")
print(ls())
print(ls.str())     #to print the details of the data/object
}

{
  print(seq(20,50))
  print(mean(20:50))
  print(sum(51:91))
}

#fibonacci series print
{
fibonacci <- function(n)
  if(n <= 0)
  {
    return("Enter a positive number")
  }
else if (n == 1){
  return(0)
}
else{
  fib_series = numeric(n)
  fib_series[1] = 0
  fib_series[2] = 1
  for(i in 3:n){
    fib_series[i] <- fib_series[i-1]+fib_series[i-2]
  }
  return(fib_series)
}
print(fibonacci(10))
}




#prime number
{
get_prime <- function(n){
  primes <- c()
for(i in 2:n){
  is_prime = TRUE
  for(j in 2:sqrt(i)){
    if(i %% j == 0){
      is_prime = FALSE
      break
    }
  }
  if(is_prime){
    primes = c(primes,i)
  }
}
  return(primes)
}
n = as.numeric(readline("Enter a number: "))
prime_numbers <- get_prime(n)
print(prime_numbers)
}


'Write a R program to print the numbers from
1 to 100 and print "Fizz" for multiples of 3, 
print "Buzz" for multiples of 5,
and print "FizzBuzz" for multiples of both.'
{
  for(n in 1:100){
    if(n %% 3 == 0 & n%%5 == 0)
    {
      print("FizzBuzz")
    }
    else if(n%%3==0){
      print("Fizz")
    }
    else if(n%%5==0){
      print("buzz")
    }
    else{
      print(n)
    }}
}  


'Write a R program to extract first 10 english letter
in lower case and last 10 letters in upper case and extract letters 
between 22nd to 24th letters in upper case.'

t = head(letters,10)
print(t)
h = tail(LETTERS,10)
print(h)
i = tail(LETTERS[22:24])
print (i)

'Write a R program to find the factors of a given number. '
{
  print_factors = function(n){
    n= as.numeric(readline("Enter a number: "))
  for(i in 1:n){
    if(n %% i== 0){
      print(i)
    }
  }
}
print_factors(n)
}


'Write a R program to find the maximum and the minimum value of a given vector. '
n = c(10,52.3,0,9.2,36,40)
print(max(n))
print(min(n))

'Write a R program to get the unique elements of a given string 
and unique numbers of vector.'
{
str1 = readline("Enter a string")
print(unique(tolower(str1)))
r = c(1,2,6,4,2,3,2,5,1)
print(unique(r))
}

'Write a R program to create three vectors a,b,c with
3 integers. Combine the three vectors to become 
a 3×3 matrix where each column represents a vector.
Print the content of the matrix. '
a = c(1,2,3)
b = c("sia","ria",20.3)
c= c("ram",26.4,"phoytio")
n = rbind(a,b,c)
print(n)
class(n)
y = c(1,20)
v = c(23,5)
u = cbind(y,v)
print(u)
class(u)
typeof(u)
typeof(n)


' Write a R program to create a list of random
numbers in normal distribution and count 
occurrences of each value.'
n=floor(rnorm(1000,50,100))
print(n)
t=table(n) #counting each occurance
print(t)


'Write a R program to create a 5 x 4 matrix ,
3 x 3 matrix with labels and fill the matrix by
rows and 2 × 2 matrix 
with labels and fill the matrix by columns. '
m1 = matrix(1:20,nrow=5,ncol=4)
print(m1)
cells = c(1,3,5,7,8,9,11,12,14)
rnames = c("Row1", "Row2", "Row3")
cnames = c("Col1", "Col2", "Col3")
m2 = matrix(cells, nrow=3, ncol=3, byrow=TRUE, dimnames=list(rnames, cnames))
print("3 × 3 matrix with labels, filled by rows: ")
print(m2)
print("3 × 3 matrix with labels, filled by columns: ")
m3 = matrix(cells, nrow=3, ncol=3, byrow=FALSE, dimnames=list(rnames, cnames))
print(m3)


'Write a R program to create an array, passing in a vector of values 
and a vector of dimensions. Also provide names for 
each dimension.'
a = array(6:30,dim = c(4,3,2),dimnames = list(c("col1","col2",'col3',"col4"),c("row1","row2","row3"),c("part1",'part2')))
print(a)

'Write a R program to create an array with three columns, three rows,
and two "tables", taking two vectors as input to 
the array. Print the array.'
v1 = c(1:9)
v2 = c(5:13)
arra1 = array(c(v1,v2),dim = c(3,3,2))
print(arra1)

'Write a R program to create a list of elements using vectors, matrices and a functions.
Print the content of the list. '
v1 = c(1,2,3,4,5)
m1= matrix(1:9,nrow = 3,ncol = 3)
my_function = function(x){
  return(x^2)
}
l1 = list(v1,m1,my_function)
print(l1)


'Write a R program to draw an empty plot and an empty plot
specify the axes limits of the graphic.'
plot.new()
plot(1,type="n",xlab = "" , ylab = "" , xlim=c(0,20) ,ylim=c(0,20))


'Write a R program to create a simple 
bar plot of five subjects marks.'
marks = c(10,20,53,82,12)
barplot(marks,main = "Compairing marks of 5 subjects",xlab="marks",ylab = "Subject",names.arg=c("English","Maths","Hindi","Science",'SSt'),col = "pink")


'Write a R program to compute sum, mean and product of a given vector elements.'
v1 = c(1,2,3,4)
print(sum(v1))
print(mean(v1))
print(prod(v1))

' Write a R program to create a Dataframes which contain details of 5 
employees and display the details. '
Employees = data.frame(Name=c("Anastasia S","Dima R","Katherine S", "JAMES A","LAURA MARTIN"),
                       Gender=c("M","M","F","F","M"),
                       Age=c(23,22,25,26,32),
                       Designation=c("Clerk","Manager","Exective","CEO","ASSISTANT"),
                       SSN=c("123-34-2346","123-44-779","556-24-433","123-98-987","679-77-576")
)
print("Details of the employees:")                      
print(Employees)


'Write a R program to create the systems idea of the current date with and without time.'
print("System's idea of the current date with and without time:")
print(Sys.Date())
print(Sys.time())


'Write a R program that creates a for loop to print numbers from 1 to 10.'
for(i in 1:10){
    print(i)
}

'Write a R program that creates while loop to calculate the factorial of a given number.'
n = as.integer(readline("enter a number to calculate factorial: "))
factorial = 1
counter = n
while(counter>0){
  factorial = factorial * counter
  counter = counter -1
}
print(factorial)

'Write a R program function to find the sum of all even numbers between two given numbers using a for loop.'
{
start_num = as.integer(readline("Enter the starting number: "))
end_num = as.integer(readline("Enter the end number: "))
even_sum = 0
for(num in start_num:end_num){
  if(num %%2 == 0){
    even_sum = even_sum + num
  }
}
print(even_sum)
}


'Write a R program to print the Fibonacci series using a while loop.'

{
  limit = as.integer(readline("Enter the limit of fibonacci number: "))
a = 0
b = 1
cat(a,b ,sep = " ")
while(b<=limit){
  next_num = a+b
  cat(next_num,sep = " ")
  a = b
  b=next_num
}
cat("\n")
}


'Write a R program function to check if a given number is prime using a while loop.'
number <- as.integer(readline(prompt = "Enter a number to check if it's prime: "))
is_prime <- TRUE
divisor <- 2

while (divisor <= sqrt(number) && is_prime) {
  if (number %% divisor == 0) {
    is_prime <- FALSE
  }
  divisor <- divisor + 1
}
if (is_prime && number > 1) {
  cat(number, "is a prime number.\n")
} else {
  cat(number, "is not a prime number.\n")
}


'Write a R program to print the multiplication table of a given number using a for loop.'
{n= as.integer(readline("enter a number: "))
for(i in 1:10){
  cat(n,"*" ,i,"=",n*i,"\n")
}
}

'Write a R program function to calculate the nth term of the Fibonacci series using recursion.'
{
  fibonacci <- function(n) {
  if (is.na(n) || n <= 1) {
    return(n)
  } else {
    return(fibonacci(n - 1) + fibonacci(n - 2))
  }
}

n <- as.integer(readline(prompt = "Enter a number: "))
result <- fibonacci(n)
print(result)
}

'
Write a R program function to compute the sum of cubes of numbers from 1 to n using a for loop.'
{
n = as.integer(readline("Enter a positive Integer (n): "))
sum = 0
for(i in 1:n){
  sum = sum+i^3
}
print(sum)
}

'gcd of a number'
{
num1=as.integer(readline("enter first number: "))
num2= as.integer(readline("enter second number: "))
gcd = function(num1,num2){
  if( num2 == 0){
    return (num1)
  }else{
    return(gcd(num2,num1%%num2))
  }
}
print(gcd(num1,num2))
}

'Write a R program to find the sum of all elements in an array using a for loop.'
n <- as.integer(readline("Enter the number of elements in the array: "))
my_array <- numeric(n)
for (i in 1:n) {
  my_array[i] <- as.numeric(readline(paste("Enter element", i, ": ")))
}
total_sum <- 0
for (i in 1:n) {
  total_sum <- total_sum + my_array[i]
}
cat("Sum of all elements in the array:", total_sum, "\n")

'Write a R program to create an array of two 3x3 matrices each with 3 rows and 3 columns from two given two vectors.'
v1=c(1,2,3,4,6,5,7,8,9)
v2=c(11,12,13,14,15,16,17,18,19)
v3=array(c(v1,v2),dim=c(3,3,2))
print(v3)

'Write a R program to create an array of two 
3x3 matrices each with 3 rows and 3 columns 
from two given two vectors. Print the second 
row of the second matrix of the array and the 
element in the 3rd row and 3rd column of the 1st matrix. '

v1=c(1:9)
v2=sample(6:15)
v3=array(c(v1,v2),dim=c(3,3,2))
  print(v3)
  print(v3[2,,2])#2nd row and 2nd matrix
print(v3[3,3,1])  #2nd row 2nd column and 1st matrix

'Write a R program to combine three arrays so that the
first row of the first array is followed by the first row 
of the second array and then first row of the third array'
array1 = matrix(1:9,nrow=3,ncol=3)
array2 = matrix(10:18,nrow=3,ncol=3)
array3 = matrix(19:27,nrow=3,ncol=3)
combined_array = matrix(c(array1[1,],array2[1,],array3[1,]),ncol=3,nrow=3)
print(combined_array)

'Write a R program to create a two-dimensional 5×3 array of sequence
of even integers greater than 50.'
a <- array(seq(from = 50, length.out = 15, by = 2), c(5, 3))
print(a)

"to extract the first two rows from the dataframe"
print("Extract first two rows:")
result =  exam_data[1:2,]


print("Extract 3rd and 5th rows with 1st and 3rd columns :")
result =  exam_data[c(3,5),c(1,3)]

"Write a R program to drop row(s) by number from a given data frame."
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print("Original dataframe:")
print(exam_data)
exam_data <- exam_data[-c(2, 4, 6), ]
print(exam_data)


# data can be sorted  by using order or arrange function available in dplyr package
print("Elements which are present in both dataframe:")
result = intersect(a, b)

print("Duplicate elements of the said data frame:")
print(duplicated(ab))
print("Unique rows of the said data frame:")
print(unique(ab))


data[,c("Solar.R")]=NULL
data[,c("Wind")]=NULL
print("data.frame after removing 'Solar.R'  and 'Wind' variables:")
print(data)

'Write a R program to extract the submatrix whose rows have column value > 7 from a given matrix.'
result = M[M[,3] > 7,]


'Write a R program to convert a matrix to a 1 dimensional array.'
row_names = c("row1", "row2", "row3", "row4")
col_names = c("col1", "col2", "col3", "col4")
M = matrix(c(1:16), nrow = 4, byrow = TRUE, dimnames = list(row_names, col_names))
print("Original Matrix:")
print(M)
result = as.vector(M)
print("1 dimensional array (column wise):")
print(result)
result = as.vector(t(M))
print("1 dimensional array (row wise):")
print(result)


'Write a R program to rotate a given matrix 90 degree clockwise rotation.'
x =  matrix(1:9, 3)
print("Original matrix:")
print(x)
rotate = t(apply(x, 2, rev))
print("Rotate the said matrix 90 degree clockwise:")
print(rotate)


x = c(10, NULL, 20, 30, NA)
print("Sum:")
#ignore NA and NaN values
print(sum(x, na.rm=TRUE))


print("Sort in descending order:")
print(sort(x, decreasing=TRUE))

print("Test whether above vector contains 25:")
print(is.element(25, x))

e = lapply(x, '[[', 2)
print("Second element of the nested list:")

print("Remove the second element of the list:")
list_data[2] = NULL

print("Update the last element of the list:")
list_data[3] =  "R programming"

print("Convert the lists to vectors:")
v1 = unlist(n1)
v2 = unlist(c1)

#to convert datafram into a list
df1 = data.frame(
  name=c("Ridhi","Shreaya","Aarchie"),
  gender  = c("Female","Female","Female"),
  score = c(6.3,5.0,6.8)
)
print(df1)
list = split(df1,seq(nrow(df1)))
print(list)


#to assign null value to list
l=list(1,2,3,4,5)
print(l)
l[2]=NULL
l[3]=NULL
print(l)



#to print the distinct element from l2 not present in l1
setdiff


#write the R program to extract the five of the levels of factor created from a 
#random sample from the LETTERS

L=sample(LETTERS,size=50,replace=TRUE)
print(L)
f=factor(L)
print(f)
print(table(L[1:5]))
