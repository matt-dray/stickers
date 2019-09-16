# Hex sticker: {kevinbacran}
# Created originally 28 Feb 2019
# Matt Dray

# Packages ----------------------------------------------------------------

library(hexSticker)
library(ggplot2)
library(showtext)

# Prepare plot ------------------------------------------------------------

# Set node values
x1 <- 1
x2 <- 1.8
y1 <- 1
y2 <- 2
y3 <- 3

# Node dataframe
nodes <- data.frame(
  x = c(x1, x1, x1, x1, x2, x1, x2, x2, x2),
  y = c(y1, y2, y3, y2, y3, y2, y1, y2, y3)
)

# Plot parameters
# https://www.color-hex.com/color-palette/15856
e_size <- 3
e_size2 <- e_size - (0.5 * e_size)
e_col <- "#e53b3b"
e_col2 <- "#eebf77"
e_curve <- 1.4
n_size <- 5
n_col <- "#b41f1f"
x_lo <- 0.75
x_hi <- 2.4
y_lo <- 0.75
y_hi <- 3.3

# Create graph
kb_graph <- ggplot(nodes) +
  geom_path(aes(x, y), size = e_size, colour = e_col) +
  geom_path(aes(x, y), size = e_size2, colour = e_col2) +
  geom_curve(aes(x = x2, y = y1, xend = x2, yend = y2), curvature = e_curve, size = e_size, colour = e_col) +
  geom_curve(aes(x = x2, y = y1, xend = x2, yend = y2), curvature = e_curve, size = e_size2, colour = e_col2) +
  geom_curve(aes(x = x2, y = y2, xend = x2, yend = y3), curvature = e_curve, size = e_size, colour = e_col) +
  geom_curve(aes(x = x2, y = y2, xend = x2, yend = y3), curvature = e_curve, size = e_size2, colour = e_col2) +
  geom_point(aes(x, y), size = n_size, colour = n_col) +
  xlim(x_lo, x_hi) +
  ylim(y_lo, y_hi) +
  theme_void() + 
  theme_transparent()

# Save it
ggsave("img/kb_graph.png")

# Add font ----------------------------------------------------------------

font_add_google("Vampiro One")
showtext_auto()

# Build sticker -----------------------------------------------------------

sticker(
  
  # package name options
  package = "kevinbacran",  # package name
  p_color = n_col,  # font colour
  p_size = 6,  # font size
  p_y = 1.35,  # y position for package name
  p_family = "Vampiro One",
  
  # subplot options
  subplot = kb_graph,
  s_x = 1,
  s_y = 0.8,
  s_width = 0.8,
  s_height = 0.8,
  
  # hexagon options
  h_fill = "black",  # hexagon fill (area to side of pipe isn't transparent)
  h_color = n_col, # border (same dark green as pipe from url)

  # url options
  url = "matt-dray.github.io/kevinbacran",
  u_size = 1.35,
  u_color = n_col,
  u_family = "Vampiro One",
  
  # save options
  filename = "output/kevinbacran_hex.png"
  
)
