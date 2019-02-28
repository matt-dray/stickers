# Hex sticker: {kevinbacran}
# Created originally 28 Feb 2019
# Matt Dray

# Call package

library(hexSticker)
library(ggplot2)

# Prepare plot

x1 <- 1
x2 <- 1.8
y1 <- 1
y2 <- 2
y3 <- 3

nodes <- data.frame(
  x = c(x1, x1, x1, x1, x2, x1, x2, x2, x2),
  y = c(y1, y2, y3, y2, y3, y2, y1, y2, y3)
)

e_size <- 10
e_col <- "pink"
e_curve <- 1.4
n_size <- 30
n_col <- "black"
x_lo <- 0.75
x_hi <- 2.4
y_lo <- 0.75
y_hi <- 3.3

ggplot(nodes) +
  geom_path(aes(x, y), size = e_size, colour = e_col) +
  geom_curve(aes(x = x2, y = y1, xend = x2, yend = y2), curvature = e_curve, size = e_size, colour = e_col) +
  geom_curve(aes(x = x2, y = y2, xend = x2, yend = y3), curvature = e_curve, size = e_size, colour = e_col) +
  geom_point(aes(x, y), size = n_size, colour = n_col) +
  xlim(x_lo, x_hi) +
  ylim(y_lo, y_hi) +
  theme_void()


# Build sticker

sticker(
  
  # package name options
  package = "kevinbacran",  # package name
  p_color = "#FF69B4",  # font colour
  p_size = 6,  # font size
  p_y = 1.35,  # y position for package name
  
  # subplot options
  subplot = "img/bacon.png",
  s_x = 1,
  s_y = 0.8,
  s_width = 0.3,
  
  # hexagon options
  h_fill = "black",  # hexagon fill (area to side of pipe isn't transparent)
  h_color = "#FF69B4", # border (same dark green as pipe from url)

  # url options
  url = "matt-dray.github.io/kevinbacran/",
  u_size = 1.5,
  u_color = "#FF69B4",
  
  # save options
  filename = "output/kevinbacran_hex.png"
  
  )
