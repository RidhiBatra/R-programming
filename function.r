#functions
{
  n = as.integer(readline("Enter a number: "))
  EvenOdd<-function(n)
  {
  if(n==0)
  {
     print("zero!!")
  }
  else if(n>0)
  {
    print("Positive Number..")
  }
  else
  {
    print("Negative Number..")
  }
  }  
  cat(EvenOdd(n))
}




#to check whether the number is even or odd
{
  n = as.integer(readline("Enter a number: "))
  EvenOdd<-function(n)
  {
    if(n%%2==0)
    {
      print("Even number")
    }
    else
    {
      print("Odd Number")
    }
  }  
  cat(EvenOdd(n))
}


#calculate the area of circle, rectangle and perimeter of rectangle
{
  r=as.integer(readline("enter the radius for the circle: "))
  l=as.integer(readline("enter length: "))
  b=as.integer(readline("enter breadth: "))
  areaOfCircle=function(r)
  {
    return (pi*r*r)
  }
  areaOfRectangle=function(l,b)
  {
    return (l*b)
  }
  perimeterOfRectangle=function(l,b)
  {
    return (2*(l+b))
  }
  cat("Area of circle: ",areaOfCircle(r),"\n")
  cat("Area of rect:",areaOfRectangle(l,b),"\n")
  cat("Perimeter:",perimeterOfRectangle(l,b),"\n")
}

#check if the entered number is prime or not
{
  n=as.integer(readline("enter a number: "))
  count =0
  i=2
  primeOrNot<-function(n)
  {
    for(i in 2:n-1)
    {
      if(n%%i==0)
      {
        count=count+1
        break
      }
      else
      {
        count = 0
      }
    }
    if(count>0)
    {
      return ("not a prime numbr")
    }
    else
    {
      return ("prime number")
    }
  }
  cat(primeOrNot(n))
}


#calculate the sum of squares of numbers
{
  n=as.integer(readline("enter a number"))
  a=0
  for(i in 1:n)          #i in c(1,2,5,7,11,....)
  {
    a=a+(i*2)
  }
  print(paste(a))
}




#create the dataframe including name, cgpa and rollnumber using functions
{
  n=as.integer(readline("No. of Students: "))
  details=function(n)
  {
    a=c()
    b=c()
    c=c()
    for(i in 1:3){
      a[i]=as.character(readline("enter the Name: "))
    b[i]=as.integer(readline("enter Roll_no: "))
    c[i]=as.integer(readline("enter cgpa: "))
    }
    d1=data.frame("RollNo"=b,"Name"=a,"Cgpa"=c)
    View(d1)
  }
  details(n)
}
