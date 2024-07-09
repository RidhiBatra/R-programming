'
Import the diabetes dataset
Show the structure of datasets
Display first 10 rows
Display last 7 rows
Check the datatype of outcome column
Convert the outcome column into factors with labels(yes for 1 and no for 0)
Display how many yes and no are there in outcome column
Check missing value in the dataset
'

d1=read.csv(file.choose())
str(d1)
head(d1,10)    #6 is the default value for head and tail function
tail(d1,7)
class(d1$Outcome)
#d1$Outcome=factor(d1$Outcome,levels=c("0","1"),labels=c("No","Yes"))
table(d1$Outcome)
sum(is.na(d1))
d1$Outcome=factor(d1$Outcome,levels=c("0","1"),labels=c("No","Yes"))






d5 = read.csv(file.choose())
View(d5)
table(d5$region)
str(d5)
summary(d5)
range(d5$age)
min(d5$age)
max(d5$charges)
colnames(d5$bmi)
is.na(d5)
hist(d5$age)
plot(d5$age)
complete.cases(d5$age)









