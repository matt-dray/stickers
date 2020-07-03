# Hex sticker: {ghdump}
# Created originally 14 June 2020
# Matt Dray

# See https://www.ddrive.no/post/making-hex-and-twittercard-with-bunny-and-magick/
# Font installed via https://google-webfonts-helper.herokuapp.com/fonts

# Attach packages 
# Note that {ggforce} should be installed
library(magick)
library(bunny)  # remotes::install_github("dmi3kno/bunny")

# Read in image as magick-image class
img <- image_read("img/landfill2.png")

# Create hex
ghdump_hex <- 
  image_canvas_hex(  # generate basic hex
    border_color = "#000000",
    border_size = 15
  ) %>% 
  image_compose(  # add image
    image = img,  # our magick-image-class object
    gravity = "west",  # 'non-absolute' positioning
    offset = "+120+270"  # shift relative to gravity
  ) %>% 
  image_annotate(  # add text
    text = "{ghdump}",
    font = "Open Sans Condensed",  # installed to my machine
    color = "#000000",
    gravity = "center",  
    location = "+230-400",
    size = 250,   # font-size (pixels)
    degrees = 30  # rotation angle
  )

# Write the image to disk
image_write(ghdump_hex, here::here("output", "ghdump_hex.png"))
