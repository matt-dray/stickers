# Hex sticker: {cran}
# Created originally 8 Sep 2020
# Matt Dray

# See https://www.ddrive.no/post/making-hex-and-twittercard-with-bunny-and-magick/
# Font installed via https://google-webfonts-helper.herokuapp.com/fonts

# Attach packages 
# Note that {ggforce} should be installed
library(magick)
library(bunny)  # remotes::install_github("dmi3kno/bunny")

# Read in image as magick-image class
jpg <- image_read("img/herring.jpg")
img <- image_convert(jpg, "png")

# Create hex
cran_hex <- 
  image_canvas_hex(  # generate basic hex
    border_color = "#0000FF",
    border_size = 5
  ) %>% 
  image_compose(  # add image
    image = img,  # our magick-image-class object
    gravity = "center",  # 'non-absolute' positioning
    offset = "+120+270"  # shift relative to gravity
  ) %>% 
  image_annotate(  # add text
    text = "cran",
    font = "Open Sans Condensed",  # installed to my machine
    color = "#0000FF",
    gravity = "center",  
    location = "+230-400",
    size = 250   # font-size (pixels)
  )

# Write the image to disk
image_write(cran_hex, here::here("output", "cran_hex.png"))
