# Load packages
library(tidyverse)

# Load data
cereal <- read_csv("https://raw.githubusercontent.com/rfortherestofus/rin3-datasets/main/getting-started-datasets/cereal/cereal.csv")

# Explore data
summary(cereal)

# Which cereal has the highest weight per serving?
# Let's look at the top 3 and see what type and how
# much fiber they have, I suspect that plays a part
cereal |>
  select(name, type, weight_oz, fiber_g) |>
  arrange(desc(weight_oz)) |>
  top_n(10)


cereal <- read_csv("cereal.csv")

sports <- read_csv("sports.csv")

sample_of_data <- sample_n(large_dataset, 1000)

write_csv(sample_of_data, "sample_of_large_data.csv")

penguins <- read_csv()
