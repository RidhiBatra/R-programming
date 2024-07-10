#data preprocessing


d1=read.csv(file.choose())
View(d1)
table(d1$x1)
range(d1$x2)
colnames(d1) = c("Country", "Age" , "Salary" , "Purchased")
sum(is.na(d1))
d1[!complete.cases(d1),]
d1$Age = ifelse(is.na(d1$Age),mean(d1$Age,na.rm=T),d1$Age)
d1$BloodPressure = ifelse(is.na(d1$BloodPressure),mean(d1$BloodPressure,na.rm=T),d1$BloodPressure)
#NA = 34.7772
#44=44
mean(d1$Age)
mean(d1$BloodPressure)

