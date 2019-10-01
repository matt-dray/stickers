# Hex sticker: Reproducible Analytical Pipelines v4 (GSS Award 2019)
# Created Oct 2019
# Matt Dray


# Packages ----------------------------------------------------------------


library(hexSticker)  # build a sticker
library(magick)  # image manipulation


# Prepare image -----------------------------------------------------------


# Read laurel leaves image and remove transparency
laurel <- image_read("img/laurel.png")
laurel <- image_convert(laurel, matte = FALSE)  # remove transparency

# Read pipe image
pipe <- image_read("img/warp-pipe.png")

# Overlay
laurel_pipe <- image_composite(
  laurel,
  image_scale(pipe, "x650"),
  offset = "+280+105"
)

# Write to file to be called from sticker()
image_write(laurel_pipe, "img/laurel-pipe.png")


# Build sticker -----------------------------------------------------------


sticker(
  
  # package name options
  package = "RAP",  # package name
  p_color = "black",  # font colour
  p_size = 6,  # font size
  p_y = 1.32,  # y position for package name
  
  # subplot options
  subplot = "img/laurel-pipe.png",
  s_x = 1,
  s_y = 1,
  s_width = 0.72,
  
  # hexagon options
  h_fill = "white",  # hexagon fill (area to side of pipe isn't transparent)
  h_color = "#159c03", # border (same dark green as pipe from url)

  # url options
  url = "GSS Collaboration Award 2019",
  u_size = 1.65,
  u_family = "sans",
  
  # save options
  filename = "output/rap_v4_hex.png"
  
)
  