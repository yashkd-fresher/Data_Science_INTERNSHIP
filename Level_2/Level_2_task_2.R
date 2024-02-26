# Level-2 


#Task-2

#Questions

# Q.1) Determine the most common price range among all the restaurants.

restaurants<-Dataset_

most_common_price_range <- as.numeric(names(sort(table(restaurants$`Price range`), decreasing = TRUE)[1]))
# printing the most common price range
print(paste("The most common price range is:", most_common_price_range))


#                                 ***************** CONCLUSION *****************

cat("From above results we can say that most common price range among all the restaurants is : 1 ")





# Q.2) Calculate the average rating for each price range.

# Convert 'Price range' to factor for better aggregation
restaurants$`Price range` <- as.factor(restaurants$`Price range`)

# Calculate the average rating for each price range
average_ratings <- aggregate(`Aggregate rating` ~ `Price range`, data = restaurants, FUN = mean)

# Print the result
print(average_ratings)


#                                 ***************** CONCLUSION *****************

cat("Here is the  average rating for each price range Price range Aggregate rating
1           1         1.999887
2           2         2.941054
3           3         3.683381
4           4         3.817918 ")

# We can say that avg rating is high for price range of 4 compared to others 







# Q.3) Identify the color that represents the highest average rating among different price ranges.

# Find the price range with the highest average rating
max_avg_rating_price_range <- average_ratings$`Price range`[which.max(average_ratings$`Aggregate rating`)]

# Identify the color that represents the highest average rating
color_for_highest_rating <- restaurants$`Rating color`[which(restaurants$`Price range` == max_avg_rating_price_range)][1]

# Print the result
print(paste("The color that represents the highest average rating among different price ranges is:", color_for_highest_rating))



#                                 ***************** CONCLUSION *****************

# The color that represents the highest average rating among different price ranges is: Green)

