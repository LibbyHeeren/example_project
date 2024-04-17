# Load packages
library(tidyverse)

# Load data
cereal <- read_csv("cereal.csv")

# Filter to only rows where the name col contains "raisins" or "fruit"
# but exclude Fruity Pebbles - note that str_detect is case sensitive
fruit_cereals <-
  cereal |>
  filter(str_detect(name, "Raisin|Fruit")) |>
  filter(name != "Fruity Pebbles")

