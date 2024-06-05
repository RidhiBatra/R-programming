'''
1.CReate a dataset having 4 rowa for order id ,custname,city and amount.
2.Ask the user for number of new enteries and add them in the data set as per need
'''
{
  a = as.numeric(readline("order id = "))
  b = as.numeric(readline("order id = "))
  c= as.numeric(readline("order id = "))
  v1 = c(a,b,c)
  d = readline("custname = ")
  e = readline("custname = ")
  f = readline("custname = ")
  v2 = c(d,e,f)
  g = readline("city = ")
  h = readline("city = ")
  i = readline("city = ")
  v3 = c(g,h,i)
  j = as.numeric(readline("amount = "))
  k = as.numeric(readline("amount = "))
  l= as.numeric(readline("amount = "))
  v4 = c(j,k,l)
  d1 = data.frame("order id" = v1,"custname" = v2, "city" = v3, "amount" = v4)
}






{
  oid=c()
  cn=c()
  ci=c()
  amt=c()
  for(i in 1:4)
  {
    oid[i]=as.numeric(readline("order id: "))
    cn[i] = readline("customer name : ")
    ci[i]=readline("city : ")
    amt[i] = as.numeric(readline("amount : "))
  }
  d1 = data.frame("Order_Id"=oid,"city"=ci,"customer name"=cn,"amount"=amt)
  d1

print(class(d1$City[3]))
d1$City[3]="Delhi"
n=as.integer(readline("How many new rows? "))
oid1=c()
cn1=c()
ci1=c()
amt1=c()
for(i in 1:n)
{
  oid1[i]=as.numeric(readline("order id: "))
  cn1[i]=readline("Customer name: ")
  ci1[i]=readline("City: ")
  amt1[i]=as.numeric(readline("Amount: "))
}
d2=data.frame("Order_Id"=oid1,"Customer_Name"=cn1,
              "City"=ci1,"Amount"=amt1)
d1=rbind(d1,d2)
}



#Other way 

{
  oid=c()
  cn=c()
  ci=c()
  amt=c()
  for(i in 1:4)
  {
    oid[i]=as.numeric(readline("order id: "))
    cn[i]=readline("Customer name: ")
    ci[i]=readline("City: ")
    amt[i]=as.numeric(readline("Amount: "))
  }
  d1=data.frame("Order_Id"=oid,"Customer_Name"=cn,
                "City"=ci,"Amount"=amt)
  View(d1)
  print(class(d1$City[3]))
  d1$City[3]="Delhi"
  n=4
  m=as.integer(readline("How many new rows? "))
  for(i in n+1:n+m)
  {
    oid[i]=as.numeric(readline("order id: "))
    cn[i]=readline("Customer name: ")
    ci[i]=readline("City: ")
    amt[i]=as.numeric(readline("Amount: "))
  }
  d1=data.frame("Order_Id"=oid,"Customer_Name"=cn,
                "City"=ci,"Amount"=amt)
}

