# Hex sticker: Reproducible Analytical Pipelines
# Created originally 16 Oct 2017
# Matt Dray

# Call package

library(hexSticker)
library(showtext)
font_add(family = "UrbRapper", regular = "/font/UrbRapper.ttf")  # new font

# Build sticker

sticker(
  
  # package name options
  package = "RAP",  # package name
  p_family = "UrbRapper",  # package font family
  p_color = "black",  # font colour
  p_size = 12,  # font size
  p_y = 1.3,  # y position for package name
  
  # subplot options
  subplot = "https://upload.wikimedia.org/wikipedia/commons/9/9e/Warp_pipe_edited.PNG",
  s_x = 1,
  s_y = 1,
  s_width = 0.6,
  
  # hexagon options
  h_fill = "white",  # hexagon fill (area to side of pipe isn't transparent)
  h_color = "#159c03", # border (same dark green as pipe from url)

  # url options
  url = "ukgovdatascience.github.io/rap_companion",
  u_family = "sans",
  u_size = 1.2,
  
  # save options
  filename = "output/rap_v2_hex.png"
  
  )
