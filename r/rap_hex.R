# Hex sticker: Reproducible Analytical Pipelines
# Created originally 16 Oct 2017
# Matt Dray

# Call packages
library(hexSticker)

# Build sticker
sticker(
  
  # package name options
  package = "RAP",  # package name
  p_color = "black",  # font colour
  p_size = 30,  # font size
  p_y = 1.3,  # y position for package name
  
  # subplot options
  subplot = "img/warp-pipe.png",  # https://upload.wikimedia.org/wikipedia/commons/9/9e/Warp_pipe_edited.PNG
  s_x = 1,
  s_y = 1,
  s_width = 0.6,
  
  # hexagon options
  h_fill = "white",  # hexagon fill (area to side of pipe isn't transparent)
  h_color = "#159c03", # border (same dark green as pipe from url)

  # # url options
  # url = "ukgovdatascience.github.io/rap-website",
  # u_size = 1.33,
  # u_family = "sans",
  
  # save options
  filename = "output/rap_hex.png"
  
)
