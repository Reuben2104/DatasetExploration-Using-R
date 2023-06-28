# Read the dataset
data <- read.csv("/Users/reubenrinu/Downloads/JC-202305-citibike-tripdata.csv")

# Data processing
user_type_data <- aggregate(x = list(count = data$member_casual), by = list(user_type = data$member_casual), FUN = length)

# Define colors
title_color <- "darkred"
bar_color <- c("lightblue", "lightgreen")

# Create plot with custom colors
barplot(user_type_data$count, col = bar_color, names.arg = user_type_data$user_type, xlab = "User Type", ylab = "Number of Rides", main = "Number of Rides by User Type")

# Customize title color
title(main = "Number of Rides by User Type", col.main = title_color, font.main = 2)
