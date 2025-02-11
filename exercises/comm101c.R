library(palmerpenguins)
library(ggplot2)

# Make the following changes to this basic boxplot.
# 1) Change the grey background to white x
# 2) Clean up the axis labels x
# 3) Make the color vary by island x
# 4) Choose a color palette that you enjoy!
bolds <- c("#f72585","#3a0ca3","#00a6fb")

ggplot(penguins, aes(island, body_mass_g, color = island)) +
  geom_boxplot() +
  labs(x = "Islands", y = "Body mass") +
  scale_color_manual(values = bolds) +
  theme_bw() +
  theme(legend.position = "none")

