# Level-2 


#Task-1


#Questions

# Q.1) Determine the percentage of restaurants that offer table booking and online delivery.

subset_data <- data[, c("Has Table booking", "Has Online delivery")]

# Count the number of restaurants that offer table booking and online delivery
total_restaurants <- nrow(subset_data)
table_booking <- sum(subset_data$`Has Table booking` == "Yes")
online_delivery <- sum(subset_data$`Has Online delivery` == "Yes")

#Calculating percentages of both 
percentage_table_booking <- (table_booking / total_restaurants) * 100
percentage_online_delivery <- (online_delivery / total_restaurants) * 100

#Printing percentages of both type of restaurants
cat("Percentage of restaurants offering table booking:", percentage_table_booking, "%\n")
cat("Percentage of restaurants offering online delivery:", percentage_online_delivery, "%\n")


#                                 ***************** CONCLUSION *****************
# Output 
# Percentage of restaurants offering table booking: 12.13582 %
# Percentage of restaurants offering online delivery: 25.68644 %

cat("Seeing  above values we conclude that count of restaurants that offers online delivery is 
    comparitively more than count of restaurants offering table booking ")





# Q.2) Compare the average ratings of restaurants with table booking and those without.


# Create a subset for restaurants with table booking
with_table_booking <- data[data$`Has Table booking` == 'Yes', ]

# Create a subset for restaurants without table booking
without_table_booking <- data[data$`Has Table booking` == 'No', ]

# Calculate the average rating for restaurants with table booking
avg_rating_with_booking <- mean(with_table_booking$`Aggregate rating`, na.rm = TRUE)

# Calculate the average rating for restaurants without table booking
avg_rating_without_booking <- mean(without_table_booking$`Aggregate rating`, na.rm = TRUE)

# Print the results
cat("Average rating for restaurants with table booking:", avg_rating_with_booking, "\n")
cat("Average rating for restaurants without table booking:", avg_rating_without_booking, "\n")


#                                 ***************** CONCLUSION *****************
# Output
#Average rating for restaurants with table booking: 3.441969 
#Average rating for restaurants without table booking: 2.557956 

cat("Seeing  above values we can conclude that restaurants with table booking has more Average rating compared to Average rating 
    of restaurants without table booking")




# Q.3) Analyze the availability of online delivery among restaurants with different price ranges.


# Create a subset for restaurants with online delivery
with_online_delivery <- data[data$`Has Online delivery` == 'Yes', ]

# Create a contingency table for Has Online delivery and Price range
online_delivery_table <- table(with_online_delivery$`Has Online delivery`, with_online_delivery$`Price range`)

# Print the contingency table
print(online_delivery_table)

# Perform chi-square test for independence
chi_square_test <- chisq.test(online_delivery_table)

# Print the chi-square test results
print(chi_square_test)


#                                 ***************** CONCLUSION *****************
# Output
#1    2    3    4
#Yes  701 1286  411   53
cat("Since the p-value is very close to zero (smaller than the typical significance level of 0.05), we reject the null hypothesis. 
Therefore, there is a significant association between online delivery and price range. In other words, the availability of online delivery varies significantly across different price
ranges of restaurants.
Here We conclude that availability of online delivery is higher for those restaurants who's price range is 1 and 2 
")


