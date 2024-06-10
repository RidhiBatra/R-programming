'you are analyzing data related to politician affiliation, where individuals are categorized as "Democrat,"
"Rebiplican," "Independent " or "Other". How would you create a factor variable to represent politician affiliation in R? Explain how 
factors can facilitate the analysis of categoriacal data with non-ordinal levels.'


{
affiliation <- c("Democrat", "Republican", "Independent", "Other", "Democrat", "Republican", "Independent", 
                "Other","Democrat", "Republican", "Independent", "Other",
                "Democrat", "Republican", "Independent", "Other")
politician_affiliation_factor <- factor(affiliation,
                                        levels = c("Democrat", "Republican", "Independent", "Other"),labels = c("1","2","3","4"))

print(politician_affiliation_factor)
# mean(politician_affiliation_factor)
class(politician_affiliation_factor)
print(summary(politician_affiliation_factor))
print(str(politician_affiliation_factor))

barplot(table(politician_affiliation_factor), 
        main = "Politician Affiliation factor",
        xlab = "Affiliation",
        ylab = "Frequency",
        col = "lavender",
        legend.text = TRUE)
}



'There are 2 data sets, data1 and data2. data1 has 1 2 3 4 5 stored in it. And data2 has 6 7 8 9 stored in it.
a) place the data of data2 after the data of data1
b) Combine the data of data1 and data2 in a manner that the resultant dataset has entries in the following manner (6  7 1 2 3 4 5 8 9)
c) create a dataset by taking text values from the user
d) replace the value '4' with 10
e) show the list of already existing data objects'

{
  # a) Place the data of data2 after the data of data1
  data1 <- c(1, 2, 3, 4, 5)
  data2 <- c(6, 7, 8, 9)
  result_a <- c(data1, data2)
  print(result_a)
  
  # b) Combine the data of data1 and data2 in a specified manner
  result_b <- c(data2[1:2], data1, data2[3:length(data2)])
  print(result_b)
  
  # c) Create a dataset by taking text values from the user
  text_values <- readline(prompt = "Enter text values separated by spaces: ")
  print(text_values)
  
  # d) Replace the value '4' with '10' in data1
  data1 <- c(1, 2, 3, 4, 5)
  data1[data1 == 4] <- 10
  print(data1)
  
  # e) Show the list of already existing data objects
  print(ls())
  
}