# Level - 1


# task -3 


# Questions

data<-Dataset_

#Q . 1) Visualize the locations of restaurants on a map using latitude and longitude information


# Install and load required packages
# install.packages("leaflet")
library(leaflet)

# Create a leaflet map
map <- leaflet(restaurants) %>%
  addTiles() %>%
  addMarkers(lng = ~Longitude, lat = ~Latitude, popup = ~paste("Restaurant: ", `Restaurant Name`))

# Display the map
map



#Q . 2) Analyze the distribution of restaurants across different cities or countries.


# Summary statistics for the distribution of restaurants across cities
city_distribution <- table(restaurants$City)

# Bar plot for the distribution of restaurants across cities
barplot(city_distribution, main = "Distribution of Restaurants Across Cities", col = "skyblue")

# Summary statistics for the distribution of restaurants across countries
country_distribution <- table(restaurants$`Country Code`)

# Bar plot for the distribution of restaurants across countries
barplot(country_distribution, main = "Distribution of Restaurants Across Countries", col = "lightgreen")





#Q . 3) Determine if there is any correlation between the restaurant's location and its rating.

# Calculate the correlation coefficient
correlation <- cor(data$Latitude, data$Longitude)

# Print the correlation coefficient
cat("Correlation between Latitude and Longitude:", correlation, "\n")

# Scatter plot to visualize the relationship
plot(data$Longitude, data$Latitude, col = data$`Aggregate rating`, main = "Scatter Plot: Location vs Rating", xlab = "Longitude", ylab = "Latitude", pch = 16)





