# Hex sticker: Rostrum blog (rostrum.blog)
# 5 April 2018
# Matt Dray

# Call packages
library(hexSticker)
library(showtext)

# Add font
font_add(
  family = "lekton-v10-latin-regular",
  regular = "font/lekton-v10-latin-regular.ttf"
)

# Build sticker
sticker(
  
  # package name options
  package = "rostrum.blog",  # package name
  p_color = "white",  # font colour
  p_size = 3,  # font size
  p_y = 0.42,  # y position for package name
  p_family = "lekton-v10-latin-regular",
  
  # subplot options
  subplot = "img/rostrum_logo.png",
  s_x = 1,
  s_y = 1.1,
  s_width = 0.5,
  
  # hexagon options
  h_fill = "black",  # hexagon fill
  h_color = "#1d7113", # border
  
  # save options
  filename = "output/rostrum_hex.png"
  
)
