
install.packages("tidyverse")  #This package contains an opinionated collection of R packages designed for data manipulation, exploration and visualization. 
install.packages("funModeling") #This package contains a set of functions related to exploratory data analysis, data preparation, and model performance. 
install.packages("Hmisc") #This package contains many functions useful for data analysis, high-level graphics, etc.
library(funModeling) 
library(tidyverse)
library(Hmisc)


library(readxl)
Lawsuits <- read_excel("Lawsuits.xlsx") #reading the excel file Lawsuits
View(Lawsuits) 

summary(Lawsuits$`Payment(in thousand dollars)`) #getting short summary 
summary(Lawsuits$Age) #getting short summary 

#Function to perform the whole Exploratory data analysis
perform_eda <- function(Lawsuits)
{
  glimpse(Lawsuits)   #Number of observations(rows) and variables (columns)
  df_status(Lawsuits) #Getting the metrics about zeros, missing values, infinite numbers, data types & 
                      #quantity of unique values
  freq(Lawsuits) #Frequency or distribution analysis and plot
  #plot_num(Lawsuits) # This function comes in funModeling package and we get histogram
  describe(Lawsuits) #This function comes in the Hmisc package and allows us to quickly profile a complete 
                      #dataset for both numerical and categorical variables
}
perform_eda(Lawsuits)

profiling_num(Lawsuits) #This function comes in funModeling package and we get a full univariate analysis for numerical

hist(Lawsuits$`Payment(in thousand dollars)`,xlab='Payment(in thousand dollars)',main='Histogram of Payment')
hist(Lawsuits$Age,xlab='Age',main='Histogram of Age')
boxplot(Lawsuits$`Payment(in thousand dollars)`,main="Boxplot for Payment",xlab="Payment(in thousand dollars)",horizontal=TRUE)
boxplot(Lawsuits$Age,main="Boxplot for Age",xlab="Age",horizontal=TRUE)

boxplot(Lawsuits$`Payment(in thousand dollars)`~Lawsuits$`Private Attorney`,main="Analysis of Payment vs Private Attorney",boxwex=0.3,las=1,xlab="Private Attorney or not", ylab="Payment(in thousand dollars)")

boxplot(Lawsuits$`Payment(in thousand dollars)`~Lawsuits$Severity,main="Analysis of Payment vs Severity",boxwex=0.3,las=1,xlab="Severity",ylab="Payment(in thousand dollars)") 

plot(Lawsuits$Age,Lawsuits$`Payment(in thousand dollars)`,col='red',main="Scatterplot of Payment vs Age",xlab="Age",ylab="Payment(in thousand dollars)")
abline(lm(Lawsuits$`Payment(in thousand dollars)`~Lawsuits$Age),col='green')
cor(Lawsuits$`Payment(in thousand dollars)`,Lawsuits$Age)

