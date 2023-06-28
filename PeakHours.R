# Read the dataset
data <- read.csv("/Users/reubenrinu/Downloads/JC-202305-citibike-tripdata.csv")

# Data processing
data$hour <- as.numeric(format(strptime(data$started_at, "%Y-%m-%d %H:%M:%S"), "%H"))
hourly_data <- aggregate(x = list(count = data$hour), by = list(hour = data$hour), FUN = length)

# Define colors
title_color <- "darkblue"
bar_color <- "lightblue"

# Create plot with custom colors
barplot(hourly_data$count, col = bar_color, border = "black", names.arg = hourly_data$hour, xlab = "Hour of the Day", ylab = "Number of Rides", main = "Rides per Hour", cex.main = 1.2, cex.lab = 1.1, cex.axis = 0.9)

# Customize title color
title(main = "Rides per Hour", col.main = title_color, font.main = 2)
