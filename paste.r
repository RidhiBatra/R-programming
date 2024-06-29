#multiple lines of input from user using paste function
{
name<- readline(prompt = "Enter your name: ")
age<- readline(prompt = "Enter your age: ")
paste("My name is ",name,"and My age is: ",age)
}


'''
paste0 : Concatenate vectors after converting to character.
Concatenation happens in two basically different ways, 
determined by collapse being a string or not.
'''

#difference between cat and paste....