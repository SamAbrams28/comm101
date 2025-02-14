library(marinecs100b)
library(ggplot2)
# Distributions of continuous variables -----------------------------------

# P1 What type of visualization is appropriate for a single continuous variable?
# Histogram

# P2 What type of visualization is appropriate for a continuous variable across
# categorical variables?
# Boxplots

# P3 Use ggplot to visualize the distribution of sea surface salinity. Save your
# figure as “comm101p3.png”.
View(woa_sal)
ggplot(woa_sal, aes(salinity))+
  geom_histogram() +
  theme_bw()
ggsave('comm101p3.png')

# P4 Use ggplot to visualize the distribution of sea surface salinity by ocean
# basin. Save your figure as “comm101p4.png”.

ggplot(woa_sal, aes(ocean, salinity))+
  geom_boxplot() +
  theme_bw()
ggsave('comm101p4.png')

# P5 Interpret your figures from P3 and P4. What patterns do you notice? The
# histogram shows that the majority of salinity readings fell around 35
# (presumably) ppt, consistent with the known global average

# P6 Critique your figures from P3 and P4. What changes would highlight the
# patterns you interpreted in P5? You don’t need to write code for these
# changes, just describe them verbally.

# Perhaps have the y-axis show just the 25 ppt - 45 ppt range in the boxplot.
# This would cut off some of the lower range valuges in the Mediteranean region,
# but would emphasize the differences between the ocean basins. Additionally,
# this change makes sense because ocean salinity is known to be around 35 ppt on
# average.

# Relationships between continuous variables ------------------------------

# P7 Visualize the relationship between salinity and latitude by ocean basin.
ggplot(woa_sal, aes(latitude, salinity))+
  geom_point()

# P8 Edit your figure from P7 to improve its interpretability in at least one of
# the following categories: visually differentiating the oceans, appropriateness
# of the labels, or use of negative space. Save this figure as “comm101p8.png”.
basin_colors <- c('#005ff8','#6afbcf', '#00d5f3', '#359db3')

ggplot(woa_sal, aes(latitude, salinity, color = ocean, shape = ocean)) +
  geom_point() +
  labs(x = "Latitude (°)", y = "Salinity (ppt)",
       color = "Ocean Basin", shape = "Ocean Basin") +
  scale_shape_manual (values = 15:18 ) +
  scale_color_manual (values = basin_colors) +
  theme_bw() +
  theme(legend.position = "inside",
      legend.position.inside = c(0.01, 0.01),
      legend.justification = c(0, 0))
ggsave('comm101p8.png')


