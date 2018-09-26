#session13_assignment_13_2

#1. Use the given link Data Set. 
#   Answer the below questions:
library(readr)
library(data.table)

getwd()
p<-"C:/Users/Swapna/Documents/R files test"
setwd(p)
crime_data<-fread("C:/Users/Swapna/Documents/R files test/crime-in-atlanta-2017/COBRA-YTD2017.csv")
View(crime_data) 
str(crime_data)   




#a. Visualize the correlation between all variables in a meaningful and clear way of representing. 
#Find out top 3 reasons for having more crime in a city.
pairs(COBRA_YTD)

plot(x,y, data=COBRA_YTD)


#b. What is the difference between co-variance and correlation? 
#Take an example from this dataset and show the differences if any? 

#Correlation- 
    is when the change in one item may result in the change in the another item and varies from -1 to +1. 
#covariance - 
    is A measure used to indicate the extent to which two random variables change in tandem.Covariance is affected by the change in scale

cor(COBRA_YTD$x, COBRA_YTD$y, method = "spearman")
cor(COBRA_YTD$x, COBRA_YTD$y, method = "pearson")
cov(COBRA_YTD$x, COBRA_YTD$y) # covariance between 2 variables
cor.test(COBRA_YTD$x, COBRA_YTD$y, method = "spearman")
cor.test(COBRA_YTD$x, COBRA_YTD$y, method = "pearson")
cor.test(COBRA_YTD$x, COBRA_YTD$y, method = "kendal")
