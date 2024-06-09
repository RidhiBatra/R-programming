'''
You have a vector student_scores containing the scores of students in a class you need to calculate
the grades for each student based on the following criteria:
  A score of 90 or above: A
  A score between 80 and 89: B
  A score between 70 and 79: C
  A score below 70: Fail
Write a for loop to iterate over student_scores, calculate the grade for each student, and store
the grades in a new vector named student_grades.
'''


{
  n = as.integer(readline(prompt = "Enter number of students: "))
  
  student_scores <- numeric(n)
  student_grades <- character(n)
  
  
  for (i in 1:n) {
    marks <- as.integer(readline("Enter marks for student: "))
    student_scores[i] = marks
    
    if (marks >= 90) {
      student_grades[i] = "A"
    } else if (marks >= 80) {
      student_grades[i] = "B"
    } else if (marks >= 70) {
      student_grades[i] = "C"
    } else {
      student_grades[i] = "Fail"
    }
  }
  
  print(student_grades)
  
}




'''
On dataset "house.csv", perform the following opertions:
1. Perform the exploratory data analysis (EDA) process on the given dataset
2. Create a new column to know the price per room in the houses. Display the new 
column only.
3. Plot the lot_size in line graph, line color=red
4. Display the mean price of houses based on bathroom available.
5. Display only the max price for each bathroom category.

'''
library(ggplot2)
library(dplyr)
d5 <- read.csv(file.choose())
str(d5)
summary(d5)
min(d5$price)
mean(d5$price)
boxplot(d5[, sapply(data, is.numeric)], las = 2)
barplot(table(d5[, sapply(d5, is.character)]))
#incomlete code


'
1. You have a data frame employee_data containing information about employees,encluding their
names, ages, and salaries. However, some enteries have missing values for the salary column.

Write a for loop to iterate over the rows of emplyee_data, check if the salary is missing
for each employee, and if so, replace it with the median salary of all employees. Create
the data frame as required.
'
{
num_employees <- as.numeric(readline(prompt = "Enter number of employees: "))
names <- as.character(num_employees)
ages <- numeric(num_employees)
salaries <- numeric(num_employees)
for (i in 1:num_employees) {
  names[i] <- readline("Enter name for employee: ")
  ages[i] <- as.numeric(readline("Enter age : "))
  salary <- as.numeric(readline("Enter salary : " ))
  if (is.na(salary)) {
    salaries[i] <- NA
  } else {
    salaries[i] <- salary
  }
}
emp_data <- data.frame(names, ages, salaries)
median_salary <- median(emp_data$salaries, na.rm = TRUE)
for (i in 1:nrow(emp_data)) {
  if (is.na(emp_data$salaries[i])) {
    emp_data$salaries[i] <- median_salary
  }
}
print(emp_data)
}


'
you have a character vector word containing a list of words. you need to count the number
of vowels in each word and store the counts in a new vector.
'
{
word <- readline("Enter a word: ")
vowels <- c("a", "e", "i", "o", "u")
vowel_count <- sum(word %in% vowels) 
print(vowel_count)
}











