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
img <- image_read("img/herring.jpg") %>% 
  image_resize("1600x") %>% 
  image_transparent(color = "#FFFFFF", fuzz = 5)

# Create hex
cran_hex <-
  image_canvas_hex(  # generate basic hex
    border_color = "#51637d",
    border_size = 3,
    fill_color = "#f7e6c7"
  ) %>% 
  image_compose(  # add speech bubble
    img, gravity = "center"
  ) %>%
  image_annotate(  # add text
    text = "cran",
    font = "Beth Ellen",
    color = "#51637d",
    gravity = "center",  
    location = "+470+200",
    size = 100
  )

# Write the image to disk
image_write(cran_hex, here::here("output", "cran_hex.png"))
