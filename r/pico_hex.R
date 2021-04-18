# Hex sticker: {pico}
# Matt Dray, April 2021

# Learn how to use {magick} and {bunny} for making hex stickeres
# https://www.ddrive.no/post/making-hex-and-twittercard-with-bunny-and-magick/

# Attach packages 
# Note that {ggforce} should be installed
library(magick) # CRAN v2.3
library(bunny)  # [github::dmi3kno/bunny] v0.0.0.9000

# Font installed locally via https://google-webfonts-helper.herokuapp.com/fonts
my_font <- "IBM Plex Mono Light"

# Set colours
main_col <- "saddlebrown"
accent_col <- "#FFFFFF"

# Build sticker
pico_hex <-
  image_canvas_hex(  # add hex canvas
  fill_color = main_col,
  border_color = accent_col,
  border_size = 3
) %>% 
  image_annotate(  # add text
    text = "pico",
    font = my_font,
    style = "italic",
    size = 50,
    color = accent_col,
    gravity = "center"
  ) 

# Write the image to disk
image_write(pico_hex, "output/pico_hex.png")
