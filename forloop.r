#write a program to display the multiplication table for given number
{
n = as.integer(readline("enter a number: "))
m = as.integer(readline("Till which factor you want to multiply: "))
for(i in 1:n )
{
  cat(n,"X",i,"=",n*i)
  cat("\n")
}
}



#write a program to print the n natural numbers in reverse
{
  n= as.integer(readline("enter a number: "))
  for(i in n:1)
 {
    cat(i)
 }
}


#write a program to print the pattern
for(i in 1:4)
{
  for (j in 1:i)
  {
  cat("*")
  }
  cat("\n")
}


#print the pattern: (ask user for no. of rows)
{
n = as.numeric(readline("Enter a number"))
for(i in n:1)
{
  for(j in 1:i)
  {
    cat("*")
  }
  cat("\n")
}
}


{
n=as.integer(readline("columns: "))
for(i in n:1)
{
  for(j in 1:i)
  {
    cat("*")
  }
  cat("\n")
}
}
