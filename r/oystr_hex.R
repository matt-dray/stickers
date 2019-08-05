# Hex sticker: oystr pakage
# Aug 2019
# Matt Dray

# Call packages

library(hexSticker)
library(showtext)
library(oystr)

# Add font

font_add(family = "Jua-Regular", regular = "font/oystr/Jua-Regular.ttf")  # new font

# Build sticker

sticker(
  
  # package name options
  package = "oystr",  # package name
  p_family = "Jua-Regular",  # package font family
  p_color = oy_cols("oyster_blue"),  # font colour
  p_size = 7,  # font size
  p_y = 0.8,  # y position for package name
  p_x = 1.4,  # x position for package name (0 to 2; 1 is central)
  
  # subplot options
  subplot = "img/oystercatcher.png",
  s_x = 1,
  s_y = 1,
  s_width = 0.9,
  
  # hexagon options
  h_fill = oy_cols("oyster_cyan"),  # hexagon fill (area to side of pipe isn't transparent)
  h_color = oy_cols("oyster_blue"), # border
  
  # url options
  url = "github.com/matt-dray/oystr",
  u_size = 1.8,
  u_color = "white",
  u_family = "Jua-Regular",
  
  # save options
  filename = "output/oystr_hex.png"
  
)
