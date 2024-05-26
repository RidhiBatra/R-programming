{
  n=as.integer(readline("Enter the length of array"))
  a=c()
  for(i in 1:n)
  {
    a[i] = as.integer(readline())
  }
  print(paste("Entered array is: "))
  for(i in 1:n)
  {
    print(paste(a[i]))
  }
}

#create a list of rollno , name, and Marks using arrays.
{
  arr = as.integer(readline("Entered the length of array."))
Rollno = c()
names = c()
Marks = c()
for(i in 1:arr)
{
  Rollno[i] = as.integer(readline("Enter the roll number: "))
  names[i] = readline("Enter names")
  Marks[i] = as.integer(readline("Enter marks"))
}
l1=list(Rollno,names,Marks)
l1
}

#create a matrix by taking input from user using array
{
  arr = as.integer(readline("Enter the size of a matrix n*m : "))
  data = c()
  for(i in 1:arr)
  {
    data[i] = as.integer(readline())
  }
  mat = matrix(data,nrow=3,ncol=2)
  mat
}



"""
Create a dataframe using Rollno, name and cgpa
from user input. Use arrays.
1. Display the dataframe
2. Create a file on your device with this
dataframe contents.
3. Add new rows in exiting dataframe
""" 

{
  R=c()
  N=c()
  CG=c()
  R1=c()
  N1=c()
  CG1=c()
  n=as.integer(readline("Number of students:"))
  for(i in 1:n)
  {
    R[i]=as.integer(readline("Rollno: "))
    N[i]=readline("Name: ")
    CG[i]=as.numeric(readline("CGPA: "))
  }
  d1=data.frame("Rollno"=R,"Name"=N,"CGPA"=CG)
  print(d1)
  m=as.integer(readline("How many new rows:"))
  for(i in 1:m)
  {
    R1[i]=as.integer(readline("Rollno: "))
    N1[i]=readline("Name: ")
    CG1[i]=as.numeric(readline("CGPA: "))
  }
  d2=data.frame("Rollno"=R1,"Name"=N1,"CGPA"=CG1)
  print(d2)
  d3=rbind(d1,d2)
  print(d3)
}
csv.write....
d1$Section=NULL #deleting particular column from dataframe
d1$City=c("RAJ","PB","MP") #creating column and assigning values at the same time
City1=c("RAJ","PB","MP") #creating a vector for a new column
d2=cbind(d1,City1) #using cbind adding this new column to existing dataframe
d2


# Creating a 3-dimensional array
my_array <- array(1:24, dim = c(2, 3, 4))
my_array
