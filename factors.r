#factors
#categorical values
{
bloodgrp = c("A+","B+","AB+","O+")
class(bloodgrp)
b1 = factor(bloodgrp,levels = c("A+","B+"))#levels
b1
}
{
gender=factor(c("M","F","F","M","M","F","O"),levels = c("M","F"),labels = c("0","1"))
}#labels

#create a program to take categorical input from the user and convert
#the input into fCTOR.display the values.

{
  a=readline()
  b=readline()
  c=readline()
  G1=factor(c(a,b,c),levels= c("F","M"))
  G1
}





