# Hex sticker: {r2eng}
# Matt Dray, Aug 2020

# Learn how to use {magick} and {bunny} for making hex stickeres
# https://www.ddrive.no/post/making-hex-and-twittercard-with-bunny-and-magick/

# Attach packages 
# Note that {ggforce} should be installed
library(magick) # CRAN v2.3
library(bunny)  # [github::dmi3kno/bunny] v0.0.0.9000

# Font installed locally via https://google-webfonts-helper.herokuapp.com/fonts
my_font <- "Dosis ExtraLight"

# Read chatbox image
# Source: ionicons.com, released under MIT license (https://ionicons.com/)
box_filled <- image_read_svg(
  "img/chatbox.svg",
  width = 1450,
  height = 1300
)

# Set colours
main_col <- "#3366ff"
accent_col <- "#000000"

# Build sticker
r2eng_hex <-
  image_canvas_hex(  # add hex canvas
  fill_color = main_col,
  border_color = accent_col,
  border_size = 5
) %>% 
  image_compose(  # add speech bubble
    box_filled,
    gravity = "center",
    offset = "+0+50"
  ) %>% 
  image_annotate(  # add speech bubble text
    text = "r2eng",
    font = my_font,
    size = 450,
    color = main_col,
    gravity = "center",
    location = "+0-100"
  ) %>% 
image_annotate(  # add angledurl in bottom right
  "matt-dray.github.io/r2eng",
  font = my_font,
  size = 90,
  color = accent_col,
  gravity = "center",
  location = "+370+630",
  degrees = 330
)

# Write the image to disk
image_write(r2eng_hex, "output/r2eng_hex.png")
