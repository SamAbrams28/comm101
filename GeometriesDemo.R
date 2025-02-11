library(ggplot2)
library(palmerpenguins)

# ggplot(data, mappings) + layers
# aes = aesthetic = aesthetic mappings

# Geometries

# Visualizing one continuous variable - histogram
ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram()

# Visualizing one continuous variable and one categorical variable - box plot
ggplot(penguins, aes(x = body_mass_g, y = species)) +
  geom_boxplot()

# Visualizing two continuous variables = scatter plots
ggplot(penguins, aes(body_mass_g, flipper_length_mm)) +
  geom_point()


# Aesthetics (mappings)
ggplot(penguins, aes(body_mass_g, flipper_length_mm, color = species)) +
  geom_point()
