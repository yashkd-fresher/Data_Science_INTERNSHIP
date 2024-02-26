5 + 5
"Hello World!"
print("Hello World!")
# This is a comment

#Variables

name <- "John"
age <- 40

name
x <- 10.5
class(x)
# class() function to check the data type of a variable:

max(5, 10, 15)
sqrt(16)
abs(-4.7)

a <- 10
b <- 9

a > b

install.packages("readr")
library(readr)
#R data structure()
data1<-albums

data <-read_csv("albums.csv")

#1) Vectors

#To combine the list of items to a vector, use the c() function and separate the items by a comma.
fruits <- c("banana", "apple", "orange")
fruits


#2) Lists
#A list in R can contain many different data types inside it. A list is a collection of data which is ordered and changeable.To create a list, use the list() function:
 #Use the data.frame() function to create a data frame:


  
thislist <- list("apple", "banana", "cherry")

#3) Matrices
#4) Arrays
#5) Data frames
#Data Frames are data displayed in a format as a table.Data Frames can have different types of data inside it


Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame
summary(Data_Frame)










