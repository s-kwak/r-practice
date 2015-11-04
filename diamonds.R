library(dplyr)
library(ggplot2)

head(diamonds)

price_cut <- diamonds %>%
  group_by(cut) %>%
  summarize(avg_depth = mean(depth),
            avg_price = mean(price),
            count_e = length(color[color == 'E']),
            color_j = length(color[color == 'J']))

# testing

?head()
