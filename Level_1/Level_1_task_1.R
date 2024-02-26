# Level - 1


#Task - 1

#Q .1) Explore the dataset and identify the number of rows and columns.

data<-Dataset_

#Summary
summary(data)

#preview of this dataset and its structure:
head(data)  #first 6 rows
str(data)   #structure of dataset

# Print the number of rows and columns
cat("Number of Rows: ", nrow(data), "\n")
cat("Number of Columns: ", ncol(data), "\n")

# print the names of the columns
names(data)




#Q .2) Check for missing values in each column and handle them accordingly

# Replacing all null values with mean of remaining values


data <- lapply(data, function(x) {
  if (is.numeric(x)) {
    x[is.na(x)] <- mean(x, na.rm = TRUE)
  } else {
  
  }
  return(x)
})




#Q .3) Perform data type conversion if necessary.Analyze the distribution of the target variable ("Aggregate rating") and identify any class imbalances.


# Check data types of each column
str(data)

# Convert data types if necessary (e.g., converting 'Votes' to numeric)
data$Votes <- as.numeric(as.character(data$Votes))

# Check data types again
str(data)

# Analyze the distribution of the target variable ("Aggregate rating")
summary(data$`Aggregate rating`)

# Check for class imbalances
table(data$`Aggregate rating`)

