# Level-2 


#Task-3

#Questions


# Q.1) Extract additional features from the existing columns, such as the length of the restaurant name or address.

# install.packages("dplyr")
library(dplyr)
# Adding new columns named Restaurant_Name_Length and Address_Length which stores lengths 
restaurants <- restaurants %>% mutate(Rest_Name_Len = nchar(`Restaurant Name`),Addr_Len = nchar(Address))
#Print the updated data
names(restaurants)
 
 

# Q.2) Create new features like "Has Table Booking" or "Has Online Delivery" by encoding categorical variables 
 
# Create new binary features for "Has Table Booking" and "Has Online Delivery"
# prints 1 if restaurant Has table booking else prints 0 in new Has_Table_Booking_Encoded column 
restaurants <- restaurants %>% mutate(Has_Table_Booking_Encoded = ifelse(`Has Table booking` == "Yes", 1, 0),
Has_Online_Delivery_Encoded = ifelse(`Has Online delivery` == "Yes", 1, 0))
 
# Print the updated data 
names(restaurants)
 
 