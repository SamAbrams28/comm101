library(ggplot2)
library(palmerpenguins)

# How scales costomize the expression of mappings

# Manually override default values
ggplot(penguins, aes(body_mass_g, flipper_length_mm, color = species)) +
  geom_point()

# Use a color blind friendly palette
okabe_ito <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442","#0072B2")

ggplot(penguins, aes(body_mass_g, flipper_length_mm, color = species)) +
  geom_point() +
  scale_color_manual (values = okabe_ito)

# We can do the same with shapes
ggplot(penguins, aes(body_mass_g, flipper_length_mm,
                     fill = species, shape = species)) +
  geom_point() +
  scale_fill_manual (values = okabe_ito) +
  scale_shape_manual (values = 21:25)


# Built-in and costom themes
ggplot(penguins, aes(body_mass_g, flipper_length_mm,
                     fill = species, shape = species)) +
  geom_point() +
  scale_fill_manual (values = okabe_ito) +
  scale_shape_manual (values = 21:25) +
  theme_bw() # Built-in theme

# Move legend inside figure panel
ggplot(penguins, aes(body_mass_g, flipper_length_mm,
                     fill = species, shape = species)) +
  geom_point() +
  scale_fill_manual (values = okabe_ito) +
  scale_shape_manual (values = 21:25) +
  theme_bw() +
  theme(legend.position = "inside",
        legend.position.inside = c(0.99, 0.01),
        legend.justification = c(1, 0))


# Fix the labels
ggplot(penguins, aes(body_mass_g, flipper_length_mm,
                     fill = species, shape = species)) +
  geom_point() +
  scale_fill_manual (values = okabe_ito) +
  scale_shape_manual (values = 21:25) +
  labs(x = "Body mass (g)",
       y = "Flipper Length (mm)",
       fill = "Species",
       shape = "Species") +
  theme_bw() +
  theme(legend.position = "inside",
        legend.position.inside = c(0.99, 0.01),
        legend.justification = c(1, 0))
