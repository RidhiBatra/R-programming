#Matrix
{
  values = c(1,2,3,4,5,6,7,8,9)
  m1 = matrix(values,nrow = 3,ncol = 3)
  m1
} #columnmajor by default
#for row major pass an argument "byrow=1" 


#create a program to take 2 matricesfrom user, take the
#matrix size and values as user input and perform arithmetic operation.
{
  x=as.integer(readline('Enter start value for mat1: '))
  y=as.integer(readline('Enter end value for mat1: '))
  r1=as.integer(readline('Rows: '))
  c1=as.integer(readline('Columns: '))
  a=as.integer(readline('Enter start value mat2: '))
  b=as.integer(readline("Enter end value mat2: "))
  r2=as.integer(readline("Rows: "))
  c2=as.integer(readline("columns: "))
  mat1=matrix(data=c(x:y),r1,c1)
  mat2=matrix(data=c(a:b),r2,c2)
  mat1
  mat2
  #mat1+mat2
  #mat2-mat1
  mat1*mat2
  #mat2/mat1
}

