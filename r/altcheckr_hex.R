# Hex sticker: {altcheckr} package
# Nov 2019, update Aug 2020
# Matt Dray


# Version 2 ---------------------------------------------------------------


# See https://www.ddrive.no/post/making-hex-and-twittercard-with-bunny-and-magick/
# Font installed via https://google-webfonts-helper.herokuapp.com/fonts

# Attach packages 
# Note that {ggforce} should be installed
library(magick)
library(bunny)  # remotes::install_github("dmi3kno/bunny")

# Read 'chatbox 'image placeholder' image
# Source: ionicons.com, released under MIT license (https://ionicons.com/)
img <- image_read_svg(
  "img/image-outline.svg",
  width = 700,
  height = 700
)

# Create hex

altcheckr_hex <- 
  image_canvas_hex(  # generate basic hex
    border_color = "#000000",
    border_size = 5,
    fill_color = "#fdffa1"
  ) %>% 
  image_compose(  # add speech bubble
    img,
    gravity = "center",
    offset = "-300-200"
  ) %>%
  image_annotate(  # add text
    text = "✓",
    font = "Anonymous Pro for Powerline",
    color = "#000000",
    gravity = "center",  
    location = "+350-320",
    size = 900
  ) %>% 
  image_annotate(  # add text
    text = '<"altcheckr">',
    font = "Share Tech Mono",  # installed to my machine
    color = "#000000",
    gravity = "center",  
    location = "+0+270",
    size = 200
  ) %>% 
  image_annotate(  # add text
    text = "matt-dray.github.io/altcheckr",
    font = "Share Tech Mono",  # installed to my machine
    color = "#000000",
    gravity = "center",  
    location = "+0+430",
    size = 75
  )


# Version 1 ---------------------------------------------------------------


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
