#write a program to take input from the user Display 
#the variable value and its datatypes
x<-as.integer(readline(prompt = "enter num1: "));
y<-as.character(readline(prompt = "enter num2: "));
z<-as.numeric(readline(prompt = "enter num3: "));
a<-as.logical(readline (prompt = "enter num4: "));
class(z)



#take two vectors and perform addition
{
v1 = c(10L,58,"Lpu")
v2 = c(25,85.3,48L,"RIDHI",TRUE)
v3 = v1 + v2
print(v3)
}

{
v1= c(20,58,75)
v2 = c(85,69,25,45,14)
cat("v1 vector is: ",v1,"\nv2 vector is: ",v2)
}


{
num1 = as.numeric(readline("Enter number in v1: "))
num2 = as.numeric(readline("Enter another number in v1: "))
v1 = c(num1,num2)
num3 = as.numeric(readline("Enter number in v2: "))
num4 = as.numeric(readline("Enter another number in v2: "))
v2 = c(num3,num4)
print(v1+v2)
}

#it is not necessary to use prompt argument...





#write a program to input from userfor different dattypes and
#create a vector. check the class of the vector.
{
num1=as.numeric(readline('Enter num1 in v1: '))
num2 = as.character(readline("Enter num2 in v2: "))
v1=c(num1,num2)
num3 = as.integer(readline("Enter num3 in v2: "))
num4 = as.logical(readline("Enter num4 in v2: "))
v2= c(num3,num4)
cat(v1,v2)
class(v1)
class(v2)
}                  

