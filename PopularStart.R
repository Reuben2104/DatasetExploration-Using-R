# Read the dataset
data <- read.csv("/Users/reubenrinu/Downloads/JC-202305-citibike-tripdata.csv")

# Data processing for start stations
start_station_popularity <- aggregate(x = list(count = data$start_station_name), by = list(start_station_name = data$start_station_name), FUN = length)
start_station_popularity <- start_station_popularity[order(-start_station_popularity$count), ]
top_start_stations <- head(start_station_popularity, 10)

# Define colors
title_color <- "darkgreen"
bar_color <- c("lightpink", "lightblue", "lightgreen", "lightyellow", "lightsalmon", "lightcyan", "lightcoral", "lightgoldenrodyellow", "lightseagreen", "lightsteelblue")

# Create plot for start stations with custom colors
barplot(top_start_stations$count, col = bar_color, names.arg = top_start_stations$start_station_name, horiz = TRUE, main = "Top 10 Start Stations", xlab = "Number of Rides", las = 1)

# Customize title color
title(main = "Top 10 Start Stations", col.main = title_color, font.main = 2)
