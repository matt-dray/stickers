# Hex sticker: business
# 5 April 2018
# Matt Dray

# Call package
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
  package = "matt dray\n\n\n\n\ngithub.com/matt-dray\nmwdray@gmail.com\nrostrum.blog\n@mattdray",  # package name
  p_color = "white",  # font colour
  p_size = 3,  # font size
  p_y = 1,  # y position for package name
  p_family = "lekton-v10-latin-regular",
  
  # subplot options
  subplot = "img/rostrum_logo.png",
  s_x = 1,
  s_y = 1.27,
  s_width = 0.28,
  
  # hexagon options
  h_fill = "black",  # hexagon fill
  h_color = "#1d7113", # border
  
  # save options
  filename = "output/business_hex.png"
  
)
