# Load packages
library(plotly)
library(tidyverse)
library(formattable)

# Load the diamonds dataset (built in to ggplot2)
data("diamonds")

# Create a filtered dataset of only diamonds >= 3 carats
# And only cuts of Ideal or Premium
large_diamonds <-
  diamonds |>
  filter(carat >= 2.5,
         cut %in% c("Ideal", "Premium"))

# Choose color palette for my two categories
pal <- c("dodgerblue3", "orange")
pal <- setNames(pal, c("Ideal", "Premium"))

# Create an interactive scatter plot
plot_ly(data = large_diamonds,
        x = ~carat,
        y = ~price,
        color = ~cut,
        colors = pal,
        size = 8,
        type = "scatter",
        mode = "markers",
        alpha = .8,
        hoverinfo = "text",
        text = ~paste0('</br> Price: ', currency(price, digits = 0),
                       '</br> Cut: ', cut,
                       '</br> Carat: ', carat,
                       '</br> Color: ', color,
                       '</br> Clarity: ', clarity)) |>
  layout(title = "Prices of High Quality Diamonds",
         yaxis = list(title = "Price"),
         xaxis = list(title = "Carat"),
         margin = list(t = 40,
                       b = 60)) |>
  config(displayModeBar = FALSE)

