# Hex sticker: {altcheckr} pakage
# No 2019
# Matt Dray

# Call packages
library(hexSticker)
library(showtext)

# Add font
font_add(
  family = "vt323-v11-latin",
  regular = "font/vt323-v11-latin/vt323-v11-latin-regular.ttf"
)  # new font

# Build sticker
sticker(
  
  # package name options
  package = "<altcheckr>",  # package name
  p_family = "vt323-v11-latin",  # package font family
  p_color = "black",  # font colour
  p_size = 7,  # font size
  p_y = 1.2,  # y position for package name
  p_x = 1,  # x position for package name (0 to 2; 1 is central)
  
  # subplot options
  subplot = "img/check.png",
  s_x = 1,
  s_y = 0.7,
  s_width = 0.2,
  
  # hexagon options
  h_fill = "yellow",  # hexagon fill
  h_color = "black", # border
  h_size = 5,
  
  # url options
  url = "matt-dray.github.io/altcheckr",
  u_size = 1.8,
  u_color = "yellow",
  u_family = "vt323-v11-latin",
  u_x = 1.03,
  u_y = 0.02,
  
  # save options
  filename = "output/altcheckr_hex.png"
  
)
