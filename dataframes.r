#d1 = data.frame(data)
{
v1 = c(1189,1149,2586)
v2 = c(8.9,8.4,7.5)
v3 = c("Sai","Shri", "om")
d1 = data.frame("Rollno" = v1,"CGPA" = v2, "Name" = v3)
}

'
data frame require same amount of element in all the vectors i.e the size of each element 
should be equal and having same type of datatype whereas in list the size of the elements
may vary and can have so many different types of datatypes.
'
#dataframes too having different datatypes but having same datatype in each element.
{                     #can only take numeric and character values
  d1 = data.frame()
  d2 = edit(d1)
}
{
colnames(d1)
}



#create a data frame after taking input from user for productname, price and 
#country... (1) Display the dataframe
#         (2) Display only price
#        (3) add new values in the Existing dataframe 
          



{
  a = readline("stdName = ")
  b = readline("stdName = ")
  c = readline("stdName = ")
  j = readline("stdName = ")
  k = readline("stdName = ")
  v1 = c(a,b,c,j,k)
  d = as.numeric(readline("Rollno = "))
  e = as.numeric(readline("Rollno = "))
  f = as.numeric(readline("Rollno = "))
  l = as.numeric(readline("Rollno = "))
  m = as.numeric(readline("Rollno = "))
  v2 = c(d,e,f, l,m)
  g = readline("Gender = ")
  h = readline("Gender = ")
  i = readline("Gender = ")
  n = readline("Gender = ")
  o = readline("Gender = ")
  v3 = c(g,h,i,n,o)
  d1 = data.frame("stdName" = v1,"Rollno" = v2, "Gender" = v3)
  View(d1)
  d1$Rollno #to view a particular column
 ' #Accessing Specific values from list
  l1$Rollno
  l1$Rollno[1]
  l1$Rollno[c(1,3)]
  l1$Rollno[-2]'
  
  #Deleting the element from List
  {
    l1$Rollno=l1$Rollno[-3]
    l1$CGPA=l1$CGPA[-3]
    l1$Name=l1$Name[-3]
    print(l1)
  }
}
  
  
  
  'colnames(d1)   #to view column names in character datatype
  colnames(d1)[1] = "Pname"  #to chnge column name
  #indexing always starts from 1 in R.
  d1$price[3] = 1500
  d1$price
  
  str(d1)   # str() - structure of the object and information about the class, 
              #length and content of each column.
  
  summary(d1) # summary() - summary statistics for each column. this only returns 
                #numeric or integer value only
 
}

#columns -> variables
#rows -> observations
  
  
  
  What is class and mode in R?
mode (almost the same thing) is basically the most 
complex datatype that an R object can hold as one of its values;
whereas. class is an object’s object-oriented 
  classification according to the R class hierarchy.
  
  
  d1[,-3] -> only 3rd columnn will not appear rest all rows and column
              will be displayed'

