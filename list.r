#Lists: Holds different datatypes without any type conversion.
x<-list(2.5,TRUE,1:3)
x 
y=list(vector1=c(1:5),vector2=c("a","b","c"))
y
y[1]
y["vector1"]
y[[1]]
y$vector2


{
list1 = c(8L,9.5,"Riddhi",1:3)
list1
}
{
y=list(vector1=c(1:5),vector2= c("a","b","c"))
y[1]
class(y$vector2)
class(y$vector1)
}


#write a program to take 3 different vectors and put the vectors
#into a list. display the vectors seperately with their datatypes.

{
  x<-as.integer(readline(prompt = "enter num1: "));
  y<-as.character(readline(prompt = "enter num2: "));
  z<-as.numeric(readline(prompt = "enter num3: "));
  a<-as.logical(readline (prompt = "enter num4: "));
  b<-as.integer(readline(prompt = "enter num5: "));
  c<-as.character(readline(prompt = "enter num6: "));
  v1=c(x,y)
  v2=c(z,a)
  v3=c(b,c)
  l=list(v1,v2,v3)
  l
  class(l$v1)
}



#another example
#Write a program to take 3 different datatype
#vectors and put them into a list.
{
  a=as.integer(readline())
  b=as.integer(readline())
  v1=c(a,b)
  c=as.numeric(readline())
  d=as.numeric(readline())
  v2=c(c,d)
  e=readline()
  f=readline()
  v3=c(e,f)
  l1=list("Rollno"=v1,"CGPA"=v2,"Name"=v3)
  print(l1)
  cat("Datatype of Rollno",
      class(l1$Rollno),"Datatype of CGPA",class(l1$CGPA),
      "Datatype of Name",class(l1$Name),sep="\n")

}


#how to add new element into the list  (bydefault the datatype will be numeric.)
{
  n=as.integer(readline("Insert element: "))
  l1$Rollno[3]=n
}
#viewing/accessing the element from list
{
l1$Rollno
l1$Rollno[1]
l1$Rollno[c(1,3)]
l1$Rollno[-2]
}

#deleting elements from the list
{
  l1$Rollno=l1$Rollno[-3]
  l1$CGPA=l1$CGPA[-3]
  l1$Name=l1$Name[-3]
  print(l1)
}

 

