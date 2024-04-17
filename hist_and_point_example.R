# Load packages
library(tidyverse)
library(skimr)

# Load data
cereal <- read_csv("cereal.csv")

# Inspect data
skim(cereal)

# Create a histogram
hist(cereal$calories) # base R example

# Each bar on the graph above is a frequency count of that value in calories

# Create another histogram
cereal |>
  ggplot(aes(x = calories)) +
  geom_histogram(bins = 5,
                 fill = "red",
                 color = "blue")

# Creat a scatterplot
cereal |>
  ggplot(aes(x = protein_g,
             y = fat_g)) +
  geom_point(color = "red",
             fill = "blue",
             shape = 21)

# Create the diamonds data set
diamonds <- diamonds # built in to ggplot/tidyverse

# Explore data
glimpse(diamonds)

# Create a scatter plot with transparent points
diamonds |>
  ggplot(aes(x = carat,
             y = price,
             fill = cut)) +
  geom_point(shape = 21, # shape 21 is a dot with outline
             alpha = .7, # transparency from 0 to 1
             color = "blue",
             size = 3)
