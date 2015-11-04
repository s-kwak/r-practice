library(dplyr)
library(ggplot2)

head(diamonds)

price_cut <- diamonds %>%
  group_by(cut) %>%
  summarize(avg_depth = mean(depth),
            avg_price = mean(price))

View(price_cut)
