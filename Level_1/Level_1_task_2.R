#Level - 1

#task -2

# Questions

# Q .1) Calculate basic statistical measures (mean,median, standard deviation, etc.) for numerical columns.

# Calculate basic statistics for numerical columns
numeric_statistics <- summary(data)

# Print the results
print(numeric_statistics)

# Calculate mean, median, and standard deviation for a "Average Cost for two" column
median_value <- median(data$'Average Cost for two', na.rm = TRUE)
sd_value <- sd(data$'Average Cost for two', na.rm = TRUE)
mean_value <- mean(data$'Average Cost for two', na.rm = TRUE)

# Print the results
cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Standard Deviation:", sd_value, "\n")


#            ***************** CONCLUSION *****************

# mean for a "Average Cost for two" column :  1200.326 
# median for a "Average Cost for two" colum :  400 
# standard deviation for a "Average Cost for two" colum : 16128.74 






#Q . 2) Explore the distribution of categorical variables like "Country Code," "City," and "Cuisines."

# Bar plot for Country Code
barplot(table(restaurants$`Country Code`), main = "Country Code Distribution", col = "skyblue")

# Bar plot for City
barplot(table(restaurants$`City`), main = "City Distribution", col = "lightgreen")

# Bar plot for Cuisines (might be too large to visualize all, consider sampling or aggregating)
barplot(table(restaurants$`Cuisines`), main = "Cuisines Distribution", col = "lightcoral")






# Q .3) Identify the top cuisines and cities with the highest number of restaurants


# Top cuisines with the highest number of restaurants
top_cuisines <- names(sort(table(data$Cuisines), decreasing = TRUE)[1:5])
cat("Top Cuisines:", paste(top_cuisines, collapse = ", "), "\n")

# Top cities with the highest number of restaurants
top_cities <- names(sort(table(data$City), decreasing = TRUE)[1:5])
cat("Top Cities:", paste(top_cities, collapse = ", "), "\n")


#            ***************** CONCLUSION *****************

#Top Cuisines with the highest number of restaurants are : North Indian, North Indian, Chinese, Chinese, Fast Food, North Indian, Mughlai 
#Top Cities with the highest number of restaurants are: New Delhi, Gurgaon, Noida, Faridabad, Ghaziabad 
