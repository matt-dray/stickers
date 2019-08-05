# Hex sticker: Reproducible Analytical Pipelines
# Created originally 16 Oct 2017
# Matt Dray

# Call package

library(hexSticker)
library(showtext)

# Build sticker

font_add(family = "MetroGrunge", regular = "font/Metro Grunge.ttf")  # new font

sticker(

  # package name options
  package = "RAP",  # package name
  p_family = "MetroGrunge",  # package font family
  p_color = "white",  # font colour
  p_size = 20,  # font size
  p_y = 1.6,  # y position for package name
  p_x = 1,  # x position for package name (0 to 2; 1 is central)

  # subplot options
  subplot = "img/warp-pipe.svg",
  s_x = 1,
  s_y = 1,
  s_width = 0.6,

  # hexagon options
  h_fill = "black",  # hexagon fill (area to side of pipe isn't transparent)
  h_color = "white", # border

  # url options
  url = "ukgovdatascience.github.io/rap_companion",
  u_size = 1.2,

  # save options
  filename = "output/rap_v3_hex.png"

  )
