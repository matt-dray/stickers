# Hex sticker: {dialga}
# Matt Dray, April 2021

# Learn how to use {magick} and {bunny} for making hex stickeres
# https://www.ddrive.no/post/making-hex-and-twittercard-with-bunny-and-magick/

# Attach packages 
# Note that {ggforce} should be installed
library(magick) # CRAN v2.3
library(bunny)  # [github::dmi3kno/bunny] v0.0.0.9000

# Font installed locally via https://google-webfonts-helper.herokuapp.com/fonts
my_font <- "Bungee"

# Set colours
main_col <- "#2D3255"
accent_col <- "#C8D7E2"

# Build sticker
dialga_hex <-
  image_canvas_hex(  # add hex canvas
  fill_color = main_col,
  border_color = main_col,
  border_size = 5
) %>% 
  image_annotate(  # add text
    text = "* * * * *\nd i a l g a",
    font = my_font,
    size = 250,
    color = accent_col,
    gravity = "center",
  )

# Write the image to disk
image_write(dialga_hex, "output/dialga_hex.png")

